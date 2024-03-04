<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WinningTransactionMenu.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.WinningTransactionFiles.WinningTransaction1" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
               <div class="card-body">
                 
                   <div class="row">
                       <div class="col-3 pcversion">

                          <div class="row" style=" margin-bottom:20px;">
                                <label class="subheader" style=" margin-top:3px; margin-left:-10px;">Draw Date</label><br />
                                 <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
                           </div>
                            <div class="row " style="margin-top:30px; margin-bottom:20px;">
                                                              <label class="subheader" style=" margin-top:3px; margin-left:-10px;">Game Code</label><br />
                                <asp:DropDownList ID="gameCode" runat="server" AutoPostBack="true" CssClass="salesgameCodeDropDown" >
                                    <asp:ListItem Value="0">Select Game Code</asp:ListItem>
                                </asp:DropDownList><br />
                           </div>
                            <div class="row " style="margin-top:30px; margin-bottom:20px;">
                                <label class="subheader" style=" margin-top:3px; margin-left:-10px;">Winning Combinations</label><br />
                                 <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server" TextMode="SingleLine"></asp:TextBox>
                           </div>
                         <div class="row">
                              <asp:Button ID="Button1" CSSClass="viewBtnclass" runat="server" Text="Save" Width="500px" Height="40px" />
                           </div>
                          <div class="row">
                               <asp:Button ID="Button2" CSSClass="viewBtnclass" runat="server" Text="View List" Width="500px" Height="40px" />
                           </div>  
                       </div>
                      <div class="col-8">
                                                       <div class="tablestyle4">
                                <table id="winningtransactiontable" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>DRAW DATE</th>
                                                <th>OUTLET CODE</th>
                                                <th>GAME CODE</th>
                                                <th>COMBINATION</th>
                                                <th>BET AMOUNT</th>
                                                <th>PRIZE</th>
                                                <th>TRANSACTION ID</th>
                                                <th>TIME ENTRY</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>

                                            </tr>
                                        </tbody>

                                    </table>
                                    </div>
                                <div class="row" style=" margin-left: 30px !important; ">
                              <div class="col-3  " style=" margin-right:30px;">
                                  <asp:Button ID="pdfButton" CSSClass="viewBtnclass" runat="server" Text="Download as PDF" Width="300px" Height="40px" />
                                  </div>
                              <div class="col-3 ">
                                  <asp:Button ID="csvButton" CSSClass="viewBtnclass" runat="server" Text="Download as CSV" Width="300px" Height="40px" />
                                  </div>
                
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
    <%: Scripts.Render("~/Scripts/bootstrap.bundle.js") %>    
</asp:PlaceHolder>
<script>
    window.jsPDF = window.jspdf.jsPDF;
    $(document).ready(function () {
        var table = $('#winningtransactiontable').DataTable({  // Define 'table' here
            "pageLength": 6,
            "lengthChange": false,
            ajax: 'winningtransaction.json',
            columns: [
                { data: 'DRAW DATE' },
                { data: 'OUTLET CODE' },
                { data: 'GAME CODE' },
                { data: 'COMBINATION' },
                { data: 'BET AMOUNT' },
                { data: 'PRIZE' },
                { data: 'TRANSACTION ID' },
                { data: 'TIME ENTRY' }
            ]
        });

        $('#pdfButton').on('click', function () {
            var doc = new jsPDF();
            doc.setFontSize(12);
            // Get page width
            var pageWidth = doc.internal.pageSize.getWidth();

            // Add custom header text
            doc.text('Small Town Lottery', pageWidth / 2, 10, { align: 'center' });
            doc.text('TRENTO GAMING AND LEISURE CORP.', pageWidth / 2, 20, { align: 'center' });
            doc.text('Gen. Santos City, Ph', pageWidth / 2, 30, { align: 'center' });
            doc.text('Winner List', pageWidth / 2, 50, { align: 'center' });
            doc.text('GameCode - Date', pageWidth / 2, 60, { align: 'center' });
            // Prepare table data from DataTable
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push({
                    'Draw Date': rowData['DRAW DATE'],
                    'Outlet Code': rowData['OUTLET CODE'],
                    'Game Code': rowData['GAME CODE'],
                    'Combination': rowData['COMBINATION'],
                    'Bet Amount': rowData['BET AMOUNT'],
                    'Prize': rowData['PRIZE'],
                    'Transaction ID': rowData['TRANSACTION ID'],
                    'Time Entry': rowData['TIME ENTRY']
                });
            });

            // Add table to PDF
            doc.autoTable({
                startY: 70,
                head: [['Draw Date', 'Outlet Code', 'Game Code', 'Combination', 'Bet Amount', 'Prize', 'Transaction ID', 'Time Entry']],
                body: data.map(row => [row['Draw Date'], row['Outlet Code'], row['Game Code'], row['Combination'], row['Bet Amount'], row['Prize'], row['Transaction ID'], row['Time Entry']])
            });

            // Save or display the PDF
            doc.save('DataTable.pdf');
        });
        $('#csvButton').on('click', function () {
            // Prepare table data from DataTable
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                // Format the 'Draw Date' as a string
                var drawDate = new Date(rowData['DRAW DATE']).toISOString();
                data.push({
                    'Draw Date': drawDate,
                    'Outlet Code': rowData['OUTLET CODE'],
                    'Game Code': rowData['GAME CODE'],
                    'Combination': rowData['COMBINATION'],
                    'Bet Amount': rowData['BET AMOUNT'],
                    'Prize': rowData['PRIZE'],
                    'Transaction ID': rowData['TRANSACTION ID'],
                    'Time Entry': rowData['TIME ENTRY']
                });
            });

            // Convert data to CSV
            var csv = Papa.unparse(data);

            // Create a Blob with the CSV data and download it
            var blob = new Blob([csv], { type: 'text/csv;charset=utf-8;' });
            var link = document.createElement("a");
            if (link.download !== undefined) { // feature detection
                // Browsers that support HTML5 download attribute
                var url = URL.createObjectURL(blob);
                link.setAttribute("href", url);
                link.setAttribute("download", "DataTable.csv");
                link.style.visibility = 'hidden';
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
            }
        });

    });

    

</script>


