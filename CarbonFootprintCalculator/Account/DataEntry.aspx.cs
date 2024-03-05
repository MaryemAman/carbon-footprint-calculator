using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarbonFootprintCalculator.Account
{
    public partial class DataEntry : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize dropdown list options
                ddlVehicleType.Items.Add(new ListItem("Car", "Car"));
                ddlVehicleType.Items.Add(new ListItem("Truck", "Truck"));
                ddlVehicleType.Items.Add(new ListItem("Bus", "Bus"));
            }
        }

        protected void btnSubmitTransport_Click(object sender, EventArgs e)
        {
            // Assuming you want to store transport emissions data in session and redirect to the data report page
            Session["TransportData"] = GetTransportData(); // Store transport data in session
            Response.Redirect("~/Account/DataReport.aspx");
        }

        protected void btnSubmitElectricity_Click(object sender, EventArgs e)
        {
            // Assuming you want to store electricity consumption data in session and redirect to the data report page
            Session["ElectricityData"] = GetElectricityData(); // Store electricity data in session
            Response.Redirect("~/Account/DataReport.aspx");
        }

        // Method to get transport emissions data
        private string GetTransportData()
        {
            // Construct the transport emissions data string based on the user's input
            string vehicleType = ddlVehicleType.SelectedValue;
            string distance = txtDistance.Text;
            string fuelType = ddlFuelType.SelectedValue;
            string fuelEfficiency = txtFuelEfficiency.Text;
            string entryDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            // Concatenate the data into a single string or format it as needed
            string transportData = $"Vehicle Type: {vehicleType}, Distance: {distance}, Fuel Type: {fuelType}, Fuel Efficiency: {fuelEfficiency}, Entry Date: {entryDate}";

            return transportData;
        }

        // Method to get electricity consumption data
        private string GetElectricityData()
        {
            // Construct the electricity consumption data string based on the user's input
            string energySource = ddlEnergySource.SelectedValue;
            string electricityUsage = txtElectricityUsage.Text;
            string entryDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            // Concatenate the data into a single string or format it as needed
            string electricityData = $"Energy Source: {energySource}, Electricity Usage (kWh): {electricityUsage}, Entry Date: {entryDate}";

            return electricityData;
        }
    }
}