<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BetSummaryMenu.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.BetSummaryFIles.BetSummary1" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"  />
    <title></title>
              <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- DataTables CSS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
        <!-- DataTables JavaScript -->
        <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.8.2/jspdf.plugin.autotable.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
            <div class="row">
        <div class="col-3 pcversion">
            <div class="row " style="margin-bottom:20px; margin-top:50px; ">
              <label class="subheader" style="margin-left:-10px;margin-top:3px;">Draw Date</label><br />
              <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
            </div>
           <div class="row">
                    <label class="subheader" style=" margin-top:20px; margin-left:-10px;">Game Code</label><br />
                    <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="gameCodeDropDown3" OnSelectedIndexChanged="gameCode_SelectedIndexChanged" >
                        <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                    </asp:DropDownList><br />
            </div>
          <div class="row" style="margin-bottom:20px; margin-top:50px; ">
               <asp:Button ID="Button3" CSSClass="viewBtnclass" runat="server" Text="View" Width="500px" Height="40px"  />
            </div>
        </div>
       <div class="col-8">

           <div class="tablestyle2">
              <table id="betsummaryMenu" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                          <tr>
                              <th>Combination</th>
                              <th>Bet Amount</th>

                          </tr>
                      </thead>
                      <tbody>
                            <tr>

                            </tr>
                      </tbody>

                  </table>

                  </div>
                               <div class="row" style=" margin-left: 30px !important; ">
                        <div class="col-3 " style=" margin-right:30px!important;">
                            <asp:Button ID="pdfButton" CSSClass="viewBtnclass" runat="server" Text="Download as PDF" Width="300px" Height="40px" />
                            </div>
                        <div class="col-3 ">
                            <asp:Button ID="csvButton" CSSClass="viewBtnclass" runat="server" Text="Download as CSV" Width="300px" Height="40px" />
                            </div>
                
                    </div>

</div>

</div>
    </form>
</body>
</html>
<asp:PlaceHolder runat="server">

    <%: Scripts.Render("~/Scripts/bootstrap.js") %>
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    
</asp:PlaceHolder>
<script>
    window.jsPDF = window.jspdf.jsPDF;
    $(document).ready(function () {
        var table = $('#betsummaryMenu').DataTable({
            "pageLength": 9,
            "lengthChange": false,
            ajax: 'betsummary.json',
            columns: [
                { data: 'COMBINATION' },
                { data: 'BET AMOUNT' }
            ]
        });

        $('#pdfButton').on('click', function () {
            var doc = new jsPDF();
            doc.setFontSize(12);
            var pageWidth = doc.internal.pageSize.getWidth();

            doc.text('Small Town Lottery', pageWidth / 2, 10, { align: 'center' });
            doc.text('TRENTO GAMING AND LEISURE CORP.', pageWidth / 2, 20, { align: 'center' });
            doc.text('Gen. Santos City, Ph', pageWidth / 2, 30, { align: 'center' });
            doc.text('Winner List', pageWidth / 2, 50, { align: 'center' });
            doc.text('GameCode - Date', pageWidth / 2, 60, { align: 'center' });

            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push({
                    'Combination': rowData['COMBINATION'],
                    'Bet Amount': rowData['BET AMOUNT']
                });
            });

            doc.autoTable({
                startY: 70,
                head: [['Combination', 'Bet Amount']],
                body: data.map(row => [row['Combination'], row['Bet Amount']])
            });

            doc.save('DataTable.pdf');
        });

        $('#csvButton').on('click', function () {
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push({
                    'Combination': rowData['COMBINATION'],
                    'Bet Amount': rowData['BET AMOUNT']
                });
            });

            var csvContent = 'Combination,Bet Amount\n';
            data.forEach(function (rowArray) {
                var row = rowArray['Combination'] + ',' + rowArray['Bet Amount'];
                csvContent += row + '\r\n';
            });

            var blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
            var link = document.createElement("a");
            var url = URL.createObjectURL(blob);
            link.setAttribute("href", url);
            link.setAttribute("download", "DataTable.csv");
            link.style.visibility = 'hidden';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        });
    });

</script>

