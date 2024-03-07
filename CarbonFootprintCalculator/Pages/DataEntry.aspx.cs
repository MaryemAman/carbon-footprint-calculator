using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CarbonFootprintCalculator.Account
{
    public partial class DataEntry : Page
    {
        private readonly string customerFilePath = "~/App_Data/CustomerList.json";
        private readonly string electricityFilePath = "~/App_Data/ElectricityList.json";

        protected void Page_Load(object sender, EventArgs e)
        {
            // No need to define readonly variables here
        }

        // Method to calculate CO2 emissions based on electricity usage and energy source
        private double CalculateElectricityCO2Emissions(double electricityUsage, string energySource)
        {
            // Define emissions factor for the electricity grid (kg CO2e/kWh)
            double emissionFactor = 0.0; // Default value

            // Determine the emissions factor based on the energy source
            switch (energySource)
            {
                case "Grid":
                    emissionFactor = 0.5; // Example emission factor for grid electricity (kg CO2 per kWh)
                    break;
                case "Solar":
                    emissionFactor = 0.0; // Emission factor for solar electricity (virtually zero emissions)
                    break;
                case "Wind":
                    emissionFactor = 0.0; // Emission factor for wind electricity (virtually zero emissions)
                    break;
                default:
                    // Handle the case where energy source is not recognized
                    // You may want to log an error or provide a default emission factor
                    break;
            }

            // Calculate CO2 emissions
            double co2Emissions = electricityUsage * emissionFactor;
            return co2Emissions;
        }


        // Method to calculate CO2 emissions based on fuel type and distance travelled
        private double CalculateCO2Emissions(string fuelType, double distanceTravelled)
        {
            double emissionFactor = 0;

            // Set emission factor based on fuel type
            switch (fuelType)
            {
                case "Gasoline":
                    emissionFactor = 2.4; // Assuming average CO2 emission factor for gasoline
                    break;
                case "Diesel":
                    emissionFactor = 2.65; // Assuming average CO2 emission factor for diesel
                    break;
                case "Petrol":
                    emissionFactor = 2.4; // Assuming average CO2 emission factor for petrol
                    break;
                case "Electric":
                    emissionFactor = 0.5; // Assuming average CO2 emission factor for electric
                    break;
                // Add more cases for other fuel types as needed
                default:
                    // Handle unknown fuel types
                    break;
            }

            // Calculate CO2 emissions
            double co2Emissions = distanceTravelled * emissionFactor;
            return co2Emissions;
        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            string distanceTravelled = txtDistanceTravelled.Text;
            string fuelEfficiency = txtFuelEfficiency.Text;
            string vehicleType = drpVehicleType.SelectedValue;
            string fuelType = drpFuelType.SelectedValue;

            // Calculate CO2 emissions based on fuel type and distance travelled
            double co2Emissions = CalculateCO2Emissions(fuelType, Convert.ToDouble(distanceTravelled));

            Customer customer = new Customer
            {
                DistanceTravelled = distanceTravelled,
                FuelEfficiency = fuelEfficiency,
                VehicleType = vehicleType,
                FuelType = fuelType,
                EntryDate = DateTime.Now,
                CO2Emissions = co2Emissions // Add CO2 emissions to the transport object
            };

            List<Customer> customerList = GetCustomerList();
            customerList.Add(customer);

            string jsonData = JsonConvert.SerializeObject(customerList);
            File.WriteAllText(Server.MapPath(customerFilePath), jsonData);

            Response.Redirect("~/Pages/DataReport.aspx");
        }


        protected void Submit_Click2(object sender, EventArgs e)
        {
            string electricityUsage = txtElectricityUsage.Text;
            string energyUsage = drpEnergyUsage.SelectedValue;

            // Calculate CO2 emissions based on electricity usage and energy source
            double co2Emissions = CalculateElectricityCO2Emissions(Convert.ToDouble(electricityUsage), energyUsage);

            Electricity electricity = new Electricity
            {
                EnergyUsage = energyUsage,
                ElectricityUsage = electricityUsage,
                EntryDate = DateTime.Now,
                CO2Emissions = co2Emissions // Add CO2 emissions to the electricity object
            };

            List<Electricity> electricityList = GetElectricityList();
            electricityList.Add(electricity);

            string jsonData = JsonConvert.SerializeObject(electricityList);
            File.WriteAllText(Server.MapPath(electricityFilePath), jsonData);

            Response.Redirect("~/Pages/DataReport.aspx");
        }


        private List<Customer> GetCustomerList()
        {
            List<Customer> customerList = new List<Customer>();

            if (File.Exists(Server.MapPath(customerFilePath)))
            {
                string jsonData = File.ReadAllText(Server.MapPath(customerFilePath));
                customerList = JsonConvert.DeserializeObject<List<Customer>>(jsonData);
            }

            return customerList;
        }

        private List<Electricity> GetElectricityList()
        {
            List<Electricity> electricityList = new List<Electricity>();

            if (File.Exists(Server.MapPath(electricityFilePath)))
            {
                string jsonData = File.ReadAllText(Server.MapPath(electricityFilePath));
                electricityList = JsonConvert.DeserializeObject<List<Electricity>>(jsonData);
            }

            return electricityList;
        }

        public class Customer
        {
            public string DistanceTravelled { get; set; }
            public string FuelEfficiency { get; set; }
            public string VehicleType { get; set; }
            public string FuelType { get; set; }
            public DateTime EntryDate { get; set; }
            public double CO2Emissions { get; set; }
        }

        public class Electricity
        {
            public string EnergyUsage { get; set; }
            public string ElectricityUsage { get; set; }
            public DateTime EntryDate { get; set; }
            public double CO2Emissions { get; set; }
        }
    }
}
