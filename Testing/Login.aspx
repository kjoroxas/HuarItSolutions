<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HuarITSolutions.Login" %>

<asp:Content ID="LoginView" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row mb-40 d-flex justify-content-center "  aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle"  class="Title2">STL Management System Web</h1>
        </section>

        <div class="row d-flex justify-content-center"  id="loginsection">
            <center>
           
            <section class="col-lg-6" id="login">
                    <div class="card pcLoginCard mobileLogincard mx-auto" >
                      <div class="card-body">
                        <h5 class="card-title subtitle" id="logintitle">Login</h5>
                        <img src="image/I.t.png" alt="..." class="img-fluid loginlogopc" /><br />
                          <asp:CustomValidator ID="emailVaildator" runat="server" ErrorMessage="Invalid Username or Password.<br /> Please try again" ForeColor="Red" CSSClass="loginvalidator" ValidateEmptyText="true" OnServerValidate="emailVaildator_ServerValidate"></asp:CustomValidator>
                          <h6 class="exempt subheader">Username:</h6>

                        <asp:TextBox ID="emailfield" CssClass="emailtest" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Username"></asp:TextBox>
                        
                          <br />
                        <h6 class="exempt subheader">Password:</h6>
                        <asp:TextBox ID="passfield" CssClass="passtest" type="password" runat="server"  placeholder="Password"></asp:TextBox><br />

                          <asp:Button ID="loginbutton" runat="server" CssClass="loginbutton" Text="Login" OnClick="loginbutton_Click"></asp:Button>
                          <br />
                          <br />

                      </div>
                    </div>
            </section>

           </center>

        </div>
    </main>
    <script>
        $(document).ready(function () {
            $("#UserControl").hide();
        });
    </script>
    <style>
        .body-content {
            padding-top:35px;
        }
        footer{
            margin-top:-30px;
        }
        @media screen and (min-width: 375px) and (max-width: 500px) {
            html, body {
              height: 100%;
              margin: 0;
              padding: 0;
              overflow: hidden; /* This will disable scrolling */

            }
        }
    </style>

</asp:Content>
