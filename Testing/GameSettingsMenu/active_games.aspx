<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="active_games.aspx.cs" Inherits="HuarITSolutions.active2" %>
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
             <h5 class="card-title"><svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" viewBox="0 0 24 24"><g fill="none"><path d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z"/><path fill="currentColor" d="M12 3a1 1 0 0 1 1 1v1h1.5a7.5 7.5 0 0 1 0 15h-5a7.5 7.5 0 0 1 0-15H11V4a1 1 0 0 1 1-1m2.5 4h-5a5.5 5.5 0 1 0 0 11h5a5.5 5.5 0 1 0 0-11m1 3a1 1 0 0 1 .993.883L16.5 11v.5h.5a1 1 0 0 1 .117 1.993L17 13.5h-.5v.5a1 1 0 0 1-1.993.117L14.5 14v-.5H14a1 1 0 0 1-.117-1.993L14 11.5h.5V11a1 1 0 0 1 1-1m-7 0a2.5 2.5 0 1 1 0 5a2.5 2.5 0 0 1 0-5m0 2a.5.5 0 1 0 0 1a.5.5 0 0 0 0-1"/></g></svg> Active Game</h5>
                 <div class="row" id="firstrow">
                     <div class="col-6 ">
                           
                         <asp:DropDownList ID="activeGames" OnSelectedIndexChanged="gameCode_SelectedIndexChanged" runat="server" AutoPostBack="true">
                            <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                        </asp:DropDownList><br />
                        <asp:Table ID="activegame" runat="server" Width="70%" HorizontalAlign="Left" CssClass="table table-bordered">
                               <asp:TableHeaderRow>
                                   <asp:TableHeaderCell>Game Code</asp:TableHeaderCell>
                                   <asp:TableHeaderCell>Print Code</asp:TableHeaderCell>

                               </asp:TableHeaderRow>

                        </asp:Table>
                                               
                       </div>
                    <div class="col-3">
                       <label><small>Game Code</small></label><br />
                        <asp:TextBox ID="gameCode" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="GameCode"></asp:TextBox><br />

                       <label><small>Print Code</small></label><br />
                        <asp:TextBox ID="printCode" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="PrintCode"></asp:TextBox><br />
                        <input type="checkbox"><label><small>Local Game</small></label><br />

                       <label><small>Win Value(Low)</small></label><br />
                        <asp:TextBox ID="lowBet" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="lowBet"></asp:TextBox><br />
                        
                       <label><small>Bet Limit (0-31)</small></label><br />
                        <asp:TextBox ID="lowBetLimit" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="lowBetLimit"></asp:TextBox><br />

                       <label><small>Win Value(High)</small></label><br />
                         <asp:TextBox ID="highBet" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="highBet"></asp:TextBox><br />

                       <label><small>Bet Limit (32-99)</small></label><br />
                        <asp:TextBox ID="highBetLimit" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="highBetLimit"></asp:TextBox><br />

                    </div>
                    <div class="col-3">
                       <label><small>Admin Commission</small></label><br />
                        <asp:TextBox ID="AdminCommission" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="commAdmin"></asp:TextBox><br />
                       
                        <label><small>Back Pay(Admin)</small></label><br />
                        <asp:TextBox ID="AdminPay" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="adPay"></asp:TextBox><br />          

                       <label><small>Coor Commission</small></label><br />
                        <asp:TextBox ID="CoorCommission" ValidateRequestMode="Disabled" type="text" runat="server"  placeholder="commCoor"></asp:TextBox><br />

                       <label><small>Back Pay(Coor)</small></label><br />
                        <asp:TextBox ID="coorPay" ValidateRequestMode="Disabled" type="text" runat="server" placeholder="coorPay"></asp:TextBox><br />

                    </div>
                    </div>
                    <div class="row" >
                        <div class="col">
                            <br />
                            <asp:Button runat="server" id="viewton" Text="View" Height="40px" Width="500px" OnClick="viewBtn_click"/>
                        </div>
                        <div class="col">
                            <br />
                            <asp:Button runat="server" Text="Save" Height="40px" Width="300px" OnClick="saveBtn_click" />
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
</asp:PlaceHolder>



