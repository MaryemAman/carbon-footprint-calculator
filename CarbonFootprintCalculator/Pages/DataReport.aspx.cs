using System.Web.UI.WebControls;
using System;
using Newtonsoft.Json;
using static CarbonFootprintCalculator.Account.DataEntry;
using System.Collections.Generic;
using System.IO;

namespace CarbonFootprintCalculator.Account
{
    public partial class DataReport : System.Web.UI.Page
    {
        private readonly string customerFilePath = "~/App_Data/CustomerList.json";
        private readonly string electricityFilePath = "~/App_Data/ElectricityList.json";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomerData();
                LoadElectricityData();
            }
        }

        private void LoadCustomerData()
        {
            if (File.Exists(Server.MapPath(customerFilePath)))
            {
                string jsonData = File.ReadAllText(Server.MapPath(customerFilePath));
                List<Customer> customerList = JsonConvert.DeserializeObject<List<Customer>>(jsonData);

                CustomerGridView.DataSource = customerList;
                CustomerGridView.DataBind();
            }
        }

        private void LoadElectricityData()
        {
            if (File.Exists(Server.MapPath(electricityFilePath)))
            {
                string jsonData = File.ReadAllText(Server.MapPath(electricityFilePath));
                List<Electricity> electricityList = JsonConvert.DeserializeObject<List<Electricity>>(jsonData);

                ElectricityGridView.DataSource = electricityList;
                ElectricityGridView.DataBind();
            }
        }


    }
}
