<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HuarITSolutions.Login" %>

<asp:Content ID="LoginView" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row mb-40" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">STL Management System Web</h1>
        </section>

        <div class="row mb-40" id="loginsection">
            <center>
            <section class="col-md-4" id="login">
                    <div class="card" style="width: 20rem; height: 20rem;">
                      <div class="card-body">
                        <h5 class="card-title" id="logintitle">Login</h5>
                        <h6 class="exempt">Username:</h6>

                        <asp:TextBox ID="emailfield" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Email"></asp:TextBox>
                        <asp:CustomValidator  ID="emailVaildator" runat="server" ErrorMessage="Please enter email" ForeColor="Red" ValidateEmptyText="true"></asp:CustomValidator>
                          <br />
                        <h6 class="exempt">Password:</h6>
                        <asp:TextBox ID="passfield" type="password" runat="server"  placeholder="Password"></asp:TextBox>

                          <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="loginbutton_Click"></asp:Button>
                          <br />
                          <br />

                      </div>
                    </div>
            </section>

           </center>

        </div>
    </main>

</asp:Content>