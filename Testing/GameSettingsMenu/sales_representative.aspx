<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sales_representative.aspx.cs" Inherits="HuarITSolutions.SalesRepresentative" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


</head>
<body>
    <form id="form1" runat="server">
                <div>
                    <div class="card " style="width: 106rem; height:44rem;">
                         <div class="card-body">
                         <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="currentColor"><rect width="5" height="18" x="16" y="3" rx="2"/><rect width="5" height="12" x="9.5" y="9" rx="2"/><rect width="5" height="5" x="3" y="16" rx="2"/></g></svg> Sales Representative</h5>
                             <div style="margin-left:40px;" class="row" id="firstrow">
                                 <div class="col-6 ">
                                                                        <asp:DropDownList ID="outletCode" OnSelectedIndexChanged="outletCode_SelectedIndexChanged" CssClass="gameCodeDropDown2" runat="server" AutoPostBack="true">
                                       <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                                   </asp:DropDownList><br />
                                       <asp:Table ID="activeGame" runat="server" Width="70%" HorizontalAlign="Left" CssClass="table table-bordered">
                                           <asp:TableHeaderRow>
                                               <asp:TableHeaderCell>Outlet Code</asp:TableHeaderCell>
                                               <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                                               <asp:TableHeaderCell>Group Account</asp:TableHeaderCell>

                                           </asp:TableHeaderRow>
                                         <asp:TableRow>

                                         </asp:TableRow>
                                       </asp:Table>


                                   </div>
                                <div  class="col-4">

                                   <label class="subheader" style="margin-right:50px;"><small>Outlet Code</small></label>

                                    <asp:Label ID="outletCodeLabel" Text="Outlet Code:" AssociatedControlID="outletCodeText" EnableViewState="false" runat="server">
                                        <asp:TextBox ID="outletCodeText" runat="server" />
                                    </asp:Label><br />

<%--                                   <asp:TextBox ID="outletCode1" Height="20px" Width="300px" ValidateRequestMode="Disabled" type="text" runat="server" ></asp:TextBox><br />--%>
                                   
                                    <label class="subheader" style=" margin-top: 15px;margin-right:68px;"><small>Device ID</small></label>
                                    <asp:TextBox ID="deviceID"  CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><asp:Button runat="server" id="clear"  Text="clear" CssClass="small-font clearbutton" Height="30px" Width="80px"/><br />

                                    <label class="subheader"  style=" margin-top: 10px;margin-right:70px;"><small>Fullname</small></label>
                                    <asp:TextBox ID="fullName" CssClass="textbox2"  ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>

                                    <label class="subheader" style=" margin-top: 15px; margin-right:77px;"><small>Address</small></label>
                                    <asp:TextBox ID="address" Height="50px" Width="300px" TextMode="MultiLine" Rows="3" CssClass="paragraph-style no-resize" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:72px;"><small>Area</small></label>
                                    <asp:DropDownList ID="areaCode" Height="30px" CssClass="gameCodeDropDown" runat="server"></asp:DropDownList><br />

                                   <label class="subheader" style=" margin-top: 15px; margin-right:22px;"><small>Mobile Number</small></label>
                                    <asp:TextBox ID="mobileNumber" CssClass="textbox2" ValidateRequestMode="Disabled" MaxLength="15" type="in" runat="server"  ></asp:TextBox><br />

                                    <label style=" margin-top: 10px; margin-right:65px;"><small>Password</small></label>
                                    <div class="input-group" style="margin-left:137px; margin-top:-30px;">                                     
                                        <asp:TextBox ID="password" CssClass="textbox2" ValidateRequestMode="Disabled" type="password" runat="server"  ></asp:TextBox><br />
                                        <div class="input-group-append">
                                            <button id="show_password" class="btn btn-outline-secondary" style="height:30px;width:auto;display: flex; align-items: center;justify-content: center;" type="button"><i class="fa-solid fa-eye"></i></button>
                                        </div>
                                    </div>

                                     <label class="subheader" style=" margin-top: 15px; margin-right:5px;"><small>Confirm Password</small></label>
                                    <asp:TextBox ID="confirmPassword" CssClass="textbox2" ValidateRequestMode="Disabled" type="password" runat="server"  ></asp:TextBox><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:24px;"><small>Group Account </small></label>
                                     <asp:TextBox ID="groupAccount" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:-15px;"><small>Commision Type</small></label>
                                    <asp:DropDownList ID="commissionType" Height="30px" CssClass="gameCodeDropDown" runat="server"></asp:DropDownList><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:3px;"><small>Back Pay Type</small></label>
                                    <asp:DropDownList ID="backPayType" Height="30px" CssClass="gameCodeDropDown" runat="server"></asp:DropDownList><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:70px;"><small>Location</small></label>
                                    <asp:TextBox ID="location" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><asp:Button runat="server" id="setbutton"  Text="Set" CssClass="small-font clearbutton" Height="40px" Width="50px"/><br />
                                    
                                    <asp:CheckBox ID="isActive" CssClass="ActiveCheckbox" runat="server" /><label><small>Active</small></label><br />
                                    </div>
                                 <div style="margin-left:40px;margin-top:-20px;" class="row" >
                                        <div class="col-6">
                                            <br />

                                        </div>
                                        <div class="col-1">
                                            <br />
                                            <asp:Button runat="server" Text="New" ID="newBtn" OnClick="newBtnClick" Height="30px" Width="50px" />
                                        </div>
                                        <div class="col-1">
                                            <br />
                                            <asp:Button runat="server" Text="Edit" ID="editBtn" OnClick="editBtnClick" Height="30px" Width="50px" />
                                            
                                        </div>
                                        <div class="col-1">
                                            <br />
                                            <asp:Button runat="server" Text="Save" ID="saveBtn" OnClick="saveBtnClick" Height="30px" Width="50px" />
                                            
                                        </div>
                                        <div class="col-1">
                                            <br />
                                            <asp:Button runat="server" Text="Delete" ID="deleteBtn" OnClick="deleteBtnClick" Height="30px" Width="60px" />
                                            
                                        </div>
                                     <div class="col-1">
                                            <br />
                                            <asp:Button runat="server" Text="Cancel" Height="30px" ID="cancelBtn" OnClick="cancelBtnClick" Width="60px" />
                                        </div>

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
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    

</asp:PlaceHolder>
<script>
    //if (window.devicePixelRatio === 1.5 && window.innerWidth === 2560 && window.innerHeight === 1440) {
    //    // If it is, set the zoom level of the document to 83.33% (equivalent to 125%)
    //    document.body.style.zoom = "83.33%";
    //}
    //if (window.devicePixelRatio === 1) {
    //    // If it is, set the zoom level of the document to 125%
    //    document.body.style.zoom = "125%";
    //}
    //$(document).ready(function () {
    //    $('#mobileNumber').keydown(function (e) {
    //        var keyCode = (e.which) ? e.which : event.keyCode
    //        if (keyCode > 31 && (keyCode < 48 || keyCode > 57))
    //            return false;
    //        return true;
    //    });
    //});

</script>
<script type="text/javascript">
    <%--$(document).ready(function () {
        $("#show_password").click(function () {
            var $this = $(this);
            var icon = $this.find("i");
            var input = $("#<%= password.ClientID %>");
        if (input.attr("type") == "password") {
            input.attr("type", "text");
            icon.removeClass("fa-eye");
            icon.addClass("fa-eye-slash");
        } else {
            input.attr("type", "password");
            icon.removeClass("fa-eye-slash");
            icon.addClass("fa-eye");
        }
    });--%>
});

</script>