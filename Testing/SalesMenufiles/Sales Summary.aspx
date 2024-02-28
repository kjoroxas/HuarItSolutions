<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales Summary.aspx.cs" Inherits="HuarITSolutions.SalesMenufiles.Sales_Summary" %>
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
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf-autotable/3.8.2/jspdf.plugin.autotable.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/5.4.1/papaparse.min.js"></script> 
</head>
<body>
    <form id="form1" runat="server">
                <div>
                <div class="card specificcard specificcard2" >
                  <div class="card-body">
                    <h5 class="subtitle"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg> Sales Summary</h5>
                      <div class="row">
                          <div class="col-3 pcversion">
                              <div class="row " style="margin-bottom:20px;">

                                    <asp:TextBox ID="drawDate" CssClass="textbox" runat="server" TextMode="Date"></asp:TextBox>
                              </div>
                             <div class="row">
                                 <asp:ListBox ID="ListBox1" runat="server" CssClass="listbox1" ></asp:ListBox>
                                    <asp:DropDownList ID="Active" runat="server" AutoPostBack="true" CssClass="ActiveDropDown" >
                                        <asp:ListItem Value="Active">Active </asp:ListItem>
                                        <asp:ListItem Value="Inactive">Inactive </asp:ListItem>
                                    </asp:DropDownList><br />
                              </div>
                            <div class="row">
                                 <asp:Button ID="Button1" CSSClass="viewBtnclass" runat="server" Text="View Outlets" Width="500px" Height="40px" />
                              </div>
                             <div class="row">
                                  <asp:Button ID="Button2" CSSClass="viewBtnclass" runat="server" Text="Overall Summary" Width="500px" Height="40px" />
                              </div>  
                          </div>
                         <div class="col-8">

                             <div class="tablestyle2">
                                <table id="salesSummaryTable" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>GAME CODE</th>
                                                <th>GROSS</th>
                                                <th>HITS</th>
                                                <th>PAYOUT</th>
                                                <th>BACKPAY</th>
                                                <th>COMMISSION</th>
                                                <th>NET AMOUNT</th>
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
                                      <asp:Button ID="Button6" CSSClass="viewBtnclass" runat="server" Text="Download as CSV" Width="300px" Height="40px" />
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
<script>
    window.jsPDF = window.jspdf.jsPDF;
    $(document).ready(function () {
        var table = $('#salesSummaryTable').DataTable({
            "pageLength": 9,
            "lengthChange": false,
            ajax: 'salessummary.json',
            columns: [
                { data: "Game Code" },
                { data: 'Gross pay' },
                { data: 'Hits' },
                { data: 'Payout' },
                { data: 'Back Pay' },
                { data: 'Commission' },
                { data: 'Net Amount' }
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
            doc.text('Sales Summary', pageWidth / 2, 40, { align: 'center' });
            doc.text('Outlet Code - Date', pageWidth / 2, 60, { align: 'center' });

            // Prepare table data from DataTable
            var data = [];
            table.rows().every(function (rowIdx, tableLoop, rowLoop) {
                var rowData = this.data();
                data.push([
                    rowData['Game Code'],
                    rowData['Gross pay'],
                    rowData['Hits'],
                    rowData['Payout'],
                    rowData['Back Pay'],
                    rowData['Commission'],
                    rowData['Net Amount']
                ]);
            });

            // Add table to PDF
            doc.autoTable({
                startY: 70,
                head: [['Game Code', 'Gross pay', 'Hits', 'Payout', 'Back Pay', 'Commission', 'Net Amount']],
                body: data
            });

            // Save or display the PDF
            doc.save('SalesSummary.pdf');
        });
    });
</script>