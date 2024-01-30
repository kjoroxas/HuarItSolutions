<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="low_winning_combinations.aspx.cs" Inherits="HuarITSolutions.specifiles.WebForm1" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
                <div class="card " style="width: 80rem; height:32rem; ">
                  <div class="card-body">
                        <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="M23 12c0 6.08-4.92 11-11 11S1 18.08 1 12S5.92 1 12 1s11 4.92 11 11M13 4.06c2.13.27 4.07 1.39 5.37 3.1l1.74-1A10 10 0 0 0 13 2zm-9.11 2.1l1.74 1A8.022 8.022 0 0 1 11 4.06V2a10 10 0 0 0-7.11 4.16m-1 9.94l1.73-1a8.03 8.03 0 0 1 0-6.2l-1.73-1a9.864 9.864 0 0 0 0 8.2M11 19.94a8.022 8.022 0 0 1-5.37-3.1l-1.74 1A10 10 0 0 0 11 22zm9.11-2.1l-1.74-1a8.022 8.022 0 0 1-5.37 3.1v2c2.85-.29 5.44-1.78 7.11-4.1m1-1.74c1.19-2.6 1.19-5.6 0-8.2l-1.73 1a8.03 8.03 0 0 1 0 6.2zM15 12l-3-5l-3 5l3 5z"/></svg> Low-Winning Combinations</h5>
                    <div class="row">
                        <div class="col-3">
                            <label><small>Game Code</small></label><br />
                            <select id="gameCode" name="gameCode"  style="width:230px; height:30px;">
                              <option value="value">value</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <label><small>Combination</small></label><br />
                            <asp:TextBox ID="combination" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="Combination"></asp:TextBox>
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
                            <asp:Table ID="lowcombitab" runat="server" Width="80%" HorizontalAlign="Left" CssClass="table table-bordered" >
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