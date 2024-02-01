<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="highcombi.aspx.cs" Inherits="HuarITSolutions.GameSettingsMenu.highcombi" %>
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
                  <div class="card-body" id="CSNG">
                        <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 512 512"><path fill="currentColor" d="M495.24 267.592L445.066 41.083A32.038 32.038 0 0 0 406.9 16.76L180.393 66.934a32 32 0 0 0-24.322 38.166l21.021 94.9H48a32.036 32.036 0 0 0-32 32v232a32.036 32.036 0 0 0 32 32h232a32.036 32.036 0 0 0 32-32V340.957l158.917-35.2a32.038 32.038 0 0 0 24.323-38.165M280 464H48V232h136.181l22.063 99.606a32.031 32.031 0 0 0 31.18 25.092a32.3 32.3 0 0 0 6.984-.769l35.6-7.886L280.02 464Zm184-189.487l-226.513 50.173l-50.173-226.51L413.824 48l50.193 226.505Z"/><path fill="currentColor" d="M80 264h40v40H80zm0 128h40v40H80zm128 0h40v40h-40zm-64-64h40v40h-40zm81.456-205.433l39.054-8.644l8.644 39.055l-39.054 8.644zm152.672 97.223l39.054-8.65l8.65 39.054l-39.054 8.65zm-76.324-48.649l39.053-8.65l8.65 39.053l-39.052 8.65z"/></svg> High-Winning Combinations</h5>
                    <div class="row">
                        <div class="col-3">
                            <label><small>Game Code</small></label><br />
                            <select id="codeoper" name="codeoper"  style="width:230px; height:30px;">
                              <option value="value">value</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <label><small>Combination</small></label><br />
                            <input type="text" id="combine" name="combine" required/><br />
                        </div>
                        
                        <div class="col-1">
                                <br />
                                <asp:Button runat="server" id="viewton" Text="View" Width="90px" />
                        </div>
                        <div class="col-1">
                            <br />
                            <asp:Button runat="server" Text="Save" Width="90px" />
                        </div>

                    </div>
                    <div  style="height:300px;">
                        <div class="row" style="margin-left:30px;margin-top:30px;  ">
                            <asp:Table ID="highcombitab" runat="server" Width="80%" HorizontalAlign="Left" CssClass="table table-bordered" >
                                   <asp:TableHeaderRow>
                                       <asp:TableHeaderCell><small>Game Code</small></asp:TableHeaderCell>
                                       <asp:TableHeaderCell><small>Combination</small></asp:TableHeaderCell>
                                   </asp:TableHeaderRow>
                                 <asp:TableRow >
                                   <asp:TableCell></asp:TableCell>
                                   <asp:TableCell></asp:TableCell>
                                 </asp:TableRow>


                            </asp:Table>
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