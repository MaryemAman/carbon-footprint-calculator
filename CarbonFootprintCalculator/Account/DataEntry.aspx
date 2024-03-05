<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="CarbonFootprintCalculator.Account.DataEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Entry</title>
    <style>
        body {
            background-color: #f2f2f2; /* Light gray background */
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 75%; /* 75% width of the page */
            margin: 50px auto; /* Center the container */
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow */
        }
        h2, h3 {
            color: #333; /* Dark gray text color */
        }
        .btn {
            background-color: #00693E; /* Green */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size:18px;
            margin-top:1%;
            margin-bottom:2%;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #49796B; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 style="text-align: center; color:#00693E;">Data Entry</h1>
            <h2>Transport Emissions</h2>
            <div style="line-height: 2; font-size:17px;">
                <asp:Label runat="server" Text="Vehicle Type:"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlVehicleType">
                    <asp:ListItem Text="Car" Value="Car" />
                    <asp:ListItem Text="Truck" Value="Truck" />
                    <asp:ListItem Text="Bus" Value="Bus" />
                </asp:DropDownList>
                <br />
                <asp:Label runat="server" Text="Distance Travelled (miles/kilometers):"></asp:Label>
                <asp:TextBox runat="server" ID="txtDistance" />
                <br />
                <asp:Label runat="server" Text="Fuel Type:"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlFuelType">
                    <asp:ListItem Text="Gasoline" Value="Gasoline" />
                    <asp:ListItem Text="Diesel" Value="Diesel" />
                    <asp:ListItem Text="Petrol" Value="Petrol" />
                    <asp:ListItem Text="Electric" Value="Electric" />
                </asp:DropDownList>
                <br />
                <asp:Label runat="server" Text="Fuel Efficiency (gallons per mile/kilometer):"></asp:Label>
                <asp:TextBox runat="server" ID="txtFuelEfficiency" />
                <br />
                <asp:Button runat="server" ID="btnSubmitTransport" Text="Submit Transport Data" CssClass="btn" OnClick="btnSubmitTransport_Click" />
            </div>
            <hr />
            <h2>Electricity Consumption</h2>
            <div style="line-height: 2;">
                <asp:Label runat="server" Text="Energy Source:"></asp:Label>
                <asp:DropDownList runat="server" ID="ddlEnergySource">
                    <asp:ListItem Text="Grid" Value="Grid" />
                    <asp:ListItem Text="Solar" Value="Solar" />
                    <asp:ListItem Text="Wind" Value="Wind" />
                    <asp:ListItem Text="Hydro" Value="Hydro" />
                    <asp:ListItem Text="Biomass" Value="Biomass" />
                </asp:DropDownList>
                <br />
                <asp:Label runat="server" Text="Electricity Usage (kilowatt-hours):"></asp:Label>
                <asp:TextBox runat="server" ID="txtElectricityUsage" />
                <br />
                <asp:Button runat="server" ID="btnSubmitElectricity" Text="Submit Electricity Data" CssClass="btn" OnClick="btnSubmitElectricity_Click" />
            </div>
        </div>
    </form>
</body>
</html>