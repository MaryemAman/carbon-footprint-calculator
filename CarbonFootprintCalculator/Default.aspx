<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarbonFootprintCalculator._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle" style="color: #00693E;">Carbon Footprint Calculator</h1>

            <img src="carbonFootprint3.jpg" alt="Carbon Footprint" style="width:100%;height:100%; margin-top:5%; margin-bottom:3%;">

            <p class="lead">A <b style="color: #10512F;">Carbon Footprint</b> is the total amount of greenhouse gases emitted directly or indirectly by human activities. Tracking carbon emissions is crucial for organizations to understand and reduce their environmental impact.</p>
            
            <p class="lead">It represents the total greenhouse gas emissions, primarily carbon dioxide (CO<sub>2</sub>), generated directly or indirectly by individuals, organizations, events, or products. It reflects the environmental impact of human activities, such as burning fossil fuels for transportation, energy production, manufacturing, and agriculture. Tracking carbon emissions is essential for organizations to mitigate their environmental impact, promote sustainability, and fulfill corporate social responsibility objectives.</p>
            <p class="lead">Understanding and monitoring carbon emissions enables organizations to identify emission sources, implement effective reduction strategies, and achieve cost savings through improved energy efficiency and resource management. Moreover, it enhances brand reputation, appeals to environmentally conscious consumers, and ensures compliance with increasingly stringent environmental regulations and carbon pricing mechanisms. Ultimately, tracking carbon emissions is crucial for organizations to minimize their contribution to climate change and foster long-term sustainability.</p>
    

            <p style="text-align: right;"><a href="/Account/Login" class="btn btn-primary btn-md" style="background-color: #00693E;">Log In &raquo;</a></p>
        </section>

   <%--     <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>--%>
    </main>

</asp:Content>
