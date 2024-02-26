<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="HuarITSolutions.Catalogue2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="catalogtitle" contenteditable="false"><center>Catalog</center></div>
       <div class="container" id="catalogcontainer">
                
     
                    <div id="catalogbuttons" class="container mt-10" draggable="true" contenteditable="false">
                        <div id="catalogtitle2" contenteditable="false"><center>Catalog</center></div>
                        <div class="row catalogrow" >

                        <!-- Circular Buttons -->
                        <div class="col-2 mobilerow marginforleft">

                            <asp:Button runat="server" CssClass="filebutton" OnClick="Filesredirectiom" />
                                <h6 class="catalogtext6">Files </h6>
                        </div>
                        <div class="col-2 mobilerow">
                            <asp:Button runat="server" CssClass="salesbutton" OnClick="Salesredirectiom" />
                            <h6 class="catalogtext2">Sales</h6>
                        </div>
                        <div class="col-2 mobilerow marginforleft">
                            <asp:Button runat="server" CssClass="collectionsbutton"  />
                            <h6 class="catalogtext3">Collections</h6>
                        </div>
                        <div class="col-2 mobilerow">
                            <asp:Button runat="server" CssClass="accountingbutton"  />
                            <h6 class="catalogtext4">Accounting</h6>
                        </div>
                        <div class="col-2 mobilerow marginforleft">
                            <asp:Button runat="server" CssClass="reportsbutton" />
                            <h6 class="catalogtext7">Reports</h6>
                        </div>
                        <div class="col-2 mobilerow">
                            <asp:Button runat="server" CssClass="settingsbutton" />
                            <h6 class="catalogtext7">Settings</h6>

                        </div>



                        </div>
                    </div>

        </div>
        <style>

        body{
            overflow:hidden;
        }
            @media screen and (min-width: 360px) and (max-width: 500px) {
                        body{
                    overflow:auto;
                }
            }
    </style>
</asp:Content>
