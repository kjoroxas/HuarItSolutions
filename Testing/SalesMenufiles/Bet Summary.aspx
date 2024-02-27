<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bet Summary.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Bet_Summary" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card specificcard" >
             <div class="card-body">
                 
                    <nav>
                      <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <button class="nav-link active" id="nav-bet-Summary" data-bs-toggle="tab" data-bs-target="#nav-betSummary" type="button" role="tab" aria-controls="nav-betSummary" aria-selected="true">Bet Summary</button>
                        <button class="nav-link" id="nav-thermal-Sales" data-bs-toggle="tab" data-bs-target="#nav-thermalSales" type="button" role="tab" aria-controls="nav-thermalSales" aria-selected="false">Thermal Sales</button>
                        
                      </div>
                    </nav>
                 <div class="tab-content" id="nav-tabContent">

                    <div class="tab-pane fade show active" id="nav-betSummary" role="tabpanel" aria-labelledby="nav-betSummary">
                        <iframe src="BetSummaryFIles\BetSummary1.aspx" scrolling="no" class="specifc"></iframe>
                    </div>
                    <div class="tab-pane fade" id="nav-thermalSales" role="tabpanel" aria-labelledby="nav-thermalSale">

                    </div>
                    <div class="tab-pane fade" id="nav-thermalSales" role="tabpanel" aria-labelledby="nav-thermalSale">...</div>
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