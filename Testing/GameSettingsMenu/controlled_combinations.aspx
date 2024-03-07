<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controlled_combinations.aspx.cs" Inherits="HuarITSolutions.Combinations" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card specificcard specificcard2" >
              <div class="card-body">
                               <h5 class="subtitle"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg> Controlled Combinations</h5>
                <div style="margin-left:1px;" class="row">
                    <div class="col-3 margin">
                        <label class="subheader" style="margin-left:30px; margin-top:3px;"><small>Game Code</small></label><br />
                        <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="gameCodeDropDown3" OnSelectedIndexChanged="gameCode_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                        </asp:DropDownList><br />
                    </div>
                    <div class="col-3 margin center">
                        <label class="subheader"><small>Combination</small></label><br />
                        <asp:TextBox ID="combination" CssClass="textbox" ValidateRequestMode="Disabled" type="text" runat="server" ></asp:TextBox>

                    </div>
                    <div class="col-3 margin center">
                        <label class="subheader"><small>Bet Limit</small></label><br />
                        <asp:TextBox ID="bLimit" CssClass="textbox" ValidateRequestMode="Disabled" type="text" runat="server"  ></asp:TextBox>
                    </div>

                    <div class="col-1 space">
                        <br />
                        <asp:Button ID="saveModal" runat="server" Text="Save" Width="100px" Height="40px" />
                    </div>
                    <div class="col-1">
                        <br />
                        <asp:Button ID="deleteBtn" runat="server" Text="Delete" Width="100px" Height="40px" />

                    </div>
                </div>
                <div  style="height:450px;">
                    <div class="row" style="margin-left:30px;margin-top:30px;  ">
                        <div class="scrollable-table2">
                            <asp:Table ID="CombinationsTab" runat="server" Width="80%"  HorizontalAlign="Left" CssClass="table table-bordered" style="font-size:20px;" >
                                   <asp:TableHeaderRow CssClass="aspNetTable">
                                       <asp:TableHeaderCell>Game Code</asp:TableHeaderCell>
                                       <asp:TableHeaderCell>Combination</asp:TableHeaderCell>
                                       <asp:TableHeaderCell>Bet Limit</asp:TableHeaderCell>
                                   </asp:TableHeaderRow>
                                 <asp:TableRow >

                                 </asp:TableRow>


                            </asp:Table>
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
                        <asp:Button runat="server" Text="Save"  OnClick="saveBtn_click" />
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

    $("#<%= saveModal.ClientID %>").click(function (e) {
        $('#confirmationmodal').modal('show');
        e.preventDefault();
        return false;
    });
</script>



