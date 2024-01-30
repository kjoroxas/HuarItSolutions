<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HuarITSolutions._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
                        <%--<asp:TextBox ID="tbComments" ValidateRequestMode="Disabled" ClientIDMode="Static" CssClass="tbTech" runat="server" TextMode="MultiLine" Columns="30" Rows="15"></asp:TextBox>--%>

                        <asp:TextBox ID="emailfield" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Email"></asp:TextBox>
                        <asp:CustomValidator  ID="emailVaildator" runat="server" ErrorMessage="Please enter email" ForeColor="Red" ValidateEmptyText="true"></asp:CustomValidator>
                          <%--<input class="input " id="emailfield" type="email" name="email" placeholder="Email" >--%>
                          <br />
                        <h6 class="exempt">Password:</h6>
                        <asp:TextBox ID="passfield" type="password" runat="server"  placeholder="Password"></asp:TextBox>
					    <%--<input class="input" id="passfield" type="password" name="pswd" placeholder="Password" >--%>

                          <asp:Button ID="loginbutton" runat="server" Text="Login" OnClick="loginbutton_Click"></asp:Button>
                          <br />
                          <br />
                         <!--
                        <h6 class="exempt" style="font-size:12px;">New user? <a href="#" class="card-link">Create Account</a></h6>
                        <h6 class="exempt" style="font-size:12px;">Forgot Password? <a href="#" class="card-link">Click Here</a></h6>
                          -->


                      </div>
                    </div>
            </section>

           </center>

        </div>
    </main>

</asp:Content>
