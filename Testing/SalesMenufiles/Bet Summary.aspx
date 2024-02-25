﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bet Summary.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Bet_Summary" %>
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
                 <h5 class="subtitle "><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="none"><path d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z"/><path fill="currentColor" d="M12 3a1 1 0 0 1 1 1v1h1.5a7.5 7.5 0 0 1 0 15h-5a7.5 7.5 0 0 1 0-15H11V4a1 1 0 0 1 1-1m2.5 4h-5a5.5 5.5 0 1 0 0 11h5a5.5 5.5 0 1 0 0-11m1 3a1 1 0 0 1 .993.883L16.5 11v.5h.5a1 1 0 0 1 .117 1.993L17 13.5h-.5v.5a1 1 0 0 1-1.993.117L14.5 14v-.5H14a1 1 0 0 1-.117-1.993L14 11.5h.5V11a1 1 0 0 1 1-1m-7 0a2.5 2.5 0 1 1 0 5a2.5 2.5 0 0 1 0-5m0 2a.5.5 0 1 0 0 1a.5.5 0 0 0 0-1"/></g></svg> Bet Summary</h5>
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