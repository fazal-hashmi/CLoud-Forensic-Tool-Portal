<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VMs.aspx.cs" Inherits="CloudForensics.VMs" %>

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
            <li class="breadcrumb-item active">VMs</li>
        </ul>

        <h1 class="page-header">Manage Virtual Machines 
           <%-- <a href="#" class="btn btn-primary" style="float: right;" id="clickButton" data-toggle="collapse" data-target="#Add" aria-expanded="false">
                <i class='fas fa-lg fa-fw me-2 fa-plus-circle'></i></a>--%>
        </h1>
       
        <hr class="mb-4">
        <div class="card " id="Add" >
            <div class="card-body pb-2">

                <div class="row">
                    <div class="col-xl-6">
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtSystem">System/Host</label>
                            <asp:DropDownList runat="server" ID="ddlVMSerial" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:HiddenField runat="server" ID="hid" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlVMSerial" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                        <div class="form-group mb-3">
                            <label class="form-label" for="txtProcessor">Processor</label>
                            <asp:TextBox runat="server" ID="txtProcessor" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtProcessor" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtRam">RAM</label>
                            <asp:TextBox runat="server" ID="txtRam" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRam" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                         <div class="form-group mb-3">
                            <label class="form-label" for="txtSerial">Serial/Unique ID</label>
                            <asp:TextBox runat="server" ID="txtSerial" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSerial" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                      
                    </div>
                    <div class="col-xl-6">

                        <div class="form-group mb-3">
                            <label class="form-label" for="ddlOS">OS</label>
                            <asp:DropDownList runat="server" ID="ddlOS" CssClass="form-control" ValidationGroup="Validate">
                                <asp:ListItem Text="Windows 11" Value="Windows 11" />
                                <asp:ListItem Text="Windows 10" Value="Windows 10" />
                                <asp:ListItem Text="Windows 8.1" Value="Windows 8.1" />
                                <asp:ListItem Text="Windows 8" Value="Windows 8" />
                                <asp:ListItem Text="Windows" Value="Windows 7" />
                                <asp:ListItem Text="Windows Vista" Value="Windows Vista" />
                                <asp:ListItem Text="Windows XP" Value="Windows XP" />

                                <asp:ListItem Text="Windows Server 2022" Value="Windows Server 2022" />
                                <asp:ListItem Text="Windows Server 2019" Value="Windows Server 2019" />
                                <asp:ListItem Text="Windows Server 2016" Value="Windows Server 2016" />
                                <asp:ListItem Text="Windows Server 2012" Value="Windows Server 2012" />
                                <asp:ListItem Text="Windows Server 2008" Value="Windows Server 2008" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlOS" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtCore">Core</label>
                            <asp:TextBox runat="server" ID="txtCore" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCore" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtStorage">Storage(HD/SSD)</label>
                            <asp:TextBox runat="server" ID="txtStorage" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStorage" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        

                        <asp:Button runat="server" CssClass="btn btn-outline-primary mb-1" ID="btnSave" ValidationGroup="Validate" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button runat="server" CssClass="btn btn-outline-secondary mb-1" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />


                    </div>
                </div>

            </div>
            <div class="card-arrow">
                <div class="card-arrow-top-left"></div>
                <div class="card-arrow-top-right"></div>
                <div class="card-arrow-bottom-left"></div>
                <div class="card-arrow-bottom-right"></div>
            </div>

        </div>
        <br />
        <asp:Literal runat="server" ID="Alert" />
        <br />
        <!-- BEGIN #datatable -->
        <div id="datatable" class="mb-5">

            <h4>List of Host Machines</h4>
            <div class="card">
                <div class="card-body">
                    <asp:Repeater runat="server" ID="rptHost" OnItemCommand="rptHost_ItemCommand">
                        <HeaderTemplate>
                            <table id="datatableDefault" class="table text-nowrap w-100">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>System</th>
                                        <th>OS</th>
                                        <th>CPU</th>
                                        <th>Core</th>
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
                                    <asp:Label runat="server" Text='<%#Eval("System") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("OS") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("CPU") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("CORE") %>' /></td>
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
                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" Text="Add Rev." CommandArgument='<%#Eval("MACHINEID") %>' class="btn btn-success btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="LinkButton1" OnClientClick="return confirm('Are you sure you want to delete this item?');" CommandName="Delete" Text="Delete" CommandArgument='<%#Eval("MACHINEID") %>' class="btn btn-danger btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="delete"><i class="fa fa-trash"></i></asp:LinkButton>

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
