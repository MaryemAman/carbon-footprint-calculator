<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataReport.aspx.cs" Inherits="CarbonFootprintCalculator.Account.DataReport" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

            <div>
            <h1 style="text-align: center; color:#00693E;">Data History (Report)</h1>
            <h2>Transport Emissions</h2>
        <asp:GridView ID="CustomerGridView" runat="server" AutoGenerateColumns="False" CssClass="Table" Width="100%">
            <Columns>
                <asp:BoundField HeaderText="Distance Travelled" DataField="DistanceTravelled" HeaderStyle-BackColor="#081C15" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Fuel Efficiency" DataField="FuelEfficiency" HeaderStyle-BackColor="#1B4332" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Vehicle Type" DataField="VehicleType" HeaderStyle-BackColor="#2D6A4F" HeaderStyle-ForeColor="White" />
                <asp:BoundField HeaderText="Fuel Type" DataField="FuelType" HeaderStyle-BackColor="#40916C" HeaderStyle-ForeColor="White" />
                <asp:BoundField HeaderText="Entry Date" DataField="EntryDate" HeaderStyle-BackColor="#52B788" HeaderStyle-ForeColor="White" />
                <asp:BoundField HeaderText="CO2 Emissions (kg CO2e)" DataField="CO2Emissions" HeaderStyle-BackColor="#52B700" HeaderStyle-ForeColor="White" />
            </Columns>
        </asp:GridView>
    </div>
    <hr />
    <div>
        <h2>Electricity Data Report</h2>
        <asp:GridView ID="ElectricityGridView" runat="server" AutoGenerateColumns="False" CssClass="Table" Width="100%">
            <Columns>
                <asp:BoundField HeaderText="Energy Usage" DataField="EnergyUsage" HeaderStyle-BackColor="#081C15" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Electricity Usage" DataField="ElectricityUsage" HeaderStyle-BackColor="#1B4332" HeaderStyle-ForeColor="White"/>
                <asp:BoundField HeaderText="Entry Date" DataField="EntryDate" HeaderStyle-BackColor="#52B788" HeaderStyle-ForeColor="White" />
                <asp:BoundField HeaderText="CO2 Emissions (kg CO2e)" DataField="CO2Emissions" HeaderStyle-BackColor="#52B700" HeaderStyle-ForeColor="White" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>