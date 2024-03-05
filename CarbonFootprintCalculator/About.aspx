<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CarbonFootprintCalculator.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Define custom styles for the content */
        main {
            padding: 20px;
            background-color: #f8f9fa; /* Light gray background */
            color: #333; /* Dark text color */
        }
        h3 {
            color: #6c757d; /* Dark gray heading color */
        }
        p {
            margin-bottom: 20px;
            line-height: 1.6; /* Improved readability with increased line height */
        }
        b {
            color: #007bff; /* Blue color for bold text */
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <h3>Our Team</h3>

    <h2 style="color: #00693E; text-align:left; padding-top:2%;">BURGUNDY TEAM</h2>
    <p style="color: black; padding-top:1%; font-size:20px;">Dedicated to the <b>BURGUNDY TEAM</b>, known for their wizardry in coding. The <b>BURGUNDY TEAM</b> proudly presents the Carbon Footprint Calculator. Carbon footprint is the total amount of greenhouse gases produced to directly and indirectly support human activities, usually expressed in equivalent tons of carbon dioxide (CO2). This calculator helps you measure and manage your carbon footprint by tracking various activities and consumption patterns.</p>
    

<%--        <p>A <b>carbon footprint</b> represents the total greenhouse gas emissions, primarily carbon dioxide (CO<sub>2</sub>), generated directly or indirectly by individuals, organizations, events, or products. It reflects the environmental impact of human activities, such as burning fossil fuels for transportation, energy production, manufacturing, and agriculture. Tracking carbon emissions is essential for organizations to mitigate their environmental impact, promote sustainability, and fulfill corporate social responsibility objectives.</p>
        <p>Understanding and monitoring carbon emissions enables organizations to identify emission sources, implement effective reduction strategies, and achieve cost savings through improved energy efficiency and resource management. Moreover, it enhances brand reputation, appeals to environmentally conscious consumers, and ensures compliance with increasingly stringent environmental regulations and carbon pricing mechanisms. Ultimately, tracking carbon emissions is crucial for organizations to minimize their contribution to climate change and foster long-term sustainability.</p>
    --%></main>
</asp:Content>