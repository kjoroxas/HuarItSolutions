<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Specificsales.aspx.cs" Inherits="HuarITSolutions.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="buttonContainer">
            <asp:Button runat="server" CssClass="closebutton" OnClick="Button1_Click" ></asp:Button>
        </div>
<div id="specificcatalog" class="container mt-10" draggable="true" >

    <div class="row">
    <div class="col-1 custom-column-spacing"  >
    <!-- Circular Buttons -->
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg id="game" xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 1536 1792"><path fill="currentColor" d="M1024 512V40q22 14 36 28l408 408q14 14 28 36zm-128 32q0 40 28 68t68 28h544v1056q0 40-28 68t-68 28H96q-40 0-68-28t-28-68V96q0-40 28-68T96 0h800z"/></svg><br /></button>
        <h6>File</h6>
    </div>
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48"><g fill="none" stroke="currentColor" stroke-linejoin="round" stroke-width="4"><path d="M41 14L24 4L7 14v20l17 10l17-10z"/><path stroke-linecap="round" d="M24 22v8m8-12v12m-16-4v4"/></g></svg></button>
        <h6>Sales</h6>
    </div>
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 16 16"><path fill="currentColor" d="M0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6zM2 3a.5.5 0 0 0 .5.5h11a.5.5 0 0 0 0-1h-11A.5.5 0 0 0 2 3m2-2a.5.5 0 0 0 .5.5h7a.5.5 0 0 0 0-1h-7A.5.5 0 0 0 4 1"/></svg></button>
        <h6 >Collections</h6>
    </div>
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 50 50"><path fill="currentColor" d="M41 1H9C6.8 1 5 2.8 5 5v40c0 2.2 1.8 4 4 4h32c2.2 0 4-1.8 4-4V5c0-2.2-1.8-4-4-4M17 41c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm12 16c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm12 16c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-8c0 1.1-.9 2-2 2h-4c-1.1 0-2-.9-2-2v-1c0-1.1.9-2 2-2h4c1.1 0 2 .9 2 2zm0-9c0 1.1-.9 2-2 2H11c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2h28c1.1 0 2 .9 2 2z"/></svg></button>

        <h6 >Accounting</h6>
    </div>
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><g fill="currentColor"><rect width="5" height="18" x="16" y="3" rx="2"/><rect width="5" height="12" x="9.5" y="9" rx="2"/><rect width="5" height="5" x="3" y="16" rx="2"/></g></svg></button>
        <h6 >Sales</h6>
    </div>
    <div class="row">
        <button type="button" class="btn btn-light btn-circle btn-custom"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><path fill="currentColor" d="m9.25 22l-.4-3.2q-.325-.125-.612-.3t-.563-.375L4.7 19.375l-2.75-4.75l2.575-1.95Q4.5 12.5 4.5 12.338v-.675q0-.163.025-.338L1.95 9.375l2.75-4.75l2.975 1.25q.275-.2.575-.375t.6-.3l.4-3.2h5.5l.4 3.2q.325.125.613.3t.562.375l2.975-1.25l2.75 4.75l-2.575 1.95q.025.175.025.338v.674q0 .163-.05.338l2.575 1.95l-2.75 4.75l-2.95-1.25q-.275.2-.575.375t-.6.3l-.4 3.2zm2.8-6.5q1.45 0 2.475-1.025T15.55 12q0-1.45-1.025-2.475T12.05 8.5q-1.475 0-2.488 1.025T8.55 12q0 1.45 1.013 2.475T12.05 15.5"/></svg></button>
        <h6 >Agent</h6>


    </div>

    </div>
        <div class="col-lg-2 "  >
        <div class="row-lg-7">
             <div class="card" style="width: 50rem; height:30rem;">
              <div class="card-body">
                        <h5 class="card-title">Sales</h5>
                <div class="scrollable-container" style="height:25rem; overflow-y:auto;">
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p><p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
                    <p class="card-text">This portion and only this portion will have a very long text so much so that the vertical scroll bar may appear when required.</p>
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
    </asp:PlaceHolder>