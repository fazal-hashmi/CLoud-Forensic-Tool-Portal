<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inbox.aspx.cs" Inherits="CloudForensics.Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- BEGIN #content -->
    <div id="content" class="app-content p-3">
        <!-- BEGIN card -->
        <div class="card h-100">
            <!-- BEGIN mailbox -->
            <div class="mailbox">
                <!-- BEGIN mailbox-toolbar -->
                <div class="mailbox-toolbar">
                    <div class="mailbox-toolbar-item"><span class="mailbox-toolbar-text">Mailboxes</span></div>

                    <div class="mailbox-toolbar-item">
                        <asp:LinkButton runat="server" CssClass="mailbox-toolbar-link" Text="Inbox" ID="btnInbox" OnClick="btnInbox_Click" />
                    </div>
                    <%--<div class="mailbox-toolbar-item"><a href="Sent" class="mailbox-toolbar-link">Sent</a></div>--%>
                    <div class="mailbox-toolbar-item">
                        <asp:LinkButton runat="server" CssClass="mailbox-toolbar-link" Text="Sync" ID="btnSync" OnClick="btnSync_Click" />
                    </div>

                    <div class="mailbox-toolbar-item"><a href="Compose" class="mailbox-toolbar-link text-white bg-white bg-opacity-15">New Message <i class="fa fa-pen fs-12px ms-1"></i></a></div>
                </div>
                <!-- END mailbox-toolbar -->
                <!-- BEGIN mailbox-body -->
                <div class="mailbox-body">
                    <!-- BEGIN mailbox-sidebar -->
                    <div class="mailbox-sidebar d-none d-lg-block" style="min-width: 400px;">
                        <div data-scrollbar="true" data-height="100%" data-skip-mobile="true">
                            <div class="mailbox-list">

                                <asp:Repeater runat="server" ID="rptMailbox" OnItemCommand="rptMailbox_ItemCommand">
                                    <ItemTemplate>
                                        <div class="mailbox-list-item">
                                            <div class="mailbox-checkbox">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="" id="mailCheckbox7" />
                                                    <label class="form-check-label" for="mailCheckbox7"></label>
                                                </div>
                                            </div>
                                            <div class="mailbox-message">
                                                <asp:LinkButton CssClass="mailbox-list-item-link" runat="server" CommandName="Read" CommandArgument='<%#Eval("MailID") %>'>
                                               
                                                    <div class="mailbox-sender">
                                                        <span class="mailbox-sender-name">
                                                            <asp:Label Text='Alert' runat="server" />
                                                                </span>
                                                        <span class="mailbox-time"><asp:Label Text='<%#Eval("Ago") %>' runat="server" /></span>
                                                    </div>
                                                    <div class="mailbox-title"><asp:Label Text='<%#Eval("Subject") %>' runat="server" /></div>
                                                    <div class="mailbox-desc">
                                                        <asp:Label Text='<%#Eval("Message").ToString() %>' runat="server" />
											
                                                    </div>
                                                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                    <!-- END mailbox-sidebar -->
                    <!-- BEGIN mailbox-content -->
                    <div class="mailbox-content">
                        <!-- BEGIN scrollbar -->
                        <div data-scrollbar="true" data-height="100%">
                            <!-- BEGIN mailbox-detail -->
                            <div class="mailbox-detail">
                                <!-- BEGIN mail-detail-header -->
                                <div class="mailbox-detail-header">
                                    <div class="d-flex">
                                        <a href="#">
                                            <img src="assets/img/user/user-1.jpg" alt="" width="40" class="rounded-circle" />
                                        </a>
                                        <div class="flex-fill ms-3">
                                            <div class="d-lg-flex align-items-center">
                                                <div class="flex-1">
                                                    <div class="fw-600">
                                                        <asp:Label Text="" runat="server" ID="lblFrom" />


                                                    </div>
                                                    <div class="fs-12px text-white text-opacity-50 text-lg-end mt-lg-0 mt-3">
                                                        <asp:Label Text="" runat="server" ID="lblDate" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END mailbox-detail-header -->
                                    <!-- BEGIN mailbox-detail-content -->
                                    <div class="mailbox-detail-content">
                                        <h4 class="mb-3">
                                            <asp:Label Text="" runat="server" ID="lblSubject" /></h4>

                                        <!-- BEGIN mailbox-detail-body -->
                                        <div class="mailbox-detail-body">
                                            <asp:Label runat="server" ID="lblBody" />
                                        </div>
                                        <!-- END mailbox-detail-body -->
                                    </div>
                                    <!-- END mailbox-detail-content -->
                                </div>
                                <!-- END mailbox-detail -->
                            </div>
                            <!-- END scrollbar -->
                        </div>
                        <!-- END mailbox-content -->
                    </div>
                    <!-- END mailbox-body -->
                </div>
                <!-- END mailbox -->

                <!-- BEGIN card-arrow -->
           <%--     <div class="card-arrow">
                    <div class="card-arrow-top-left"></div>
                    <div class="card-arrow-top-right"></div>
                    <div class="card-arrow-bottom-left"></div>
                    <div class="card-arrow-bottom-right"></div>
                </div>--%>
                <!-- END card-arrow -->
            </div>
            <!-- END card -->
        </div>
        <!-- END #content -->
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
