<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="Compose.aspx.cs" Inherits="CloudForensics.Compose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- ================== BEGIN page-css ================== -->
    <link href="assets/plugins/tag-it/css/jquery.tagit.css" rel="stylesheet" />
    <link href="assets/plugins/summernote/dist/summernote-lite.css" rel="stylesheet" />

    <!-- ================== END page-css ================== -->
    <style>
        .mailbox {
    height: 12%;
    display: flex;
    flex-direction: column;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BEGIN #content -->
    <div id="content" class="app-content p-3">
        <!-- BEGIN card -->
        <div class="card h-100">
            <!-- BEGIN mailbox -->
            <div class="mailbox">
                <!-- BEGIN mailbox-toolbar -->

                <!-- BEGIN mailbox-toolbar -->
                <div class="mailbox-toolbar">
                    <div class="mailbox-toolbar-item"><span class="mailbox-toolbar-text">New Message</span></div>
                    <div class="mailbox-toolbar-item">
                        <asp:LinkButton runat="server" Text="Send" class="mailbox-toolbar-link active" OnClick="btnSend_Click" />
                    </div>
                    <div class="mailbox-toolbar-item"><a href="Compose" class="mailbox-toolbar-link"><i class="fa fa-times fa-fw"></i>Cancel</a></div>
                </div>
                <!-- END mailbox-toolbar -->
            </div>

            <!-- END mailbox-toolbar -->
            <!-- BEGIN mailbox-body -->
            <div class="mailbox-body">
                <div class="mailbox-content">
                    <!-- BEGIN scrollbar -->
                    <div data-scrollbar="true" data-height="100%">
                        <div class="mailbox-formhf">

                            <div class="mailbox-form-header">
                                <div class="row mb-2">
                                    <label class="col-form-label w-100px px-2 fw-500 text-lg-end">To:</label>
                                    <div class="col-lg">
                                        <asp:TextBox runat="server" class="form-control" ID="txtEmailTo" />
                                    </div>
                                </div>

                                <div class="row mb-0" >

                                    <label class="col-form-label w-100px px-2 fw-500 text-lg-end">Subject:</label>
                                    <div class="col-lg">
                                        <asp:TextBox runat="server" ID="txtSubject" class="form-control" placeholder="Email subject" />
                                    </div>
                                </div>

                                <div class="row mb-0" style="margin-top: 10px;">
                                    <label class="col-form-label w-100px px-2 fw-500 text-lg-end">Upload:</label>
                                    <div class="col-lg">
                                        <asp:FileUpload runat="server" ID="Attachment" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <asp:TextBox runat="server" ID="txtBody" TextMode="MultiLine" CssClass="summernote form-control" />

                        </div>
                        <asp:Literal runat="server" ID="Alert" />
                    </div>
                    <!-- END scrollbar -->
                </div>
            </div>
            <!-- END mailbox-body -->

            <!-- END mailbox -->

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


    <!-- END #content -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- ================== BEGIN page-js ================== -->
    <script src="assets/plugins/jquery-migrate/dist/jquery-migrate.min.js"></script>
    <script src="assets/plugins/tag-it/js/tag-it.min.js"></script>
    <script src="assets/plugins/summernote/dist/summernote-lite.min.js"></script>
    <script src="assets/js/demo/email-compose.demo.js"></script>
    <!-- ================== END page-js ================== -->
</asp:Content>
