<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Analytics.aspx.cs" Inherits="CloudForensics.Analytics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- ================== BEGIN page-css ================== -->
    <link href="assets/plugins/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
    <link href="assets/plugins/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" />
    <link href="assets/plugins/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" />
    <!-- ================== END page-css ================== -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- BEGIN #content -->
    <div id="content" class="app-content">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">VM Analytics</li>
        </ul>

        <h1 class="page-header">Manage Virtual Machines  (Analysis Reports)
           <%-- <a href="#" class="btn btn-primary" style="float: right;" id="clickButton" data-toggle="collapse" data-target="#Add" aria-expanded="false">
                <i class='fas fa-lg fa-fw me-2 fa-plus-circle'></i></a>--%>
        </h1>

        <hr class="mb-4">

        <asp:Literal runat="server" ID="Alert" />
        <br />
        <!-- BEGIN #datatable -->
        <div id="datatable" class="mb-5">

            <h4>List of Reports</h4>
            <div class="card">
                <div class="card-body">
                    <asp:Repeater runat="server" ID="rptHost" OnItemCommand="rptHost_ItemCommand">
                        <HeaderTemplate>
                            <table id="datatableDefault" class="table text-nowrap w-100">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Log Report</th>
                                        <th>OS</th>
                                        <th>CPU</th>

                                        <th>RAM</th>
                                        <th>HD</th>
                                        <th>Last Sync</th>
                                        <th></th>
                                    </tr>
                                    <tbody>
                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text='<%# Container.ItemIndex + 1 %>' />.</td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("LOG_INFO") %>' /></td>

                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("OS") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("CPU") %>' /></td>

                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("RAM")+"GB" %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("STORAGE")+"GB" %>' /></td>

                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("LAST_UPDATED") %>' /></td>
                                <td>

                                    <!-- Call to action buttons -->
                                    <ul class="list-inline m-0">


                                        <li class="list-inline-item">

                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" Text="View Report" CommandArgument='<%#Eval("LOG_ID") %>' class="btn btn-success btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="View"><i class="fa fa-eye"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="LinkButton2" CommandName="Download" Text="View Report" CommandArgument='<%#Eval("LOG_ID") %>' class="btn btn-warning btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Download Report"><i class="fa fa-download"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="LinkButton1" OnClientClick="return confirm('Are you sure you want to delete this item?');" CommandName="Delete" Text="Delete" CommandArgument='<%#Eval("LOG_ID") %>' class="btn btn-danger btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="delete"><i class="fa fa-trash"></i></asp:LinkButton>

                                        </li>


                                    </ul>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                    </table>
                        </FooterTemplate>
                    </asp:Repeater>




                </div>
                <div class="card-arrow">
                    <div class="card-arrow-top-left"></div>
                    <div class="card-arrow-top-right"></div>
                    <div class="card-arrow-bottom-left"></div>
                    <div class="card-arrow-bottom-right"></div>
                </div>

            </div>
        </div>
        <!-- END #datatable -->

        <div id="datatable1" class="mb-5">


            <!-- BEGIN col-6 -->
            <h4>Vm Log Report</h4>
            <div class="card">
                <div class="card-body">
                    <!-- BEGIN title -->
                    <div class="d-flex fw-bold small mb-3">
                        <span class="flex-grow-1">VM Losgs</span>
                        <a href="#" data-toggle="card-expand" class="text-white text-opacity-50 text-decoration-none"><i class="bi bi-fullscreen"></i></a>
                    </div>
                    <!-- END title -->
                    <!-- BEGIN table -->
                    <div class="table-responsive" style="max-height: 426px;">
                        <asp:Repeater runat="server" ID="rptLogs" OnItemCommand="rptLogs_ItemCommand">
                            <HeaderTemplate>
                                <table id="datatableDefault1" class="table text-nowrap w-100">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Machine Name</th>
                                            <th>Source</th>
                                            <th>Site</th>

                                            <th>Category</th>
                                            <th>EntryType</th>
                                            <th>EventID</th>
                                            <th></th>
                                        </tr>
                                        <tbody>
                                    </thead>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Text='<%# Container.ItemIndex + 1 %>' />.</td>
                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("MachineName") %>' /></td>

                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("Source") %>' /></td>
                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("Site") %>' /></td>

                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("Category") %>' /></td>
                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("EntryType") %>' /></td>

                                    <td>
                                        <asp:Label runat="server" Text='<%#Eval("EventID") %>' /></td>
                                    <td>

                                        <!-- Call to action buttons -->
                                        <ul class="list-inline m-0">


                                            <li class="list-inline-item">

                                                <asp:LinkButton runat="server" ID="LinkButton2" CommandName="Download" Text="View Report" CommandArgument='<%#Eval("Message") %>' class="btn btn-warnging btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Download Report"><i class="fa fa-eye"></i></asp:LinkButton>

                                            </li>


                                        </ul>
                                    </td>
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



    </div>
    <!-- END #content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- ================== BEGIN page-js ================== -->
    <script src="assets/plugins/@highlightjs/cdn-assets/highlight.min.js"></script>
    <script src="assets/js/demo/highlightjs.demo.js"></script>
    <script src="assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="assets/plugins/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons/js/buttons.colVis.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="assets/plugins/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
    <script src="assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="assets/plugins/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
    <script src="assets/plugins/bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="assets/js/demo/table-plugins.demo.js"></script>
    <script src="assets/js/demo/sidebar-scrollspy.demo.js"></script>
    <!-- ================== END page-js ================== -->
</asp:Content>
