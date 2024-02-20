<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BetSummary1.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.BetSummaryFIles.BetSummary1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            <label class="subheader" ><small>Draw Date</small></label><br />
            <asp:TextBox ID="drawDate" runat="server" ReadOnly="True" ></asp:TextBox>


        </div>
    </form>
</body>
</html>
<asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/Scripts/jquery-3.4.1.min.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    
</asp:PlaceHolder>
<script>
    $("#<%=drawDate.ClientID %>").datepicker({
    showOn: 'button',
    buttonImage: "<%=Request.ApplicationPath %>/images/calendarIcon.gif",
    buttonImageOnly: true
});

    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(<%=drawDate.ClientID %>);

</script>