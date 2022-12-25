<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Incidents.aspx.cs" Inherits="CloudForensics.Incidents" %>

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
            <li class="breadcrumb-item active">Incidents</li>
        </ul>

        <h1 class="page-header">Cyber Security Incidents 
           <%-- <a href="#" class="btn btn-primary" style="float: right;" id="clickButton" data-toggle="collapse" data-target="#Add" aria-expanded="false">
                <i class='fas fa-lg fa-fw me-2 fa-plus-circle'></i></a>--%>
        </h1>

        <hr class="mb-4">
        <div class="card " id="Add">
            <div class="card-body pb-2">

                <div class="row">
                    <div class="col-xl-6">
                         <div class="form-group mb-3">
                            <label class="form-label" for="dllHost">Host Server</label>
                            <asp:DropDownList runat="server" ID="ddlHost" CssClass="form-control" ValidationGroup="Validate" AutoPostBack="true" OnSelectedIndexChanged="dllHost_SelectedIndexChanged" />
                        </div>
                        
                        <div class="form-group mb-3">
                            <label class="form-label" for="ddlAttackTypes">Attack Type</label>
                            <asp:DropDownList runat="server" ID="ddlAttackTypes" CssClass="form-control" ValidationGroup="Validate">
                                <asp:ListItem Text="Malware" Value="Malware" />
                                <asp:ListItem Text="Viruses" Value="Viruses" />
                                <asp:ListItem Text="Trojans" Value="Trojans" />
                                <asp:ListItem Text="Worms" Value="Worms" />
                                <asp:ListItem Text="Ransomware" Value="Ransomware" />
                                <asp:ListItem Text="Rootkits" Value="Rootkits" />
                                <asp:ListItem Text="Spyware" Value="Spyware" />
                                <asp:ListItem Text="Credential Reuse" Value="Credential Reuse" />
                                <asp:ListItem Text="DLL Injection" Value="DLL Injection" />
                                <asp:ListItem Text="Birthday" Value="Birthday Attack" />
                                <asp:ListItem Text="Eavesdropping" Value="Eavesdropping Attack" />
                            </asp:DropDownList>
                            <asp:HiddenField runat="server" ID="hid" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlAttackTypes" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtDetectTime">Report Date</label>
                            <asp:TextBox runat="server" ID="txtReportDate" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtReportDate" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        
                      

                          <div class="form-group mb-3">
                            <label class="form-label" for="txtStartTime">Start Time</label>
                            <asp:TextBox runat="server" ID="txtStartTime" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtStartTime" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtDescp">Description</label>
                            <asp:TextBox runat="server" ID="txtDescp" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDescp" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                       
                         <div class="form-group mb-3">
                            <label class="form-label" for="txtPatchesAndFixes">Patches And Fixes</label>
                            <asp:TextBox runat="server" ID="txtPatchesAndFixes" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPatchesAndFixes" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtActor">Threat Actors</label>
                            <asp:TextBox runat="server" ID="txtActor" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtActor" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                        <div class="form-group mb-3">
                            <label class="form-label" for="txtvulnerability">vulnerability</label>
                            <asp:TextBox runat="server" ID="txtvulnerability" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtvulnerability" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                       


                    </div>
                    <div class="col-xl-6">
                          <div class="form-group mb-3">
                            <label class="form-label" for="ddlVM">Virtual Machiens</label>
                            <asp:DropDownList runat="server" ID="ddlVM" CssClass="form-control" ValidationGroup="Validate" AutoPostBack="true" OnSelectedIndexChanged="dllHost_SelectedIndexChanged" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="ddlFrequncy">History (frequency)</label>
                            <asp:DropDownList runat="server" ID="ddlFrequncy" CssClass="form-control" ValidationGroup="Validate">
                                <asp:ListItem Text="Low" Value="Low" />
                                <asp:ListItem Text="Medium" Value="Medium" />
                                <asp:ListItem Text="High" Value="High" />

                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlFrequncy" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtDetectTime">Detect Date/Time</label>
                            <asp:TextBox runat="server" ID="txtDetectTime" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetectTime" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                          <div class="form-group mb-3">
                            <label class="form-label" for="txtDetectTime">End Time</label>
                            <asp:TextBox runat="server" ID="txtEndTime" CssClass="form-control" ValidationGroup="Validate" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDetectTime" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                      
                        
                        <div class="form-group mb-3">
                            <label class="form-label" for="txtDetectTime">Assessment</label>
                            <asp:TextBox runat="server" ID="txtAssessment" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAssessment" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                         <div class="form-group mb-3">
                            <label class="form-label" for="txtAttackPatternsVectors">Attack Patterns Vectors</label>
                            <asp:TextBox runat="server" ID="txtAttackPatternsVectors" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAttackPatternsVectors" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>
                         <div class="form-group mb-3">
                            <label class="form-label" for="txtIndticator">Indticator</label>
                            <asp:TextBox runat="server" ID="txtIndticator" CssClass="form-control" ValidationGroup="Validate" TextMode="MultiLine" Rows="4" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtIndticator" ValidationGroup="Validate" ErrorMessage="This field is required." SetFocusOnError="true" ForeColor="#c35153" />
                        </div>

                         <div class="form-group mb-3">
                            <label class="form-label" for="txtIndticator">STIX Graph</label>
                            <asp:FileUpload runat="server" ID="FileUpload" CssClass="form-control" ValidationGroup="Validate"  />
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

            <h4>List of All the Cyber Incidents</h4>
            <div class="card">
                <div class="card-body">
                    <asp:Repeater runat="server" ID="rptHost" OnItemCommand="rptHost_ItemCommand">
                        <HeaderTemplate>
                            <table id="datatableDefault" class="table text-nowrap w-100">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>VM</th>
                                        <th>Report Date</th>
                                        <th>Detect Time</th>
                                        <th>Start Time</th>
                                        <th>End Time</th>
                                        <th>Attack Type</th>
                                        <th>Description</th>
                                        <th>Actor</th>
                                        <th>Indticator</th>
                                        <th>vulnerability</th>
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
                                    <asp:Label runat="server" Text='<%#Eval("MACHINEID").ToString() %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("ReportTime") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("DetectTime") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("StartTime") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("EndTime") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("AttackType") %>' /></td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("Description") %>' /></td>

                                  <td>
                                    <asp:Label runat="server" Text='<%#Eval("Actor") %>' /></td>
                                  <td>
                                    <asp:Label runat="server" Text='<%#Eval("Indticator") %>' /></td>
                                  <td>
                                    <asp:Label runat="server" Text='<%#Eval("vulnerability") %>' /></td>
                                <td>

                                    <!-- Call to action buttons -->
                                    <ul class="list-inline m-0">


                                        <li class="list-inline-item">
                                            <asp:HyperLink Visible='<%#Eval("Source").ToString().Length>=0 %>' NavigateUrl='<%#Eval("Source") %>' runat="server" ID="LinkButton3" class="btn btn-info btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Download Attachment"><i class="fa fa-download"></i></asp:HyperLink>
                                            <asp:LinkButton runat="server" ID="edit" CommandName="Edit" Text="Add Rev." CommandArgument='<%#Eval("IncidentID") %>' class="btn btn-success btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></asp:LinkButton>
                                            <asp:LinkButton runat="server" ID="LinkButton1" OnClientClick="return confirm('Are you sure you want to delete this item?');" CommandName="Delete" Text="Delete" CommandArgument='<%#Eval("IncidentID") %>' class="btn btn-danger btn-sm rounded-0" data-toggle="tooltip" data-placement="top" title="delete"><i class="fa fa-trash"></i></asp:LinkButton>

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
        $('#ContentPlaceHolder1_txtReportDate').datepicker({
            autoclose: true
        });
    </script>
</asp:Content>

