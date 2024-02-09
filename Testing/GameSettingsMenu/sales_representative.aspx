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
                    <div class="card " style="width: 107.99rem; height:46rem;">
                         <div class="card-body">
                         <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="currentColor"><rect width="5" height="18" x="16" y="3" rx="2"/><rect width="5" height="12" x="9.5" y="9" rx="2"/><rect width="5" height="5" x="3" y="16" rx="2"/></g></svg> Sales Representative</h5>
                             <div style="margin-left:40px;" class="row" id="firstrow">
                                 <div class="col-6 ">
                                   <asp:DropDownList ID="outletCode" OnSelectedIndexChanged="outletCode_SelectedIndexChanged" CssClass="gameCodeDropDown2" runat="server" AutoPostBack="true">
                                       <asp:ListItem Value="0">Select Outlet Code</asp:ListItem>
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

                                    <asp:Label ID="outletCodeLabel1" Text="Outlet Code"  CssClassAssociatedControlID="outletCodeText" EnableViewState="false" runat="server">
                                        <asp:TextBox ID="outletCodeTextBox" CssClass="textbox3"  ValidateRequestMode="Disabled" type="text" runat="server" />
                                    </asp:Label><br />

                                    <asp:Label ID="outletCodeLabel" Text="Outlet Code" AssociatedControlID="outletCodeText" EnableViewState="false" runat="server">
                                        <asp:TextBox ID="outletCodeText" CssClass="textbox3" runat="server" />
                                    </asp:Label>

<%--                                   <asp:TextBox ID="outletCode1" Height="20px" Width="300px" ValidateRequestMode="Disabled" type="text" runat="server" ></asp:TextBox><br />--%>
                                   
                                    <label class="subheader" style=" margin-top: 15px;margin-right:68px;"><small>Device ID</small></label>
                                    <asp:TextBox ID="deviceID"  CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>

                                    <label class="subheader"  style=" margin-top: 10px;margin-right:70px; margin-bottom:10px;"><small>Fullname</small></label>
                                    <asp:TextBox ID="fullName" CssClass="textbox2"  ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>

                                    <label class="subheader" style=" margin-top: 5px; margin-right:77px;"><small>Address</small></label>
                                    <asp:TextBox ID="address" Height="50px" Width="300px" TextMode="MultiLine" Rows="3" CssClass="paragraph-style no-resize" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><br />

                                    <label class="subheader" style=" margin-top: 10px; margin-right:72px;"><small>Area</small></label>
                                    <asp:DropDownList ID="areaCode" Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Area Code</asp:ListItem>
                                        <asp:ListItem Value="area1">Area 1</asp:ListItem>
                                        <asp:ListItem Value="area2">Area 2</asp:ListItem>
                                    </asp:DropDownList><br />

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
                                    <div class="input-group" style="margin-left:137px; margin-top:-35px;">                                     
                                        <asp:TextBox ID="confirmPassword" CssClass="textbox2" ValidateRequestMode="Disabled" type="password" runat="server"  ></asp:TextBox><br />
                                        <div class="input-group-append">
                                            <button id="show_password2" class="btn btn-outline-secondary" style="height:30px;width:auto;display: flex; align-items: center;justify-content: center; margin-right:10px;" type="button"><i class="fa-solid fa-eye"></i></button>
                                        </div>
                                    <asp:CompareValidator ID="comparePasswords" runat="server" ForeColor="Red"
                                        ControlToValidate="confirmPassword" 
                                        ControlToCompare="password" 
                                        Type="String" 
                                        Operator="Equal" 
                                        ErrorMessage="Passwords do not match." 
                                        Display="Dynamic">
                                    </asp:CompareValidator>
                                    </div>

                                    <label class="subheader" style=" margin-top: 15px; margin-right:24px;"><small>Group Account </small></label>
                                     <asp:TextBox ID="groupAccount" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:-15px;"><small>Commision Type</small></label>
                                    <asp:DropDownList ID="commissionType" Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Commision Type</asp:ListItem>
                                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                                        <asp:ListItem Value="coor">Coor</asp:ListItem>
                                    </asp:DropDownList><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:3px;"><small>Back Pay Type</small></label>
                                    <asp:DropDownList ID="backPayType" Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Back Pay Type</asp:ListItem>
                                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                                        <asp:ListItem Value="coor">Coor</asp:ListItem>
                                    </asp:DropDownList><br />

                                    <label class="subheader" style=" margin-top: 15px; margin-right:70px;"><small>Location</small></label>
                                    <asp:TextBox ID="location" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>
                                    
                                    <asp:CheckBox ID="isActive" CssClass="ActiveCheckbox" runat="server" /><label style="position: relative; top: -8px; right:4px;"><small>Active</small></label><br />
                                    </div>
                                 <div style="margin-left:40px;margin-top:-20px;" class="row" >
                                        <div class="col-3">
                                            <br />

                                        </div>
                                        <div class="col-9" >
                                            <br />
                                            <asp:Button runat="server" Text="Save for Edit" ID="editBtn" OnClick="editBtnClick" CssClass="salesEdit" />
                                            <asp:Button runat="server" Text="Save" ID="saveBtn" CssClass="salesSave" />
                                            <asp:Button runat="server" Text="New" ID="newBtn" OnClick="newBtnClick" CssClass="salesNew"/>
                                            <asp:Button runat="server" Text="Delete" ID="deleteBtn" OnClick="deleteBtnClick" CssClass="salesDelete" />
                                            <asp:Button runat="server" Text="Cancel" Height="30px" ID="cancelBtn" OnClick="cancelBtnClick" CssClass="salesCancel" />
                                        </div>

                                    </div>
                                </div>
                         </div>  
                   </div>
                <div class="modal fade" id="confirmationmodal" tabindex="-1" role="dialog" aria-labelledby="confirmationmodalLabel" aria-hidden="true" style="margin-top:150px;">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="confirmationmodalLabel">Saving Changes</h5>

                      </div>
                      <div class="modal-body">
                        Are you sure about your changes?
                      </div>
                      <div class="modal-footer">
                        <asp:Button ID="btnClose" runat="server" Text="Close" data-dismiss="modal" />
                        <asp:Button runat="server" Text="Save" ID="SaveBtn2" OnClick="saveBtnClick" />
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
    <%: Scripts.Render("~/Scripts/jquery-3.4.1.min.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    

</asp:PlaceHolder>
<script>
    $(document).ready(function () {
        $('#mobileNumber').keydown(function (e) {
            var keyCode = (e.which) ? e.which : event.keyCode
           if (keyCode > 31 && (keyCode < 48 || keyCode > 57))
               return false;
            return true;
       });
    });

</script>
<script type="text/javascript">
    $(document).ready(function () {
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
    })
    });
    $(document).ready(function () {
        $("#show_password2").click(function () {
            var $this = $(this);
            var icon = $this.find("i");
            var input = $("#<%= confirmPassword.ClientID %>");
            if (input.attr("type") == "password") {
                input.attr("type", "text");
                icon.removeClass("fa-eye");
                icon.addClass("fa-eye-slash");
            } else {
                input.attr("type", "password");
                icon.removeClass("fa-eye-slash");
                icon.addClass("fa-eye");
            }
        })
    });


    $("#<%= saveBtn.ClientID %>").click(function (e) {
        $('#confirmationmodal').modal('show');
        e.preventDefault();
        return false;
    });


</script>