using System.Web.UI.WebControls;
using System;

namespace CarbonFootprintCalculator.Account
{
    public partial class DataReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateTransportEmissionsData();
                PopulateElectricityConsumptionData();
            }
        }

        private void PopulateTransportEmissionsData()
        {
            // Sample data for transport emissions
            var transportData = new[]
            {
                new { VehicleType = "Car", Distance = 100, FuelType = "Gasoline", FuelEfficiency = 25, EntryDate = DateTime.Now.AddDays(-1) },
                new { VehicleType = "Truck", Distance = 200, FuelType = "Diesel", FuelEfficiency = 15, EntryDate = DateTime.Now.AddDays(-2) }
            };

            // Populate the transport emissions table
            foreach (var data in transportData)
            {
                TableRow row = new TableRow();
                row.Cells.Add(new TableCell { Text = data.VehicleType });
                row.Cells.Add(new TableCell { Text = data.Distance.ToString() });
                row.Cells.Add(new TableCell { Text = data.FuelType });
                row.Cells.Add(new TableCell { Text = data.FuelEfficiency.ToString() });
                row.Cells.Add(new TableCell { Text = data.EntryDate.ToString("yyyy-MM-dd") });
                tblTransportEmissions.Rows.Add(row);
            }
        }

        private void PopulateElectricityConsumptionData()
        {
            // Sample data for electricity consumption
            var electricityData = new[]
            {
                new { EnergySource = "Grid", ElectricityUsage = 500, EntryDate = DateTime.Now.AddDays(-1) },
                new { EnergySource = "Solar", ElectricityUsage = 300, EntryDate = DateTime.Now.AddDays(-2) }
            };

            // Populate the electricity consumption table
            foreach (var data in electricityData)
            {
                TableRow row = new TableRow();
                row.Cells.Add(new TableCell { Text = data.EnergySource });
                row.Cells.Add(new TableCell { Text = data.ElectricityUsage.ToString() });
                row.Cells.Add(new TableCell { Text = data.EntryDate.ToString("yyyy-MM-dd") });
                tblElectricityConsumption.Rows.Add(row);
            }
        }
    }
}