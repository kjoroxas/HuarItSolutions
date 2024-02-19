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
                    <div class="card specificcard" >
                         <div class="card-body">
                         <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="M18.72 14.76c.35-.85.54-1.76.54-2.76c0-.72-.11-1.41-.3-2.05c-.65.15-1.33.23-2.04.23A9.07 9.07 0 0 1 9.5 6.34a9.21 9.21 0 0 1-4.73 4.88c-.04.25-.04.52-.04.78A7.27 7.27 0 0 0 12 19.27c1.05 0 2.06-.23 2.97-.64c.57 1.09.83 1.63.81 1.63c-1.64.55-2.91.82-3.78.82c-2.42 0-4.73-.95-6.43-2.66a9.03 9.03 0 0 1-2.24-3.69H2v-4.55h1.09a9.09 9.09 0 0 1 15.33-4.6a8.991 8.991 0 0 1 2.47 4.6H22v4.55h-.06L18.38 18l-5.3-.6v-1.67h4.83zm-9.45-2.99c.3 0 .59.12.8.34a1.136 1.136 0 0 1 0 1.6c-.21.21-.5.33-.8.33c-.63 0-1.14-.5-1.14-1.13c0-.63.51-1.14 1.14-1.14m5.45 0c.63 0 1.13.51 1.13 1.14c0 .63-.5 1.13-1.13 1.13c-.63 0-1.14-.5-1.14-1.13a1.14 1.14 0 0 1 1.14-1.14"/></svg> Sales Representative</h5>
                             <div style="margin-left:40px;" class="row" id="firstrow">
                                 <div class="col-6 margin">
                                   <asp:DropDownList ID="outletCode" OnSelectedIndexChanged="outletCode_SelectedIndexChanged" CssClass="gameCodeDropDown2" runat="server" AutoPostBack="true">
                                       <asp:ListItem Value="0">Select Outlet Code</asp:ListItem>
                                   </asp:DropDownList><br />   
                                       

                                    <div class="scrollable-table3">
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

                                   </div>
                                <div  class="col-4 margin">

                                    <asp:Label ID="outletCodeLabel1" Text="Outlet Code"  CssClassAssociatedControlID="outletCodeText" EnableViewState="false" runat="server">
                                        <asp:TextBox ID="outletCodeTextBox" CssClass="textbox3"  ValidateRequestMode="Disabled" type="text" runat="server" />
                                    </asp:Label><br />

                                    <asp:Label ID="outletCodeLabel" Text="Outlet Code" AssociatedControlID="outletCodeText" EnableViewState="false" runat="server">
                                        <asp:TextBox ID="outletCodeText" CssClass="textbox3" runat="server" />
                                    </asp:Label>
                                    <label id="outletCodeExist"></label>

                                    <asp:RequiredFieldValidator ID="outletCodeTextValidator" runat="server" ControlToValidate="outletCodeText" ErrorMessage="Please Enter an Outlet Code." CssClass="outlet-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
