<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HuarITSolutions.Login" %>

<asp:Content ID="LoginView" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row mb-40" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">STL Management System Web</h1>
        </section>

        <div class="row mb-40" id="loginsection">
            <center>
            <section class="col-md-4" id="login">
                    <div class="card" style="width: 20rem; height: 22rem;">
                      <div class="card-body">
                        <h5 class="card-title" id="logintitle">Login</h5>
                        <img src="image/I.t.png" alt="..." class="img-fluid" style="width:120px; height:auto; "/>
                        <h6 class="exempt">Username:</h6>

                        <asp:TextBox ID="emailfield" CssClass="emailtest" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Enter Username"></asp:TextBox>
                        <asp:CustomValidator  ID="emailVaildator" runat="server" ErrorMessage="Please enter email" ForeColor="Red" ValidateEmptyText="true"></asp:CustomValidator>
                          <br />
                        <h6 class="exempt">Password:</h6>
                        <asp:TextBox ID="passfield" CssClass="passtest" type="password" runat="server"  placeholder="Password"></asp:TextBox>

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
    </style>
</asp:Content>
