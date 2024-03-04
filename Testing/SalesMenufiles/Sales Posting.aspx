<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales Posting.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Sales_Posting" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
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
             <div class="card specificcard" >
              <div class="card-body">
                   <nav>
                       <div class="nav nav-tabs" id="nav-tab" role="tablist">
                         <button class="nav-link active" id="nav-sales-Posting" data-bs-toggle="tab" data-bs-target="#nav-salesPosting" type="button" role="tab" aria-controls="nav-salesPosting" aria-selected="true">Sales Posting</button>
                         <button class="nav-link" id="nav-unclaimed-Winning" data-bs-toggle="tab" data-bs-target="#nav-unclaimedWinning" type="button" role="tab" aria-controls="nav-unclaimedWinning" aria-selected="false">Unclaimed Winning</button>
                 
                       </div>
                     </nav>
                  <div class="tab-content" id="nav-tabContent">

                     <div class="tab-pane fade show active" id="nav-salesPosting" role="tabpanel" aria-labelledby="nav-salesPosting">
                         <iframe src="SalesPostingFiles\SalesPostingMenu.aspx" scrolling="no" class="specifc"></iframe>
                     </div>
                     <div class="tab-pane fade" id="nav-unclaimedWinning" role="tabpanel" aria-labelledby="nav-unclaimedWinning">

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
