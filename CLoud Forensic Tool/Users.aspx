<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="CloudForensics.Users" %>

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
            <li class="breadcrumb-item active">Users</li>
        </ul>

        <h1 class="page-header">Manage Users 
           <%-- <a href="#" class="btn btn-primary" style="float: right;" id="clickButton" data-toggle="collapse" data-target="#Add" aria-expanded="false">
                <i class='fas fa-lg fa-fw me-2 fa-plus-circle'></i></a>--%>
        </h1>

        <hr class="mb-4">
        <div class="card " id="Add">
            <div class="card-body pb-2">

                <div class="row">
                    <div class="col-xl-6">
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtUserName">Email/Username</label>
                            <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:HiddenField runat="server" ID="hid" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                        <div class="form-group mb-3">
                            <label class="form-label" for="txtFullName">Full Name</label>
                            <asp:TextBox runat="server" ID="txtFullName" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFullName" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                         <div class="form-group mb-3">
                            <label class="form-label" for="txtDOB">Date of Birth</label>
                            <asp:TextBox runat="server" ID="txtDOB" CssClass="form-control" ValidationGroup="Validate"  placeholder="dd/mm/yyyy" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOB" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                         <div class="form-group mb-3">
                            <label class="form-label" for="ddlCountry">Role</label>
                            <asp:DropDownList runat="server" ID="ddlRole" CssClass="form-control" ValidationGroup="Validate">
                                <asp:ListItem Text="Administrator" Value="Administrator" />
                                <asp:ListItem Text="Analyst" Value="Analyst" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCountry" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                      
                        <asp:Button runat="server" CssClass="btn btn-outline-primary mb-1" ID="btnSave" ValidationGroup="Validate" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button runat="server" CssClass="btn btn-outline-secondary mb-1" ID="btnCancel" Text="Cancel" OnClick="btnCancel_Click" />



                    </div>
                    <div class="col-xl-6">
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtPassword">Password</label>
                            <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" ValidationGroup="Validate" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="ddlGender">Gender</label>
                            <asp:DropDownList runat="server" ID="ddlGender" CssClass="form-control" ValidationGroup="Validate">
                                <asp:ListItem Text="Male" Value="M" />
                                <asp:ListItem Text="Female" Value="F" />

                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlGender" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                          <div class="form-group mb-3">
                            <label class="form-label" for="ddlCountry">Country</label>
                            <asp:DropDownList runat="server" ID="ddlCountry" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCountry" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                       


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

            <h4>List of All the Users</h4>
            <div class="card">
                <div class="card-body">
                    <asp:Repeater runat="server" ID="rptHost" OnItemCommand="rptHost_ItemCommand">
                        <HeaderTemplate>
                            <table id="datatableDefault" class="table text-nowrap w-100">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Username</th>
                                        <th>Full Name</th>
                                        <th>D.O.B</th>
                                        <th>Gender</th>
                                        <th>Country</th>
                                        <th>Role</th>
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
                                    <asp:Label runat="server" Text='<%#Eval("USERNAME") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("FULL_NAME") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("DOB") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("GENDER") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("COUNTRY") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("ROLE") %>' /></td>

                               
                                <td>

                                    <!-- Call to action buttons -->
                                    <ul class="list-inline m-0">


                                        <li class="list-inline-item">
                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" Text="Add Rev." CommandArgument='<%#Eval("USER_ID") %>' class="btn btn-success btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="LinkButton1" OnClientClick="return confirm('Are you sure you want to delete this item?');" CommandName="Delete" Text="Delete" CommandArgument='<%#Eval("USER_ID") %>' class="btn btn-danger btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="delete"><i class="fa fa-trash"></i></asp:LinkButton>

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
     <script>
         $('#ContentPlaceHolder1_txtDOB').datepicker({
             autoclose: true
         });
     </script>
</asp:Content>

