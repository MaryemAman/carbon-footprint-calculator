<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="CarbonFootprintCalculator.Account.DataEntry" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
            .btn {
        background-color: #00693E; /* Green */
        color: white;
        padding: 5px 10px;
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

                <h1 style="text-align: center; color:#00693E;">Data Entry</h1>
                <h2>Transport Emissions</h2>
                <div style="line-height: 2; font-size:10px;">
                <table width="85%" style="margin:5% -10% 2% 2%; font-size:2em !important;">
                <tr style="background-color: #52B788">
                    <td>Vehicle Type</td>
                    <td>Distance Travelled (miles/kilometers)</td>
                    <td>Fuel Type</td>
                    <td>Fuel Efficiency</td>
                </tr>
                <tr>
                    <td style="font-size:1em !important;">
                        <asp:DropDownList runat="server" ID="drpVehicleType">
                            <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Car" Value="Car"></asp:ListItem>
                            <asp:ListItem Text="Truck" Value="Truck"></asp:ListItem>
                            <asp:ListItem Text="Bus" Value="Bus"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtDistanceTravelled"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList runat="server" ID="drpFuelType">
                            <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Gasoline" Value="Gasoline"></asp:ListItem>
                            <asp:ListItem Text="Diesel" Value="Diesel"></asp:ListItem>
                            <asp:ListItem Text="Petrol" Value="Petrol"></asp:ListItem>
                            <asp:ListItem Text="Electric" Value="Electric"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="txtFuelEfficiency"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Button runat="server" ID="Submit" Text="Submit Transport Data" class="btn" OnClick="Submit_Click" />
                    </td>
                </tr>
            </table>

        </div>

                    <h2>Electricity Consumption</h2>
                <div style="line-height: 2; font-size:10px;">
                <table width="85%" style="margin:5% -10% 2% 2%; font-size:2em !important;">
                    <tr style="background-color: #52B788">
                        <td>Energy Source</td>
                        <td>Electricity Usage</td>
                    </tr>
                    <tr>
                        <td style="font-size:1em !important;">
                            <asp:DropDownList runat="server" ID="drpEnergyUsage">
                                <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                                <asp:ListItem Text="Grid" Value="Grid"></asp:ListItem>
                                <asp:ListItem Text="Solar" Value="Solar"></asp:ListItem>
                                <asp:ListItem Text="Wind" Value="Wind"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtElectricityUsage"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button runat="server" ID="Button2" Text="Submit Electricity Data" class="btn" OnClick="Submit_Click2" />
                        </td>
                    </tr>
                </table>
        </div>
</asp:Content>
