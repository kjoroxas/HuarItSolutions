<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogue2.aspx.cs" Inherits="HuarITSolutions.Catalogue2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
       <div class="container-fluid">
                <div id="catalogtitle" contenteditable="false">Catalog</div>
     
                    <div id="catalogbuttons" class="container mt-10" draggable="true" contenteditable="false">
                        <div class="row mx-auto" >

                        <!-- Circular Buttons -->
                        <div class="col-2 ">

                            <asp:Button runat="server" CssClass="filebutton" OnClick="Filesredirectiom" />
                                <h6 class="catalogtext6">Game Settings </h6>
                        </div>
                        <div class="col-2">
                            <asp:Button runat="server" CssClass="salesbutton" OnClick="Salesredirectiom" />
                            <h6 class="catalogtext2">Sales</h6>
                        </div>
                        <div class="col-2">
                            <asp:Button runat="server" CssClass="collectionsbutton"  />
                            <h6 class="catalogtext3">Collections</h6>
                        </div>
                        <div class="col-2">
                            <asp:Button runat="server" CssClass="accountingbutton"  />
                            <h6 class="catalogtext4">Accounting</h6>
                        </div>
                        <div class="col-2">
                            <asp:Button runat="server" CssClass="reportsbutton" />
                            <h6 class="catalogtext7">Reports</h6>
                        </div>
                        <div class="col-2">
                            <asp:Button runat="server" CssClass="settingsbutton" />
                            <h6 class="catalogtext7">Settings</h6>

                        </div>



                        </div>
                    </div>

        </div>
        <style>
        footer {
            padding-top:35px;
        }
    </style>
</asp:Content>