<%--                                   <asp:TextBox ID="outletCode1" Height="20px" Width="300px" ValidateRequestMode="Disabled" type="text" runat="server" ></asp:TextBox><br />--%>
                                   
                                    <label class="subheader" style=" margin-top: 15px;margin-right:68px;"><small>Device ID</small></label>
                                    <asp:TextBox ID="deviceID"  CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><asp:Button ID="clearBtn" runat="server" Text="Clear" /><br />
                                    
                                    <label class="subheader"  style=" margin-top: 10px;margin-right:70px; margin-bottom:10px;"><small>Fullname</small></label>
                                    <asp:TextBox ID="fullName" CssClass="textbox2"  ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="fullNameValidator" runat="server" ControlToValidate="fullName" ErrorMessage="Please enter your full name." CssClass="name-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 5px; margin-right:77px;"><small>Address</small></label>
                                    <asp:TextBox ID="address" Height="50px" Width="300px" TextMode="MultiLine" Rows="3" CssClass="paragraph-style no-resize" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="addressValidator" runat="server" ControlToValidate="address" ErrorMessage="Please enter address." CssClass="new-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 10px; margin-right:72px;"><small>Area</small></label>
                                    <asp:DropDownList ID="areaCode"  Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Area Code</asp:ListItem>
                                        <asp:ListItem Value="area1">Area 1</asp:ListItem>
                                        <asp:ListItem Value="area2">Area 2</asp:ListItem>
                                    </asp:DropDownList><br />
                                    <asp:RequiredFieldValidator 
                                        ControlToValidate="areaCode" 
                                        ID="areaCodeValidator"
                                        ErrorMessage="Please select an area code" 
                                        InitialValue="0" 
                                        runat="server" 
                                        CssClass="new-validator-error"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                   <label class="subheader" style=" margin-top: 15px; margin-right:22px;"><small>Mobile Number</small></label>
                                    <asp:TextBox ID="mobileNumber" CssClass="textbox2" ValidateRequestMode="Disabled" MaxLength="15" type="in" runat="server"  ></asp:TextBox><br />
                                    <asp:RequiredFieldValidator ID="mobileNumberValidator" runat="server" ControlToValidate="mobileNumber" ErrorMessage="Please enter mobile number." CssClass="new-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 10px; margin-right:65px;"><small>Password</small></label>
                                    <div class="input-group" style="margin-left:137px; margin-top:-30px;">                                     
                                        <asp:TextBox ID="password" CssClass="textbox2" ValidateRequestMode="Disabled" type="password" runat="server"  ></asp:TextBox><br />
                                        <div class="input-group-append">
                                            <button id="show_password" class="btn btn-outline-secondary" style="height:30px;width:auto;display: flex; align-items: center;justify-content: center;" type="button"><i class="fa-solid fa-eye"></i></button>
                                        </div>
                                    </div>
                                    <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="password" ErrorMessage="Please enter password." CssClass="new-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
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
                                     <asp:RequiredFieldValidator ID="confirmPasswordValidator" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Confirm your password." CssClass="new-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 15px; margin-right:24px;"><small>Group Account </small></label>
                                     <asp:TextBox ID="groupAccount" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>    <br />
                                    <asp:RequiredFieldValidator ID="groupAccountValidator" runat="server" ControlToValidate="groupAccount" ErrorMessage="Group account is required." CssClass="new-validator-error" Display="Dynamic"></asp:RequiredFieldValidator>

                                    <label class="subheader" style=" margin-top: 15px; margin-right:-15px;"><small>Commision Type</small></label>
                                    <asp:DropDownList ID="commissionType"  Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Commision Type</asp:ListItem>
                                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                                        <asp:ListItem Value="coor">Coor</asp:ListItem>
                                    </asp:DropDownList><br />
                                    <asp:RequiredFieldValidator 
                                        ControlToValidate="commissionType" 
                                        ID="commissionTypeValidator" 
                                    
                                        ErrorMessage="Please select a commission type" 
                                        InitialValue="0" 
                                        runat="server" 
                                        CssClass="new-validator-error"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 15px; margin-right:3px;"><small>Back Pay Type</small></label>
                                    <asp:DropDownList ID="backPayType"  Height="30px" CssClass="gameCodeDropDown" runat="server">
                                        <asp:ListItem Value=0>Select Back Pay Type</asp:ListItem>
                                        <asp:ListItem Value="admin">Admin</asp:ListItem>
                                        <asp:ListItem Value="coor">Coor</asp:ListItem>
                                    </asp:DropDownList><br />
                                    <asp:RequiredFieldValidator 
                                        ControlToValidate="backPayType" 
                                        ID="backPayTypeValidator" 
                                        
                                        ErrorMessage="Please select a commission type" 
                                        InitialValue="0" 
                                        runat="server" 
                                        CssClass="new-validator-error"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <label class="subheader" style=" margin-top: 15px; margin-right:70px;"><small>Location</small></label>
                                    <asp:TextBox ID="location" CssClass="textbox2" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox><asp:Button ID="setBtn" runat="server" Text="Set" /><br />
                                    
                                    <asp:CheckBox ID="isActive" CssClass="ActiveCheckbox" runat="server" /><label style="position: relative; top: -8px; right:4px;"><small>Active</small></label><br />
                                    <asp:CustomValidator ID="isActivevalidator" runat="server" 
                                        ErrorMessage="Click the checkbox " 
                                        CssClass="new-validator-error"
                                        OnServerValidate="isActivevalidator_ServerValidate">
                                    </asp:CustomValidator>
                                    </div>
                                 <div  class="row pcsalesbuttons" >
                                        <div class="col-3 margin">
                                            <br />

                                        </div>
                                        <div class="col-9" >
                                            <br />
                                            <asp:Button runat="server" Text="Save for Edit" ID="editBtn" OnClick="editBtnClick" CssClass="salesEdit" />
                                            <asp:Button runat="server" Text="Save" ID="saveBtn" CssClass="salesSave" OnClick="saveBtn2Click" />
                                            <asp:Button runat="server" Text="New" ID="newBtn" OnClick="newBtnClick" CssClass="salesNew"/>
                                            <asp:Button runat="server" Text="Delete" ID="deleteBtn" OnClick="deleteBtnClick" CssClass="salesDelete" />
                                            <asp:Button runat="server" Text="Cancel" Height="30px" ID="cancelBtn" OnClick="cancelBtnClick" CausesValidation="False" CssClass="salesCancel" />
                                        </div>

                                    </div>
                                </div>
                         </div>  
                   </div>
                     <div class="modal fade" id="confirmationmodal" tabindex="-1" role="dialog" aria-labelledby="confirmationmodalLabel" aria-hidden="true" style="margin-top:210px;">
                       <div class="modal-dialog" role="document">
                         <div class="modal-content">
                           <div class="modal-header">
                             <h5 class="modal-title" id="confirmationmodalLabel">Saving Changes</h5>

                           </div>
                           <div class="modal-body">
                             <asp:Label ID="Confirmation" runat="server" Text="Are you sure about your changes?"></asp:Label>

                           </div>
                           <div class="modal-footer">
                             <asp:Button ID="btnClose" runat="server" Text="Close"  />
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
    $("#<%= btnClose.ClientID %>").click(function (e) {
        $('#confirmationmodal').modal('hide');
        e.preventDefault();
        return false;
    });

    $(document).ready(function () {
        $("#<%=areaCode.ClientID%>, #<%=commissionType.ClientID%>, #<%=backPayType.ClientID%>").change(function () {
            if ($(this).val() != 0) {
                $(this).find('option[value=0]').remove();
            }
        });
    });


