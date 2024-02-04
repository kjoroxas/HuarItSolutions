<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sales_representative.aspx.cs" Inherits="HuarITSolutions.GameSettingsMenu.WebForm2" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div>
                    <div class="card " style="width: 80rem; height:32rem;">
                         <div class="card-body">
                         <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="currentColor"><rect width="5" height="18" x="16" y="3" rx="2"/><rect width="5" height="12" x="9.5" y="9" rx="2"/><rect width="5" height="5" x="3" y="16" rx="2"/></g></svg> Sales Representative</h5>
                             <div class="row" id="firstrow">
                                 <div class="col-5 ">
                                       <asp:Table ID="activegame" runat="server" Width="70%" HorizontalAlign="Left" CssClass="table table-bordered">
                                           <asp:TableHeaderRow>
                                               <asp:TableHeaderCell>Outlet Code</asp:TableHeaderCell>
                                               <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                                               <asp:TableHeaderCell>Group Account</asp:TableHeaderCell>

                                           </asp:TableHeaderRow>
                                         <asp:TableRow>
                                           <asp:TableCell></asp:TableCell>
                                           <asp:TableCell></asp:TableCell>
                                           <asp:TableCell></asp:TableCell>
                                         </asp:TableRow>
                                       </asp:Table>


                                   </div>
                                <div class="col-3">

                                   <label><small>Outlet Code</small></label><br />
                                    <input type="text" id="outcode" name="outcode" required><br />
                                   <label><small>Device ID</small></label><br />
                                    <input type="text" id="devid" name="devid" required> <asp:Button runat="server" id="clear" Text="clear" Height="30px" Width="50px"/><br />

                                   <label><small>Address</small></label><br />
                                    <input type="text" id="address" name="address" required><br />
                                    <label><small>Area</small></label><br />
                                    <select id="arecode" name="area"  style="width:230px; height:30px;">
                                        <option value="value">value</option>
                                    </select>

                                   <label><small>Mobile Number</small></label><br />
                                    <input type="text" id="mobino" name="mobino" required><br />
                                    <label><small>Password</small></label><br />
                                    <input type="password" id="passw" name="passw" required><br />

                                </div>
                                <div class="col-3">

                                    <label><small>Confirm Password</small></label><br />
                                   <input type="password" id="cpassw" name="cpassw" required><br />
                                   <label><small>Group Account </small></label><br />
                                    <input type="text" id="groupacc" name="groupacc" required><br />
                                    <label><small>Commision Type</small></label><br />
                                    <select id="commitype" name="commitype"  style="width:230px; height:30px;">
                                        <option value="Admin">Admin</option>
                                        <option value="Coor">Coor</option>
                                    </select>
                                    <br />
                                   <label><small>Back Pay Type</small></label><br />
                                    <select id="bcommitype" name="bcommitype"  style="width:230px; height:30px;">
                                        <option value="Admin">Admin</option>
                                        <option value="Coor">Coor</option>
                                    </select><br />
                                    <label><small>Location</small></label><br />
                                    <input type="text" id="loc" name="loc" required> <asp:Button runat="server" id="set" Text="set" Height="30px" Width="50px"/><br />
                                    <input type="checkbox"><label><small>Local Game</small></label><br />
                                </div>
                                </div>
                                <div class="row" >
                                    <div class="col-5">
                                        <br />
                                        <asp:Button runat="server" id="viewton" Text="View" Height="40px" Width="500px"/>
                                    </div>
                                    <div class="col-1">
                                        <br />
                                        <asp:Button runat="server" Text="New" Height="40px" Width="50px" />
                                    </div>
                                    <div class="col-1">
                                        <br />
                                        <asp:Button runat="server" Text="Edit" Height="40px" Width="50px" />
                                    </div>
                                    <div class="col-1">
                                        <br />
                                        <asp:Button runat="server" Text="Save" Height="40px" Width="50px" />
                                    </div>
                                    <div class="col-1">
                                        <br />
                                        <asp:Button runat="server" Text="Delete" Height="40px" Width="60px" />
                                    </div>
                                    <div class="col-1">
                                        <br />
                                        <asp:Button runat="server" Text="Cancel" Height="40px" Width="60px" />
                                    </div>
                                </div>
                 
                         </div>  
                   </div>
            </div>

    </form>
</body>
</html>
<asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    <%: Scripts.Render("~/Scripts/jquery-3.4.1.js") %>
</asp:PlaceHolder>
<script>
    if (window.devicePixelRatio === 1.5 && window.innerWidth === 2560 && window.innerHeight === 1440) {
        // If it is, set the zoom level of the document to 83.33% (equivalent to 125%)
        document.body.style.zoom = "83.33%";
    }
    if (window.devicePixelRatio === 1) {
        // If it is, set the zoom level of the document to 125%
        document.body.style.zoom = "125%";
    }
</script>