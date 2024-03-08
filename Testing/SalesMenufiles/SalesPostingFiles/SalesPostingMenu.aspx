<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesPostingMenu.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.SalesPostingFiles.Sales_Posting1" %>

<webopt:bundlereference runat="server" path="~/Content/css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <div>

             <div class="card-body">
  
    <div class="row">
        <div class="col-sm-3  pcversion">

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
       <div class="col-sm-8">
                                        <div class="tablestyle4">
                 <table id="salespostingTable" class="table table-striped table-bordered table-responsive" style="width:100%">
                         <thead>
                             <tr>
                                 <th class="center-header ">GAME CODE</th>
                                 <th class="center-header ">GROSS SALES</th>
                                 <th class="center-header ">HITS</th>
                                 <th class="center-header ">PAYOUT</th>
                                 <th class="center-header ">COMMISSION</th>
                                 <th class="center-header ">BACKPAY</th>
                                 <th class="center-header ">NET SALES</th>
                                 <th class="center-header ">OUTLET CODE</th>
                                 <th class="center-header ">GROUP ACCOUNT</th>
                                 <th class="center-header ">DRAW DATE</th>
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
        var table = $('#salespostingTable').DataTable({
            "pageLength": 6,
            "lengthChange": false,
            ajax: 'salesposting.json',
            columns: [
                { data: 'GAME CODE' },
                { data: 'GROSS SALES' },
                { data: 'HITS' },
                { data: 'PAYOUT' },
                { data: 'COMMISSION' },
                { data: 'BACKPAY' },
                { data: 'NET SALES' },
                { data: 'OUTLET CODE' },
                { data: 'GROUP ACCOUNT' },
                { data: 'DRAW DATE' }
            ]
        });

        $('#pdfButton').on('click', function () {
            var doc = new jsPDF('landscape');
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
                    'GAME CODE': rowData['GAME CODE'],
                    'GROSS SALES': rowData['GROSS SALES'],
                    'HITS': rowData['HITS'],
                    'PAYOUT': rowData['PAYOUT'],
                    'COMMISSION': rowData['COMMISSION'],
                    'BACKPAY': rowData['BACKPAY'],
                    'NET SALES': rowData['NET SALES'],
                    'OUTLET CODE': rowData['OUTLET CODE'],
                    'GROUP ACCOUNT': rowData['GROUP ACCOUNT'],
                    'DRAW DATE': rowData['DRAW DATE']
                });
            });

            doc.autoTable({
                startY: 70,
                head: [['GAME CODE', 'GROSS SALES', 'HITS', 'PAYOUT', 'COMMISSION', 'BACKPAY', 'NET SALES', 'OUTLET CODE', 'GROUP ACCOUNT', 'DRAW DATE']],
                body: data.map(row => [row['GAME CODE'], row['GROSS SALES'], row['HITS'], row['PAYOUT'], row['COMMISSION'], row['BACKPAY'], row['NET SALES'], row['OUTLET CODE'], row['GROUP ACCOUNT'], row['DRAW DATE']])
            });

            doc.save('DataTable.pdf');
        });

        $('#csvButton').on('click', function () {
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push({
                    'GAME CODE': rowData['GAME CODE'],
                    'GROSS SALES': rowData['GROSS SALES'],
                    'HITS': rowData['HITS'],
                    'PAYOUT': rowData['PAYOUT'],
                    'COMMISSION': rowData['COMMISSION'],
                    'BACKPAY': rowData['BACKPAY'],
                    'NET SALES': rowData['NET SALES'],
                    'OUTLET CODE': rowData['OUTLET CODE'],
                    'GROUP ACCOUNT': rowData['GROUP ACCOUNT'],
                    'DRAW DATE': rowData['DRAW DATE']
                });
            });

            var csvContent = 'GAME CODE,GROSS SALES,HITS,PAYOUT,COMMISSION,BACKPAY,NET SALES,OUTLET CODE,GROUP ACCOUNT,DRAW DATE\n';
            data.forEach(function (rowArray) {
                var row = rowArray['GAME CODE'] + ',' + rowArray['GROSS SALES'] + ',' + rowArray['HITS'] + ',' + rowArray['PAYOUT'] + ',' + rowArray['COMMISSION'] + ',' + rowArray['BACKPAY'] + ',' + rowArray['NET SALES'] + ',' + rowArray['OUTLET CODE'] + ',' + rowArray['GROUP ACCOUNT'] + ',' + rowArray['DRAW DATE'];
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