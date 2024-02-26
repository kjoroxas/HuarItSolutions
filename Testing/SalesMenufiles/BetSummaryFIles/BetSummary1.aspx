<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BetSummary1.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.BetSummaryFIles.BetSummary1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"  />
    <title></title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />



</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div class="row"  style="margin-left:10px;">
                
                <div class="col-3 margin center">
                    <label class="subheader" style="margin-top:3px;">Draw Date</label><br />
                    <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col-3 margin center">
                    <label class="subheader" style="margin-left:30px; margin-top:3px;">Game Code</label><br />
                    <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="gameCodeDropDown" >
                        <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                    </asp:DropDownList><br />
                </div>          
                <div class="col-1 space">
                    <br />
                <asp:Button ID="View" CSSClass="viewBtnclass" runat="server" Text="View" Width="100px" Height="40px" />
                </div>
            </div>
            <div class="row">
                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="426px" Width="896px"></rsweb:ReportViewer>
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
