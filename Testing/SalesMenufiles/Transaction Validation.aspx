<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction Validation.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Transaction_Validation" %>
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
    <div class="card specificcard specificcard2" >
       <div class="card-body">
         <h5 class="subtitle "><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="none"><path d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z"/><path fill="currentColor" d="M12 3a1 1 0 0 1 1 1v1h1.5a7.5 7.5 0 0 1 0 15h-5a7.5 7.5 0 0 1 0-15H11V4a1 1 0 0 1 1-1m2.5 4h-5a5.5 5.5 0 1 0 0 11h5a5.5 5.5 0 1 0 0-11m1 3a1 1 0 0 1 .993.883L16.5 11v.5h.5a1 1 0 0 1 .117 1.993L17 13.5h-.5v.5a1 1 0 0 1-1.993.117L14.5 14v-.5H14a1 1 0 0 1-.117-1.993L14 11.5h.5V11a1 1 0 0 1 1-1m-7 0a2.5 2.5 0 1 1 0 5a2.5 2.5 0 0 1 0-5m0 2a.5.5 0 1 0 0 1a.5.5 0 0 0 0-1"/></g></svg> Transaction Validation</h5>
                    
           <div class="row">
               <div class="col-3 pcversion">
                   <div class="row">
                    <label class="subheader" style=" margin-top:3px; margin-left:-10px;">Draw Date</label><br />
                        <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox><br />

                        <label class="subheader" style=" margin-top:33px;  margin-left:-10px;">Transaction Number</label><br />
                          <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server"></asp:TextBox><br />
                            <label class="subheader" style=" margin-top:33px;  margin-left:-10px;">Outlet Code</label><br />
                            <asp:TextBox ID="TextBox2" CssClass="textbox" runat="server"></asp:TextBox><br />
                            <asp:Button ID="Button1" CSSClass="viewBtnclass" runat="server" Text="Search" Width="500px" Height="40px" />
                             <asp:Button ID="Button4" CSSClass="viewBtnclass" runat="server" Text="Delete" Width="500px" Height="40px" />
                       </div>
                   </div>
       <div class="col-8">
                                        <div class="tablestyle4">
                 <table id="validationtable" class="table table-striped table-bordered" style="width:100%">
                         <thead>
                             <tr>
                                 <th class="center-header ">DRAW DATE</th>
                                 <th class="center-header ">OUTLET CODE</th>
                                 <th class="center-header ">TRANSACTION ID</th>
                                 <th class="center-header ">TIME ESTIMATED</th>
                                 <th class="center-header ">DRAW CODE</th>
                                 <th class="center-header ">COMBINATION</th>
                                 <th class="center-header ">AMOUNT</th>
                                 <th class="center-header ">REMARKS/WIN VALUE</th>
                                 <th class="center-header ">DELETED ON</th>

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
        var table = $('#validationtable').DataTable({
            "pageLength": 6,
            "lengthChange": false,
            ajax: 'validation.json',
            columns: [
                { data: 'DRAW DATE' },
                { data: 'OUTLET CODE' },
                { data: 'TRANSACTION ID' },
                { data: 'TIME ESTIMATED' },
                { data: 'DRAW CODE' },
                { data: 'COMBINATION' },
                { data: 'AMOUNT' },
                { data: 'REMARKS/WIN VALUE' },
                { data: 'DELETED ON' }
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
                    'Draw Date': rowData['DRAW DATE'],
                    'Outlet Code': rowData['OUTLET CODE'],
                    'Transaction ID': rowData['TRANSACTION ID'],
                    'Time Estimated': rowData['TIME ESTIMATED'],
                    'Draw Code': rowData['DRAW CODE'],
                    'Combination': rowData['COMBINATION'],
                    'Amount': rowData['AMOUNT'],
                    'Remarks/Win Value': rowData['REMARKS/WIN VALUE'],
                    'Deleted On': rowData['DELETED ON']
                });
            });

            doc.autoTable({
                startY: 70,
                head: [['Draw Date', 'Outlet Code', 'Transaction ID', 'Time Estimated', 'Draw Code', 'Combination', 'Amount', 'Remarks/Win Value', 'Deleted On']],
                body: data.map(row => [row['Draw Date'], row['Outlet Code'], row['Transaction ID'], row['Time Estimated'], row['Draw Code'], row['Combination'], row['Amount'], row['Remarks/Win Value'], row['Deleted On']])
            });

            doc.save('DataTable.pdf');
        });

        $('#csvButton').on('click', function () {
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push({
                    'Draw Date': rowData['DRAW DATE'],
                    'Outlet Code': rowData['OUTLET CODE'],
                    'Transaction ID': rowData['TRANSACTION ID'],
                    'Time Estimated': rowData['TIME ESTIMATED'],
                    'Draw Code': rowData['DRAW CODE'],
                    'Combination': rowData['COMBINATION'],
                    'Amount': rowData['AMOUNT'],
                    'Remarks/Win Value': rowData['REMARKS/WIN VALUE'],
                    'Deleted On': rowData['DELETED ON']
                });
            });

            var csvContent = 'Draw Date,Outlet Code,Transaction ID,Time Estimated,Draw Code,Combination,Amount,Remarks/Win Value,Deleted On\n';
            data.forEach(function (rowArray) {
                var row = rowArray['Draw Date'] + ',' + rowArray['Outlet Code'] + ',' + rowArray['Transaction ID'] + ',' + rowArray['Time Estimated'] + ',' + rowArray['Draw Code'] + ',' + rowArray['Combination'] + ',' + rowArray['Amount'] + ',' + rowArray['Remarks/Win Value'] + ',' + rowArray['Deleted On'];
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