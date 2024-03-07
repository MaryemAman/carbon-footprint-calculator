<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataReport.aspx.cs" Inherits="CarbonFootprintCalculator.Account.DataReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /*body {
            background-color: #f7f7f7;*/ /* Light gray background */
            /*margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 75%;*/ /* 75% width of the page */
            /*margin: 50px auto;*/ /* Center the container */
            /*background-color: #fff;*/ /* White background */
            /*padding: 20px;
            border-radius: 10px;*/ /* Rounded corners */
            /*box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);*/ /* Box shadow */
        /*}*/
        h2, h3 {
            color: #333; /* Dark gray text color */
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd; /* Light gray border */
            padding: 12px; /* Increased padding for better spacing */
            text-align: left;
        }
        th {
            background-color: #3498db; /* Blue background for header */
            color: #fff; /* White text color for header */
        }
        th:hover {
            background-color: #2980b9; /* Darker blue background on hover */
        }
    </style>

        <div class="container">
            <h1 style="text-align: center; color:#00693E;">Data Report</h1>
            <h2>Transport Emissions</h2>
            <table>
                <tr>
                    <th style="background-color: #081C15;">Vehicle Type</th> <!-- Red background for this column -->
                    <th style="background-color: #1B4332;">Distance</th> <!-- Green background for this column -->
                    <th style="background-color: #2D6A4F;">Fuel Type</th> <!-- Orange background for this column -->
                    <th style="background-color: #40916C;">Fuel Efficiency</th> <!-- Purple background for this column -->
                    <th style="background-color: #52B788;">Entry Date</th> <!-- Dark gray background for this column -->
                </tr>
                <!-- Here you will dynamically populate the rows with data from your database -->
                <asp:Table ID="tblTransportEmissions" runat="server">
                </asp:Table>
            </table>
            <hr />
            <h2>Electricity Consumption</h2>
            <table>
                <tr>
                    <th style="background-color: #EAC49A;">Energy Source</th> <!-- Red background for this column -->
                    <th style="background-color: #DDA15E;">Electricity Usage (kWh)</th> <!-- Green background for this column -->
                    <th style="background-color: #BC6C25;">Entry Date</th> <!-- Orange background for this column -->
                </tr>
                <!-- Here you will dynamically populate the rows with data from your database -->
                <asp:Table ID="tblElectricityConsumption" runat="server">
                </asp:Table>
            </table>
        </div>
 </asp:Content>