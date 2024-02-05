<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameSettings.aspx.cs" Inherits="HuarITSolutions.GameSettings2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <div class="row">

            <div id="sidettons" class="col-sm-auto  sticky-top custom-column-spacing ">
                    <a id="site-logo" class="navbar-brand" href="#">
                        <img src="image/I.t.png" alt="..." class="img-fluid" style="width:120px; height:auto; margin-bottom:50px;"/>
                    </a>
                <div class="d-flex flex-sm-column flex-row  flex-nowrap  align-items-center sticky-top ">

                        <ul class="nav nav-pills nav-flush flex-sm-column flex-row flex-nowrap mb-auto mx-auto text-center align-items-center">
                        <li class="nav-item ">
                            <button type="button" id="agame" class="btn btn-light btn-circle btn-custom active  " data-toggle="tab" data-target="#active" role="tab" aria-controls="active" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="none"><path d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z"/><path fill="currentColor" d="M12 3a1 1 0 0 1 .993.883L13 4v1h1.5a7.5 7.5 0 0 1 .243 14.996L14.5 20h-5a7.5 7.5 0 0 1-.243-14.996L9.5 5H11V4a1 1 0 0 1 1-1m3.5 7a1 1 0 0 0-1 1v.5H14a1 1 0 1 0 0 2h.5v.5a1 1 0 1 0 2 0v-.5h.5a1 1 0 1 0 0-2h-.5V11a1 1 0 0 0-1-1m-7 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5m0 2a.5.5 0 1 1 0 1a.5.5 0 0 1 0-1"/></g></svg></button>
                                <h6><center><small>Active <br />Game</small></center></h6>
                        </li>
                        <li class="nav-item">
                            <button type="button" id="combine" class="btn btn-light btn-circle btn-custom " data-toggle="tab" data-target="#combi" role="tab" aria-controls="combi" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="m12 1.148l6.16 9.602H5.84zm0 3.704L9.5 8.75h5zM2 13h9v9H2zm2 2v5h5v-5zm13.5 0a2.5 2.5 0 1 0 0 5a2.5 2.5 0 0 0 0-5M13 17.5a4.5 4.5 0 1 1 9 0a4.5 4.5 0 0 1-9 0"/></svg></button>
                            
                        </li>
                            <h6><center><small>Controlled<br /> Combinations</small></center></h6>
                        <li class="nav-item">
                            <button type="button" id="lowb" class="btn btn-light btn-circle btn-custom  " data-toggle="tab" data-target="#lowcombi" role="tab" aria-controls="lowcombi" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="M23 12c0 6.08-4.92 11-11 11S1 18.08 1 12S5.92 1 12 1s11 4.92 11 11M13 4.06c2.13.27 4.07 1.39 5.37 3.1l1.74-1A10 10 0 0 0 13 2zm-9.11 2.1l1.74 1A8.022 8.022 0 0 1 11 4.06V2a10 10 0 0 0-7.11 4.16m-1 9.94l1.73-1a8.03 8.03 0 0 1 0-6.2l-1.73-1a9.864 9.864 0 0 0 0 8.2M11 19.94a8.022 8.022 0 0 1-5.37-3.1l-1.74 1A10 10 0 0 0 11 22zm9.11-2.1l-1.74-1a8.022 8.022 0 0 1-5.37 3.1v2c2.85-.29 5.44-1.78 7.11-4.1m1-1.74c1.19-2.6 1.19-5.6 0-8.2l-1.73 1a8.03 8.03 0 0 1 0 6.2zM15 12l-3-5l-3 5l3 5z"/></svg></button>
                            <h6 ><small><center>Low Bet</center></small></h6>
                        </li>
                            <!--
                        <li class="nav-item">
                            <button type="button" id="highb" class="btn btn-light btn-circle btn-custom " data-toggle="tab" data-target="#highcombi" role="tab" aria-controls="highcombi" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 512 512"><path fill="currentColor" d="M495.24 267.592L445.066 41.083A32.038 32.038 0 0 0 406.9 16.76L180.393 66.934a32 32 0 0 0-24.322 38.166l21.021 94.9H48a32.036 32.036 0 0 0-32 32v232a32.036 32.036 0 0 0 32 32h232a32.036 32.036 0 0 0 32-32V340.957l158.917-35.2a32.038 32.038 0 0 0 24.323-38.165M280 464H48V232h136.181l22.063 99.606a32.031 32.031 0 0 0 31.18 25.092a32.3 32.3 0 0 0 6.984-.769l35.6-7.886L280.02 464Zm184-189.487l-226.513 50.173l-50.173-226.51L413.824 48l50.193 226.505Z"/><path fill="currentColor" d="M80 264h40v40H80zm0 128h40v40H80zm128 0h40v40h-40zm-64-64h40v40h-40zm81.456-205.433l39.054-8.644l8.644 39.055l-39.054 8.644zm152.672 97.223l39.054-8.65l8.65 39.054l-39.054 8.65zm-76.324-48.649l39.053-8.65l8.65 39.053l-39.052 8.65z"/></svg></button>
                            <h6 ><small><center>High Bet</center></small></h6>
                        </li>
                            -->
                        <li class="nav-item">
                            <button type="button" id="salesr" class="btn btn-light btn-circle btn-custom " data-toggle="tab" data-target="#salesrep" role="tab" aria-controls="salesrep" aria-selected="true"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><g fill="currentColor"><rect width="5" height="18" x="16" y="3" rx="2"/><rect width="5" height="12" x="9.5" y="9" rx="2"/><rect width="5" height="5" x="3" y="16" rx="2"/></g></svg></button>
                            <h6 ><center>Sales</center></h6>
                        </li>
                        <li class="nav-item">
                            <button type="button" class="btn btn-light btn-circle btn-custom "><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="currentColor" d="M18.72 14.76c.35-.85.54-1.76.54-2.76c0-.72-.11-1.41-.3-2.05c-.65.15-1.33.23-2.04.23A9.07 9.07 0 0 1 9.5 6.34a9.21 9.21 0 0 1-4.73 4.88c-.04.25-.04.52-.04.78A7.27 7.27 0 0 0 12 19.27c1.05 0 2.06-.23 2.97-.64c.57 1.09.83 1.63.81 1.63c-1.64.55-2.91.82-3.78.82c-2.42 0-4.73-.95-6.43-2.66a9.03 9.03 0 0 1-2.24-3.69H2v-4.55h1.09a9.09 9.09 0 0 1 15.33-4.6a8.991 8.991 0 0 1 2.47 4.6H22v4.55h-.06L18.38 18l-5.3-.6v-1.67h4.83zm-9.45-2.99c.3 0 .59.12.8.34a1.136 1.136 0 0 1 0 1.6c-.21.21-.5.33-.8.33c-.63 0-1.14-.5-1.14-1.13c0-.63.51-1.14 1.14-1.14m5.45 0c.63 0 1.13.51 1.13 1.14c0 .63-.5 1.13-1.13 1.13c-.63 0-1.14-.5-1.14-1.13a1.14 1.14 0 0 1 1.14-1.14"/></svg></button>
                            <h6 ><center>Agent</center></h6>
                        </li>
                    </ul>
                </div>
            </div>


                    <div id="content" class="col-lg-2"  >
                                <div class="buttonContainer">
                                    <asp:Button runat="server" CssClass="closebutton" OnClick="Button1_Click" ></asp:Button>
                                </div>
                        <div  class="card " style="width: 80rem; height:32rem; margin-top:20px;">
                        <div class="row-lg-7"  >
                            <div class="tab-content" >
                                        <div id="active" class="tab-pane fade show active" role="tabpanel" aria-labelledby="agame">
                                             <iframe src="GameSettingsMenu/active_games.aspx" style="width:1280px; height:530px; border:none; "></iframe>
                                        </div>
                                        <div id="combi" class=" tab-pane fade" role="tabpanel" aria-labelledby="combine">
                                             <iframe src="GameSettingsMenu/controlled_combinations.aspx" style="width:1280px; height:530px; border:none; "></iframe>
                                        </div>
                                        <div id="lowcombi" class=" tab-pane fade" role="tabpanel" aria-labelledby="lowb">
                                             <iframe src="GameSettingsMenu/low_winning_combinations.aspx" style="width:1300px; height:550px; border:none; "></iframe>
                                        </div>
                                        <%--<div id="highcombi" class=" tab-pane fade" role="tabpanel" aria-labelledby="highb">
                                             <iframe src="GameSettingsMenu/highcombi.aspx" style="width:1300px; height:550px; border:none; "></iframe>
                                        </div>--%>
                                        <div id="salesrep" class=" tab-pane fade" role="tabpanel" aria-labelledby="salesr">
                                               <iframe src="GameSettingsMenu/sales_representative.aspx" style="width:1300px; height:550px; border:none;  "></iframe>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>