</script>
<script type="text/javascript">
    /*this disables save button if fields are not all filled */
    window.onload = function () {
        var textboxes = document.querySelectorAll('input[type=text], input[type=password], input[type=email], #address, #mobileNumber');
        var dropdowns = document.getElementsByTagName('select');
        var saveBtn = document.getElementById('saveBtn');
        var editBtn = document.getElementById('editBtn');
        var groupAccount = document.getElementById('<%= groupAccount.ClientID %>');

        var password = document.querySelector('input[type=password]');
        var confirmPassword = document.querySelector('#confirmPassword'); // assuming the id of confirm password field is 'confirmPassword'
        var ignoreFields = ['deviceID', 'location']; 

        function checkFieldsForSave() {
            for (var i = 0; i < textboxes.length; i++) {
                if (ignoreFields.includes(textboxes[i].id)) {
                    continue;
                }
                if (textboxes[i].value.trim() == '') {
                    return false;
                }
            }
            for (var i = 0; i < dropdowns.length; i++) {
                if (ignoreFields.includes(dropdowns[i].id)) {
                    continue;
                }
                if (dropdowns[i].value == '0') {
                    return false;
                }
            }

            if (groupAccount.value.trim() == '' && !ignoreFields.includes(groupAccount.id)) {
                return false;
            }
            if (password.value !== confirmPassword.value) {
                return false;
            }
            return true;
        }

        function checkFieldsForEdit() {
            for (var i = 0; i < textboxes.length; i++) {
                if (ignoreFields.includes(textboxes[i].id)) {
                    continue;
                }
                if (textboxes[i].value.trim() == '') {
                    return false;
                }
            }
            for (var i = 0; i < dropdowns.length; i++) {
                if (ignoreFields.includes(dropdowns[i].id)) {
                    continue;
                }
                if (dropdowns[i].value == '') {
                    return false;
                }
            }
            if (groupAccount.value.trim() == '' && !ignoreFields.includes(groupAccount.id)) {
                return false;
            }
            if (password.value !== confirmPassword.value) {
                return false;
            }
            return true;
        }


    function enableDisableSaveBtn() {
        if (checkFieldsForSave()) {
            saveBtn.disabled = false;
        } else {
            saveBtn.disabled = true;
        }
    }

    function enableDisableEditBtn() {
        if (checkFieldsForEdit()) {
            editBtn.disabled = false;
        } else {
            editBtn.disabled = true;
        }
    }

    for (var i = 0; i < textboxes.length; i++) {
        textboxes[i].addEventListener('input', enableDisableSaveBtn);
    }
    for (var i = 0; i < dropdowns.length; i++) {
        dropdowns[i].addEventListener('change', enableDisableSaveBtn);
    }
    groupAccount.addEventListener('input', enableDisableSaveBtn);
        confirmPassword.addEventListener('input', enableDisableSaveBtn);

    for (var i = 0; i < textboxes.length; i++) {
        textboxes[i].addEventListener('input', enableDisableEditBtn);
    }
    for (var i = 0; i < dropdowns.length; i++) {
        dropdowns[i].addEventListener('change', enableDisableEditBtn);
    }
    groupAccount.addEventListener('input', enableDisableEditBtn);
        confirmPassword.addEventListener('input', enableDisableEditBtn);

    enableDisableSaveBtn();
    enableDisableEditBtn();
}

   
    /*Validators */
    $(document).ready(function () {
        $('#<%= groupAccount.ClientID %>').blur(function () {
            if ($(this).val().length == 0) {
                $('#<%= groupAccountValidator.ClientID %>').show();
        } else {
            $('#<%= groupAccountValidator.ClientID %>').hide();
        }
    });
    });
    $(document).ready(function () {
        $('#<%= outletCodeText.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= outletCodeTextValidator.ClientID %>').show();
        } else {
                $('#<%= outletCodeTextValidator.ClientID %>').hide();
            }
        });
    });


    $(document).ready(function () {
        $('#<%= fullName.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= fullNameValidator.ClientID %>').show();
        } else {
                $('#<%= fullNameValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= address.ClientID %>').blur(function () {
                    if ($(this).val().length == 0) {
                        $('#<%= addressValidator.ClientID %>').show();
        } else {
                $('#<%= addressValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= mobileNumber.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= mobileNumberValidator.ClientID %>').show();
        } else {
                $('#<%= mobileNumberValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= password.ClientID %>').blur(function () {
                    if ($(this).val().length == 0) {
                        $('#<%= passwordValidator.ClientID %>').show();
        } else {
                $('#<%= passwordValidator.ClientID %>').hide();
            }
        });
    });

    $(document).ready(function () {
        $('#<%= confirmPassword.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= confirmPasswordValidator.ClientID %>').show();
        } else {
                $('#<%= confirmPasswordValidator.ClientID %>').hide();
            }
        });
    });

    $(document).ready(function () {
        $('#<%= areaCode.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= areaCodeValidator.ClientID %>').show();
        } else {
                $('#<%= areaCodeValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= commissionType.ClientID %>').blur(function () {
            if ($(this).val().length == 0) {
                $('#<%= commissionTypeValidator.ClientID %>').show();
        } else {
                $('#<%= commissionTypeValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= backPayType.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= backPayTypeValidator.ClientID %>').show();
        } else {
                $('#<%= backPayTypeValidator.ClientID %>').hide();
            }
        });
    });
    $(document).ready(function () {
        $('#<%= isActive.ClientID %>').blur(function () {
                if ($(this).val().length == 0) {
                    $('#<%= isActivevalidator.ClientID %>').show();
        } else {
                $('#<%= isActivevalidator.ClientID %>').hide();
            }
        });
    });

