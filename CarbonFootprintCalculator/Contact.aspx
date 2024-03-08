<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarbonFootprintCalculator.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <header>
        <%--<h1>Contact Us</h1>--%>
    <link href="~/style2.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <style>
            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }

            input[type=submit] {
                background-color: #00693E; /* Green */
                color: white;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                font-size:18px;
                cursor: pointer;
            }

                input[type=submit]:hover {
                    background-color: #49796B;
                }

            .container2 {
                border-radius: 5px;
                background-color: #EFF1ED;
                padding: 20px;
            }

        </style>

        <img src="ContactUsPic2.png" alt="Contact Us" style="width: 70%; height: 250px; object-fit: cover; margin-bottom:5%;">

        <p>If you have any questions or inquiries, feel free to reach out to us using the form below:</p>
    </header>

    <main aria-labelledby="title">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="contact-info">
                        <h3 style="color: #00693E; text-transform:uppercase; margin-top:3%;">Team Burgundy</h3><br />
                        <address>
                            <i class="bi bi-geo-alt-fill" style = "color:#00693E;"><span style="color: black;">Addis Ababa, Ethiopia</span></i><br />
                            <i class="bi bi-geo-alt-fill" style = "color:#00693E;"><span style="color: black;">Kigali, Rwanda</span></i><br />
                            <i class="bi bi-telephone-fill" style = "color:#00693E;"><span style="color: #333;">+251 9123 4567 789</span></i><br />
                            <i class="bi bi-telephone-fill" style = "color:#00693E;"><span style="color: #333;">+250 9123 4567 789</span></i>
                        </address>
                        <address>
                            <strong style="color: #00693E;">Email:</strong>   <a href="mailto:team.burgundy@azubiafrica.org" style="color: black;">Team.Burgundy@azubiafrica.org</a><br />
                        </address>
                    </div>
                </div>
            </div>

            <h3 style="color: #00693E; margin-top:3%; text-align:center;">Contact Us Here</h3>

        </div>


        <div class="container2">
  <form>
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">
      <br />

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="australia">Ethiopia</option>
      <option value="canada">Rawanda</option>
      <option value="usa">Ghana</option>
    </select>

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

    </main>

    <footer>
        <div class="container">
            <p></p>
        </div>
    </footer>
</asp:Content>