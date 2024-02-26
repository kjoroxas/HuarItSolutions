<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WinningTransaction1.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.WinningTransactionFiles.WinningTransaction1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <div class="card specificcard specificcard2" >
               <div class="card-body">
                 
                   <div class="row">
                       <div class="col-3 pcversion">

                          <div class="row" style="margin-top:40px; margin-bottom:20px;">
                              <label class="subheader" style=" margin-top:3px;">Game Code</label><br />
                                <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="salesgameCodeDropDown" >
                                    <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                                </asp:DropDownList><br />
                           </div>
                            <div class="row " style="margin-top:30px; margin-bottom:20px;">
                                <label class="subheader" style=" margin-top:3px;">Draw Date</label><br />
                                 <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
                           </div>
                            <div class="row " style="margin-top:30px; margin-bottom:20px;">
                                <label class="subheader" style=" margin-top:3px;">Winning Combinations</label><br />
                                 <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" TextMode="SingleLine"></asp:TextBox>
                           </div>
                         <div class="row">
                              <asp:Button ID="Button1" CSSClass="viewBtnclass" runat="server" Text="Save" Width="500px" Height="40px" />
                           </div>
                          <div class="row">
                               <asp:Button ID="Button2" CSSClass="viewBtnclass" runat="server" Text="View List" Width="500px" Height="40px" />
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
<asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/jquery-3.4.1.min.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    
</asp:PlaceHolder>
