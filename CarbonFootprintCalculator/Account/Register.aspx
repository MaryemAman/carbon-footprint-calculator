<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CarbonFootprintCalculator.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <style>
        /* Define custom styles for the register form */
        main {
            padding: 20px;
            background-color: #f8f9fa; /* Light gray background */
            color: #343a40; /* Dark text color */
        }
        h2 {
            color: #343a40; /* Dark text color for the title */
            margin-bottom: 20px; /* Add some space below the heading */
        }
        h4 {
            color: #6c757d; /* Gray color for the subtitle */
            margin-top: 10px; /* Add some space above the subtitle */
        }
        .form-control {
            margin-bottom: 15px; /* Add space between form controls */
        }
        .btn-register {
            color: #fff; /* White text color */
            background-color: #00693E; /* Green button background color */
            border-color: #00693E; /* Green button border color */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }
        .btn-register:hover {
            background-color: #49796B; /* Darker green on hover */
            border-color: #49796B; /* Darker border color on hover */
        }
        .text-danger {
            color: #dc3545; /* Red color for error messages */
        }
        footer {
            /*background-color: #007bff;*/ /* Blue footer background color */
            /*color: #fff;*/ /* White text color for footer */
            padding: 10px 20px; /* Add padding to the footer */
            text-align: center; /* Center-align the content */
        }
    </style>

    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 col-form-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 col-form-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="row">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 col-form-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="row">
            <div class="offset-md-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-register" />
            </div>
        </div>
    </main>

    <footer>
        © 2024 Carbon Footprint Calculator. All rights reserved.
    </footer>
</asp:Content>