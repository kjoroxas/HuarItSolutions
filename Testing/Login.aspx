<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HuarITSolutions.Login" %>

<asp:Content ID="LoginView" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row mb-40" style="margin-left:30px;" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle"  class="Title2">STL Management System Web</h1>
        </section>

        <div class="row mb-40" id="loginsection">
            <center>
            <section class="col-lg-6" id="login">
                    <div class="card" style="margin-bottom:30px;width: 25rem; height: 31rem;">
                      <div class="card-body">
                        <h5 class="card-title subtitle" id="logintitle">Login</h5>
                        <img src="image/I.t.png" alt="..." class="img-fluid" style="width:250px; height:auto; "/><br />
                        <asp:CustomValidator  ID="emailVaildator" runat="server" ErrorMessage="Please enter email" ForeColor="Red" ValidateEmptyText="true"></asp:CustomValidator>
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
    </style>
</asp:Content>
