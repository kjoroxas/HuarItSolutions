<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales Summary.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Sales_Summary" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
                <div>
                <div class="card specificcard specificcard2" >
                  <div class="card-body">
                    <h5 class="subtitle"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg> Sales Summary</h5>
                      <div class="row">
                          <div class="col-3 pcversion">
                              <div class="row " style="margin-bottom:20px;">

                                    <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
                              </div>
                             <div class="row">
                                 <asp:ListBox ID="ListBox1" runat="server" CssClass="listbox1" ></asp:ListBox>
                                    <asp:DropDownList ID="Active" runat="server" AutoPostBack="true" CssClass="ActiveDropDown" >
                                        <asp:ListItem Value="Active">Active </asp:ListItem>
                                        <asp:ListItem Value="Inactive">Inactive </asp:ListItem>
                                    </asp:DropDownList><br />
                              </div>
                            <div class="row">
                                 <asp:Button ID="Button1" CSSClass="viewBtnclass" runat="server" Text="View Outlets" Width="500px" Height="40px" />
                              </div>
                             <div class="row">
                                  <asp:Button ID="Button2" CSSClass="viewBtnclass" runat="server" Text="Overall Summary" Width="500px" Height="40px" />
                              </div>  
                          </div>
                         <div class="col-9">

                          </div>
                      </div>
                  </div>
                </div>
        </div>
    </form>
</body>
</html>
