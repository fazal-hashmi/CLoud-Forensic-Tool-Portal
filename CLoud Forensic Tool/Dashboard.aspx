<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CloudForensics.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- BEGIN #content -->
    <!-- BEGIN #content -->
    <div id="content" class="app-content">
        <!-- BEGIN row -->
        <div class="row">
            <!-- BEGIN col-3 -->
            <div class="col-xl-3 col-lg-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">REPORTED INCIDENT</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN stat-lg -->
                        <div class="row align-items-center mb-2">
                            <div class="col-7">
                                <h3 class="mb-0"> <asp:Label runat="server" Text="0" ID="lblIncident" /> </h3>
                            </div>
                            <div class="col-5">
                                <div class="mt-n2" data-render="apexchart" data-type="bar" data-title="Visitors" data-height="30"></div>
                            </div>
                        </div>
                        <!-- END stat-lg -->
                        <!-- BEGIN stat-sm -->
                       
                        <!-- END stat-sm -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-3 -->

            <!-- BEGIN col-3 -->
            <div class="col-xl-3 col-lg-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">THREAT ALERTS</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN stat-lg -->
                        <div class="row align-items-center mb-2">
                            <div class="col-7">
                                <h3 class="mb-0"><asp:Label runat="server" Text="0" ID="lblAlerts" /></h3>
                            </div>
                            <div class="col-5">
                                <div class="mt-n2" data-render="apexchart" data-type="line" data-title="Visitors" data-height="30"></div>
                            </div>
                        </div>
                        <!-- END stat-lg -->
                        <!-- BEGIN stat-sm -->
                        
                        <!-- END stat-sm -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-3 -->

            <!-- BEGIN col-3 -->
            <div class="col-xl-3 col-lg-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">NEW MEMBERS</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN stat-lg -->
                        <div class="row align-items-center mb-2">
                            <div class="col-7">
                                <h3 class="mb-0"><asp:Label runat="server" Text="0" ID="lblMemebers" /></h3>
                            </div>
                            <div class="col-5">
                                <div class="mt-n3 mb-n2" data-render="apexchart" data-type="pie" data-title="Visitors" data-height="45"></div>
                            </div>
                        </div>
                        <!-- END stat-lg -->
                        <!-- BEGIN stat-sm -->
                       
                        <!-- END stat-sm -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-3 -->

            <!-- BEGIN col-3 -->
            <div class="col-xl-3 col-lg-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">HOST MACHINES</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN stat-lg -->
                        <div class="row align-items-center mb-2">
                            <div class="col-7">
                                <h3 class="mb-0"><asp:Label runat="server" Text="0" ID="lblHost" /></h3>
                            </div>
                            <div class="col-5">
                                <div class="mt-n3 mb-n2" data-render="apexchart" data-type="donut" data-title="Visitors" data-height="45"></div>
                            </div>
                        </div>
                        <!-- END stat-lg -->
                        <!-- BEGIN stat-sm -->
                        
                        <!-- END stat-sm -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-3 -->

            <!-- BEGIN col-6 -->
            <div class="col-xl-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">SERVER STATS</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN chart -->
                        <div class="ratio ratio-21x9 mb-3">
                            <div id="chart-server"></div>
                        </div>
                        <!-- END chart -->
                        <!-- BEGIN row -->
                        <div class="row">
                            <!-- BEGIN col-6 -->
                            <div class="col-lg-6 mb-3 mb-lg-0">
                                <div class="d-flex align-items-center">
                                    
                                    <!-- END chart -->
                                    <!-- BEGIN info -->
                                    <div class="ps-3 flex-1">
                                        <div class="fs-10px fw-bold text-white text-opacity-50 mb-1">STORAGE</div>
                                        <div class="mb-2 fs-5 text-truncate"><asp:Label runat="server" ID="lblStorageDetails" Text="20.04 / 256 GB" /></div>
                                        <div class="progress h-3px bg-white-transparent-2 mb-1">
                                           <asp:Literal runat="server" Text="<div class='progress-bar bg-theme' style='width: 10%'></div>" ID="ltrStorage" />
                                        </div>
                                        <div class="fs-11px text-white text-opacity-50 mb-2 text-truncate">
                                            <asp:Label runat="server" ID="lblSystemLastUpdate" Text="Last updated on " />
										
                                        </div>
                                        <div class="d-flex align-items-center small">
                                            <i class="bi bi-circle-fill fs-6px me-2 text-theme"></i>
                                            <div class="flex-1">STORAGE</div>
                                            <div>
                                            <asp:Label runat="server" ID="lblSystemStorage" Text="" /></div>
                                        </div>
                                        <div class="d-flex align-items-center small">
                                            <i class="bi bi-circle-fill fs-6px me-2 text-theme text-opacity-50"></i>
                                            <div class="flex-1">FREE</div>
                                            <div> <asp:Label runat="server" ID="lblFreeStorage" Text="" /></div>
                                        </div>
                                    </div>
                                    <!-- END info -->
                                </div>
                            </div>
                            <!-- END col-6 -->
                            <!-- BEGIN col-6 -->
                            <div class="col-lg-6">
                                <div class="d-flex">
                                    
                                    <!-- BEGIN info -->
                                    <div class="ps-3 flex-1">
                                        <div class="fs-10px fw-bold text-white text-opacity-50 mb-1">CPU</div>
                                        <div class="mb-2 fs-5 text-truncate"><asp:Label runat="server" ID="lblCPU" Text="" /></div>
                                        <div class="progress h-3px bg-white-transparent-2 mb-1">
                                            <div class="progress-bar bg-theme" style="width: 0%"></div>
                                        </div>
                                        <div class="fs-11px text-white text-opacity-50 mb-2 text-truncate">
                                           <asp:Label runat="server" ID="lblCPUUpdatedOn" Text="" />
										
                                        </div>
                                        <div class="d-flex align-items-center small">
                                            <i class="bi bi-circle-fill fs-6px me-2 text-theme"></i>
                                            <div class="flex-1">CORE</div>
                                            <div><asp:Label runat="server" ID="lblCpuCore" Text="" /></div>
                                        </div>
                                        <div class="d-flex align-items-center small">
                                            <i class="bi bi-circle-fill fs-6px me-2 text-theme text-opacity-50"></i>
                                            <div class="flex-1">RAM</div>
                                            <div><asp:Label runat="server" ID="lblRam" Text="" /></div>
                                        </div>
                                    </div>
                                    <!-- END info -->
                                </div>
                            </div>
                            <!-- END col-6 -->
                        </div>
                        <!-- END row -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-6 -->

            <!-- BEGIN col-6 -->
            <div class="col-xl-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">TRAFFIC ANALYTICS</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN map -->
                        <div class="ratio ratio-21x9 mb-3">
                            <div id="world-map" class="jvectormap-without-padding"></div>
                        </div>
                        <!-- END map -->
                        <!-- BEGIN row -->
                        <div class="row gx-4">
                            <!-- BEGIN col-6 -->
                            <div class="col-lg-6 mb-3 mb-lg-0">
                                <asp:Repeater runat="server" ID="rptVmAna">
                                    <HeaderTemplate>
                                        <table class="w-100 small mb-0 text-truncate text-white text-opacity-60">
                                            <thead>
                                                <tr class="text-white text-opacity-75">
                                                    <th class="w-50">COUNTRY</th>
                                                    <th class="w-25 text-end">VMs</th>
                                                    <th class="w-25 text-end">PCT%</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <asp:Label runat="server" Text='<%#Eval("Country") %>' /></td>
                                            <td class="text-end">
                                                <asp:Label runat="server" Text='<%#Eval("VMs") %>' /></td>
                                            <td class="text-end">
                                                <asp:Label runat="server" Text='<%#Eval("Percenrage") %>' />%</td>
                                        </tr>
                                    </ItemTemplate>
                                    <FooterTemplate>
                                        </tbody>
                                </table>
                                    </FooterTemplate>
                                </asp:Repeater>



                            </div>
                            <!-- END col-6 -->
                            <!-- BEGIN col-6 -->
                            <div class="col-lg-6">
                                <!-- BEGIN card -->
                                <div class="card">
                                    <!-- BEGIN card-body -->
                                    <div class="card-body py-2">
                                        <div class="d-flex align-items-center">
                                            <div class="w-70px">
                                                <div data-render="apexchart" data-type="donut" data-height="70"></div>
                                            </div>
                                            <div class="flex-1 ps-2">
                                                <asp:Repeater runat="server" ID="rptOSAna">
                                                    <HeaderTemplate>
                                                        <table class="w-100 small mb-0 text-white text-opacity-60">
                                                            <tbody>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td>
                                                                <div class="d-flex align-items-center">
                                                                    
                                                                    <asp:Literal runat="server" Text='<%#GetOpacity() %>' />
                                                                    <asp:Label runat="server" Text='<%#Eval("OS") %>' />

                                                                </div>
                                                            </td>
                                                            <td class="text-end">
                                                                <asp:Label runat="server" Text='<%#Eval("Percenrage") %>' />%</td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </tbody>
                                                </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>




                                            </div>
                                        </div>
                                    </div>
                                    <!-- END card-body -->

                                    <!-- BEGIN card-arrow -->
                                    <div class="card-arrow">
                                        <div class="card-arrow-top-left"></div>
                                        <div class="card-arrow-top-right"></div>
                                        <div class="card-arrow-bottom-left"></div>
                                        <div class="card-arrow-bottom-right"></div>
                                    </div>
                                    <!-- END card-arrow -->
                                </div>
                                <!-- END card -->
                            </div>
                            <!-- END col-6 -->
                        </div>
                        <!-- END row -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-6 -->

            <!-- BEGIN col-6 -->
            <div class="col-xl-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">VIRTUAL MACHINES (VMs)</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN table -->
                        <div class="table-responsive" style="max-height: 426px;">
                            <asp:Repeater runat="server" ID="rptMachines">
                                <HeaderTemplate>
                                    <table class="w-100 mb-0 small align-middle text-nowrap">
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <div class="d-flex">
                                                <div class="position-relative mb-2">
                                                    <asp:Literal runat="server" Text='<%#GetUrl(Eval("ICON")) %>' />
                                                    <div class="position-absolute top-0 start-0">
                                                        <span class="badge bg-theme text-theme-900 rounded-0 d-flex align-items-center justify-content-center w-20px h-20px">
                                                            <asp:Label runat="server" Text='<%# Container.ItemIndex + 1 %>' /></span>
                                                    </div>
                                                </div>
                                                <div class="flex-1 ps-3">
                                                    <div class="mb-1">
                                                        <small class="fs-9px fw-500 lh-1 d-inline-block rounded-0 badge bg-white bg-opacity-25 text-white text-opacity-75 pt-5px">
                                                            <asp:Label runat="server" Text='<%#Eval("MACHINEID") %>' /></small>
                                                    </div>
                                                    <div class="fw-500 text-white">
                                                        <asp:Label runat="server" Text='<%#Eval("OS") %>' />
                                                    </div>
                                                    <asp:Label runat="server" Text='<%#"Last updated "+Eval("LAST_UPDATED")+" " %>' />

                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <table class="mb-2">
                                                <tr>
                                                    <td class="pe-3">CPU:</td>
                                                    <td class="text-white text-opacity-75 fw-500">
                                                        <asp:Label runat="server" Text='<%#Eval("CPU") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td class="pe-3">MEMORY:</td>
                                                    <td class="text-white text-opacity-75 fw-500">
                                                        <asp:Label runat="server" Text='<%#Eval("RAM") %>' /></td>
                                                </tr>
                                                <tr>
                                                    <td class="pe-3 text-nowrap">STORAGE:</td>
                                                    <td class="text-white text-opacity-75 fw-500">
                                                        <asp:Label runat="server" Text='<%#Eval("STORAGE") %>' /></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td><a href="#" class="text-decoration-none text-white"><i class="bi bi-search"></i></a></td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                            </table>
                                </FooterTemplate>
                            </asp:Repeater>




                        </div>
                        <!-- END table -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-6 -->

            <!-- BEGIN col-6 -->
            <div class="col-xl-6">
                <!-- BEGIN card -->
                <div class="card mb-3">
                    <!-- BEGIN card-body -->
                    <div class="card-body">
                        <!-- BEGIN title -->
                        <div class="d-flex fw-bold small mb-3">
                            <span class="flex-grow-1">ACTIVITY LOG</span>
                            <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                        </div>
                        <!-- END title -->
                        <!-- BEGIN table -->
                        <div class="table-responsive" style="max-height: 426px;">
                            <asp:Repeater runat="server" ID="rptActivityLog">
                                <HeaderTemplate>
                                    <table class="table table-striped table-borderless mb-2px small text-nowrap">
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <span class="d-flex align-items-center">
                                                <i class="bi bi-circle-fill fs-6px text-theme me-2"></i>
                                                <asp:Label runat="server" Text='<%#Eval("LOG_INFO") %>' />
                                            </span>
                                        </td>
                                        <td><small>
                                            <asp:Label runat="server" Text='<%#Eval("LAST_UPDATED")+" " %>' /></small></td>
                                        <td>
                                            <span class="badge d-block bg-theme text-theme-900 rounded-0 pt-5px w-70px" style="min-height: 18px">
                                                <asp:Label runat="server" Text='<%#Eval("LOG_TYPE") %>' /></span>
                                        </td>
                                        <td><a href="#" class="text-decoration-none text-white"><i class="bi bi-search"></i></a></td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr>
                                        <td>
                                            <span class="d-flex align-items-center">
                                                <i class="bi bi-circle-fill fs-6px text-white-transparent-3 me-2"></i>
                                                <asp:Label runat="server" Text='<%#Eval("LOG_INFO") %>' />
                                            </span>
                                        </td>
                                        <td><small>
                                            <asp:Label runat="server" Text='<%#Eval("LAST_UPDATED")+" " %>' /></small></td>
                                        <td>
                                            <span class="badge d-block bg-white bg-opacity-25 rounded-0 pt-5px w-70px" style="min-height: 18px">
                                                <asp:Label runat="server" Text='<%#Eval("LOG_TYPE") %>' /></span>
                                        </td>
                                        <td><a href="#" class="text-decoration-none text-white"><i class="bi bi-search"></i></a></td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                            </table>
                                </FooterTemplate>
                            </asp:Repeater>




                        </div>
                        <!-- END table -->
                    </div>
                    <!-- END card-body -->

                    <!-- BEGIN card-arrow -->
                    <div class="card-arrow">
                        <div class="card-arrow-top-left"></div>
                        <div class="card-arrow-top-right"></div>
                        <div class="card-arrow-bottom-left"></div>
                        <div class="card-arrow-bottom-right"></div>
                    </div>
                    <!-- END card-arrow -->
                </div>
                <!-- END card -->
            </div>
            <!-- END col-6 -->
        </div>
        <!-- END row -->
    </div>
    <!-- END #content -->
    <!-- END #content -->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <script>
         /*
Template Name: HUD - Responsive Bootstrap 5 Admin Template
Version: 1.6.0
Author: Sean Ngu
Website: http://www.seantheme.com/hud/
*/

         var randomNo = function () {
             return Math.floor(Math.random() * 60) + 30
         };

         var handleRenderChart = function () {
             // global apexchart settings
             Apex = {
                 title: {
                     style: {
                         fontSize: '14px',
                         fontWeight: 'bold',
                         fontFamily: app.font.family,
                         color: app.color.white
                     },
                 },
                 legend: {
                     fontFamily: app.font.family,
                     labels: {
                         colors: '#fff'
                     }
                 },
                 tooltip: {
                     style: {
                         fontSize: '12px',
                         fontFamily: app.font.family
                     }
                 },
                 grid: {
                     borderColor: 'rgba(' + app.color.whiteRgb + ', .25)',
                 },
                 dataLabels: {
                     style: {
                         fontSize: '12px',
                         fontFamily: app.font.family,
                         fontWeight: 'bold',
                         colors: undefined
                     }
                 },
                 xaxis: {
                     axisBorder: {
                         show: true,
                         color: 'rgba(' + app.color.whiteRgb + ', .25)',
                         height: 1,
                         width: '100%',
                         offsetX: 0,
                         offsetY: -1
                     },
                     axisTicks: {
                         show: true,
                         borderType: 'solid',
                         color: 'rgba(' + app.color.whiteRgb + ', .25)',
                         height: 6,
                         offsetX: 0,
                         offsetY: 0
                     },
                     labels: {
                         style: {
                             colors: '#fff',
                             fontSize: '12px',
                             fontFamily: app.font.family,
                             fontWeight: 400,
                             cssClass: 'apexcharts-xaxis-label',
                         }
                     }
                 },
                 yaxis: {
                     labels: {
                         style: {
                             colors: '#fff',
                             fontSize: '12px',
                             fontFamily: app.font.family,
                             fontWeight: 400,
                             cssClass: 'apexcharts-xaxis-label',
                         }
                     }
                 }
             };


             // small stat chart
             var x = 0;
             var chart = [];

             var elmList = [].slice.call(document.querySelectorAll('[data-render="apexchart"]'));
             elmList.map(function (elm) {
                 var chartType = elm.getAttribute('data-type');
                 var chartHeight = elm.getAttribute('data-height');
                 var chartTitle = elm.getAttribute('data-title');
                 var chartColors = [];
                 var chartPlotOptions = {};
                 var chartData = [];
                 var chartStroke = {
                     show: false
                 };
                 if (chartType == 'bar') {
                     chartColors = [app.color.theme];
                     chartPlotOptions = {
                         bar: {
                             horizontal: false,
                             columnWidth: '65%',
                             endingShape: 'rounded'
                         }
                     };
                     chartData = [{
                         name: chartTitle,
                         data: [randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo()]
                     }];
                 } else if (chartType == 'pie') {
                     chartColors = ['rgba(' + app.color.themeRgb + ', 1)', 'rgba(' + app.color.themeRgb + ', .75)', 'rgba(' + app.color.themeRgb + ', .5)'];
                     chartData = [randomNo(), randomNo(), randomNo()];
                 } else if (chartType == 'donut') {
                     chartColors = ['rgba(' + app.color.themeRgb + ', .15)', 'rgba(' + app.color.themeRgb + ', .35)', 'rgba(' + app.color.themeRgb + ', .55)', 'rgba(' + app.color.themeRgb + ', .75)', 'rgba(' + app.color.themeRgb + ', .95)'];
                     chartData = <% Response.Write(GetDataOS()); %>
                     chartStroke = {
                         show: false,
                         curve: 'smooth',
                         lineCap: 'butt',
                         colors: 'rgba(' + app.color.blackRgb + ', .25)',
                         width: 2,
                         dashArray: 0,
                     };
                     chartPlotOptions = {
                         pie: {
                             donut: {
                                 background: 'transparent',
                             }
                         }
                     };
                 } else if (chartType == 'line') {
                     chartColors = [app.color.theme];
                     chartData = [{
                         name: chartTitle,
                         data: [randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo(), randomNo()]
                     }];
                     chartStroke = {
                         curve: 'straight',
                         width: 2
                     };
                 }

                 var chartOptions = {
                     chart: {
                         height: chartHeight,
                         type: chartType,
                         toolbar: {
                             show: false
                         },
                         sparkline: {
                             enabled: true
                         },
                     },
                     dataLabels: {
                         enabled: false
                     },
                     colors: chartColors,
                     stroke: chartStroke,
                     plotOptions: chartPlotOptions,
                     series: chartData,
                     grid: {
                         show: false
                     },
                     tooltip: {
                         theme: 'dark',
                         x: {
                             show: false
                         },
                         y: {
                             title: {
                                 formatter: function (seriesName) {
                                     return ''
                                 }
                             },
                             formatter: (value) => { return '' + value },
                         }
                     },
                     xaxis: {
                         labels: {
                             show: false
                         }
                     },
                     yaxis: {
                         labels: {
                             show: false
                         }
                     }
                 };
                 chart[x] = new ApexCharts(elm, chartOptions);
                 chart[x].render();
                 x++;
             });

             var serverChartOptions = {
                 chart: {
                     height: '100%',
                     type: 'bar',
                     toolbar: {
                         show: false
                     }
                 },
                 plotOptions: {
                     bar: {
                         horizontal: false,
                         columnWidth: '55%',
                         endingShape: 'rounded'
                     },
                 },
                 dataLabels: {
                     enabled: false
                 },
                 grid: {
                     show: true,
                     borderColor: 'rgba(' + app.color.whiteRgb + ', .15)',
                 },
                 stroke: {
                     show: false
                 },
                 colors: ['rgba(' + app.color.whiteRgb + ', .25)', app.color.theme],
                 series: [{
                     name: 'MEMORY USAGE',
                     data: [
                         <% Response.Write(GetMemoryUseage());%>
                     ]
                 }, {
                     name: 'CPU USAGE',
                     data: [
                          <% Response.Write(GetCPUUseage());%>
                     ]
                 }],
                 xaxis: {
                     categories: [
                          <% Response.Write(GetCategoryUseage());%>
                     ],
                     labels: {
                         show: false
                     }
                 },
                 fill: {
                     opacity: .65
                 },
                 tooltip: {
                     y: {
                         formatter: function (val) {
                             return "% " + val + " "
                         }
                     }
                 }
             };
             var apexServerChart = new ApexCharts(
                 document.querySelector('#chart-server'),
                 serverChartOptions
             );
             apexServerChart.render();
         };

         var handleRenderMap = function () {
             var gdpData = { "AF": 16.63, "AL": 11.58, "DZ": 158.97, "AO": 85.81, "AG": 1.1, "AR": 351.02, "AM": 8.83, "AU": 1219.72, "AT": 366.26, "AZ": 52.17, "BS": 7.54, "BH": 21.73, "BD": 105.4, "BB": 3.96, "BY": 52.89, "BE": 461.33, "BZ": 1.43, "BJ": 6.49, "BT": 1.4, "BO": 19.18, "BA": 16.2, "BW": 12.5, "BR": 2023.53, "BN": 11.96, "BG": 44.84, "BF": 8.67, "BI": 1.47, "KH": 11.36, "CM": 21.88, "CA": 1563.66, "CV": 1.57, "CF": 2.11, "TD": 7.59, "CL": 199.18, "CN": 5745.13, "CO": 283.11, "KM": 0.56, "CD": 12.6, "CG": 11.88, "CR": 35.02, "CI": 22.38, "HR": 59.92, "CY": 22.75, "CZ": 195.23, "DK": 304.56, "DJ": 1.14, "DM": 0.38, "DO": 50.87, "EC": 61.49, "EG": 216.83, "SV": 21.8, "GQ": 14.55, "ER": 2.25, "EE": 19.22, "ET": 30.94, "FJ": 3.15, "FI": 231.98, "FR": 2555.44, "GA": 12.56, "GM": 1.04, "GE": 11.23, "DE": 3305.9, "GH": 18.06, "GR": 305.01, "GD": 0.65, "GT": 40.77, "GN": 4.34, "GW": 0.83, "GY": 2.2, "HT": 6.5, "HN": 15.34, "HK": 226.49, "HU": 132.28, "IS": 12.77, "IN": 1430.02, "ID": 695.06, "IR": 337.9, "IQ": 84.14, "IE": 204.14, "IL": 201.25, "IT": 2036.69, "JM": 13.74, "JP": 5390.9, "JO": 27.13, "KZ": 129.76, "KE": 32.42, "KI": 0.15, "KR": 986.26, "UNDEFINED": 5.73, "KW": 117.32, "KG": 4.44, "LA": 6.34, "LV": 23.39, "LB": 39.15, "LS": 1.8, "LR": 0.98, "LY": 77.91, "LT": 35.73, "LU": 52.43, "MK": 9.58, "MG": 8.33, "MW": 5.04, "MY": 218.95, "MV": 1.43, "ML": 9.08, "MT": 7.8, "MR": 3.49, "MU": 9.43, "MX": 1004.04, "MD": 5.36, "MN": 5.81, "ME": 3.88, "MA": 91.7, "MZ": 10.21, "MM": 35.65, "NA": 11.45, "NP": 15.11, "NL": 770.31, "NZ": 138, "NI": 6.38, "NE": 5.6, "NG": 206.66, "NO": 413.51, "OM": 53.78, "PK": 174.79, "PA": 27.2, "PG": 8.81, "PY": 17.17, "PE": 153.55, "PH": 189.06, "PL": 438.88, "PT": 223.7, "QA": 126.52, "RO": 158.39, "RU": 1476.91, "RW": 5.69, "WS": 0.55, "ST": 0.19, "SA": 434.44, "SN": 12.66, "RS": 38.92, "SC": 0.92, "SL": 1.9, "SG": 217.38, "SK": 86.26, "SI": 46.44, "SB": 0.67, "ZA": 354.41, "ES": 1374.78, "LK": 48.24, "KN": 0.56, "LC": 1, "VC": 0.58, "SD": 65.93, "SR": 3.3, "SZ": 3.17, "SE": 444.59, "CH": 522.44, "SY": 59.63, "TW": 426.98, "TJ": 5.58, "TZ": 22.43, "TH": 312.61, "TL": 0.62, "TG": 3.07, "TO": 0.3, "TT": 21.2, "TN": 43.86, "TR": 729.05, "TM": 0, "UG": 17.12, "UA": 136.56, "AE": 239.65, "GB": 2258.57, "US": 14624.18, "UY": 40.71, "UZ": 37.72, "VU": 0.72, "VE": 285.21, "VN": 101.99, "YE": 30.02, "ZM": 15.69, "ZW": 5.57 };
             $('#world-map').vectorMap({
                 map: 'world_mill',
                 normalizeFunction: 'polynomial',
                 hoverOpacity: 0.5,
                 hoverColor: false,
                 zoomOnScroll: false,
                 series: {
                     regions: [{
                         normalizeFunction: 'polynomial'
                     }]
                 },
                 focusOn: {
                     x: 0.5,
                     y: 0.5,
                     scale: 1
                 },
                 markerStyle: {
                     initial: {
                         fill: app.color.theme,
                         stroke: 'none',
                         "stroke-width": 2,
                     }
                 },
                 regionStyle: {
                     initial: {
                         fill: app.color.white,
                         "fill-opacity": 0.35,
                         stroke: 'none',
                         "stroke-width": 0.4,
                         "stroke-opacity": 1
                     },
                     hover: {
                         "fill-opacity": 0.5
                     }
                 },
                 backgroundColor: 'transparent',
                 markers: [
                     <% Response.Write(GetVMsLocation());%>
                     
                     
                 ]
             });
         }

         /* Controller
         ------------------------------------------------ */
         $(document).ready(function () {
             handleRenderChart();
             handleRenderMap();

             document.addEventListener('theme-reload', function () {
                 $('[data-render="apexchart"], #chart-server, #world-map').empty();
                 handleRenderChart();
                 handleRenderMap();
             });
         });
     </script>
</asp:Content>

