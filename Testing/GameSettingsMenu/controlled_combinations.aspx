<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="controlled_combinations.aspx.cs" Inherits="HuarITSolutions.combinations" %>
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
            <div class="card" style="width: 80rem; height:32rem;">
              <div class="card-body">
                               <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg> Controlled Combinations</h5>
                <div class="row">
                    <div class="col-3">
                        <label style="margin-left:30px; margin-top:3px;"><small>Game Code</small></label><br />
                        <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="gameCodeDropDown" OnSelectedIndexChanged="gameCode_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                        </asp:DropDownList><br />
                    </div>
                    <div class="col-3">
                        <label><small>Combination</small></label><br />
                        <asp:TextBox ID="combination" ValidateRequestMode="Disabled" type="text" runat="server" placeholder="Combination"></asp:TextBox>

                    </div>
                    <div class="col-3">
                        <label><small>Bet Limit</small></label><br />
                        <asp:TextBox ID="bLimit" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Bet Limit"></asp:TextBox>
                    </div>
                    <div class="col-1">
                            <br />
                            
                    </div>
                    <div class="col-1">
                        <br />
                        <button type="button" class="btn btndesign" data-toggle="modal"  data-target="#confirmationmodal">
                        Save
                        </button>
                    </div>

                </div>
                <div  style="height:300px;">
                    <div class="row" style="margin-left:30px;margin-top:30px;  ">
                        <div class="scrollable-table2">
                            <asp:Table ID="CombinationsTab" runat="server" Width="80%" HorizontalAlign="Left" CssClass="table table-bordered" >
                                   <asp:TableHeaderRow CssClass="aspNetTable">
                                       <asp:TableHeaderCell><small>Game Code</small></asp:TableHeaderCell>
                                       <asp:TableHeaderCell><small>Combination</small></asp:TableHeaderCell>
                                       <asp:TableHeaderCell><small>Bet Limit</small></asp:TableHeaderCell>
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
    if (window.devicePixelRatio === 1.5 && window.innerWidth === 2560 && window.innerHeight === 1440) {
        // If it is, set the zoom level of the document to 83.33% (equivalent to 125%)
        document.body.style.zoom = "83.33%";
    }
    if (window.devicePixelRatio === 1) {
        // If it is, set the zoom level of the document to 125%
        document.body.style.zoom = "125%";
    }
</script>   