</script>

<script type="text/javascript">
    $("#setBtn").click(function () {
        $.ajax({
            type: "GET", //GET
            url: "sales_representative.aspx/getLocationCoordinates",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (msg) {
                $("#location").val(msg.d);
//                DrawTable(msg.d);
            },
            failure: function (xhr, err) {
                alert(alert("readyState: " + xhr.readyState + "\nstatus: " + xhr.status + "\nresponseText: " + xhr.responseText));
            },
            error: function (xhr, err) {
                alert(alert("readyState: " + xhr.readyState + "\nstatus: " + xhr.status + "\nresponseText: " + xhr.responseText));
            }
        });
    });

    $("#outletCodeText").change(function () {
        $.ajax({
            type: "POST", //GET
            url: 'sales_representative.aspx/checkIfOutletCodeExists',
            data: JSON.stringify({ outletCode: $("#outletCodeText").val()}),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            processData: true,
            success: function (msg) {
                if (msg.d) { //true existing
                    $("#outletCodeExist").val(msg.d);

                }
                else { //false not existing
                    $("#outletCodeExist").val(msg.d);
                } 


            },
            failure: function (xhr, err) {
                alert(alert("readyState: " + xhr.readyState + "\nstatus: " + xhr.status + "\nresponseText: " + xhr.responseText));
            },
            error: function (xhr, err) {
                alert(alert("readyState: " + xhr.readyState + "\nstatus: " + xhr.status + "\nresponseText: " + xhr.responseText));
            }
        });
    });
</script>​