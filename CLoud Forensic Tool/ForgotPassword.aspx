<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CloudForensics.ForgotPassword" %>


<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>CF | Reset Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- ================== BEGIN core-css ================== -->
    <link href="assets/css/vendor.min.css" rel="stylesheet" />
    <link href="assets/css/app.min.css" rel="stylesheet" />
    <!-- ================== END core-css ================== -->

</head>
<body class='pace-top'>
    <!-- BEGIN #app -->
    <div id="app" class="app app-full-height app-without-header">
        <!-- BEGIN login -->
        <div class="login">
            <!-- BEGIN login-content -->
            <div class="login-content">
                <form runat="server" name="login_form">
                    <h1 class="text-center">Sign In</h1>
                    <div class="text-white text-opacity-50 text-center mb-4">
                        For your protection, please verify your identity.
				
                    </div>
                    <div class="mb-3">
						<asp:Label runat="server" ID="lblAlert" Text="" ForeColor="#ff6060"  style="font-size: medium;font-weight: 600;" Visible="false"/>
					</div>
                    <div class="mb-3">
                        <label class="form-label">Email Address <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtUsername" TextMode="Email" CssClass="form-control form-control-lg bg-white bg-opacity-5" ValidationGroup="ValidateOTP" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="ValidateOTP" />
                        <asp:Button runat="server" ID="btnGetOTP" Text="Get OTP" CssClass="btn btn-outline-theme btn-lg d-block w-100 fw-500 mb-3" OnClick="btnOtp_Click" ValidationGroup="ValidateOTP" />

                    </div>
                    <div class="mb-3">
                        <div class="d-flex">
                            <label class="form-label">OTP <span class="text-danger">*</span></label>
                        </div>
                        <asp:TextBox Enabled="false" runat="server" ID="txtOTP" TextMode="Password" CssClass="form-control form-control-lg bg-white bg-opacity-5" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator  runat="server" ControlToValidate="txtOTP" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

                    </div>
                    <div class="mb-3">
                        <div class="d-flex">
                            <label class="form-label">Password <span class="text-danger">*</span></label>
                        </div>
                        <asp:TextBox Enabled="false" runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control form-control-lg bg-white bg-opacity-5" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

                    </div>
                    
                  
                    <asp:Button runat="server" Enabled="false" ID="btnReset" Text="Reset Password" CssClass="btn btn-outline-theme btn-lg d-block w-100 fw-500 mb-3" OnClick="btnReset_Click" ValidationGroup="Validate" />
                    <div class="text-center text-white text-opacity-50">
                        Login with an account ? <a href="Login">Sign In</a>.
				
                    </div>
                </form>
            </div>
            <!-- END login-content -->
        </div>
        <!-- END login -->

        <!-- BEGIN btn-scroll-top -->
        <a href="#" data-toggle="scroll-to-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
        <!-- END btn-scroll-top -->

    </div>
    <!-- END #app -->

    <!-- ================== BEGIN core-js ================== -->
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>
    <!-- ================== END core-js ================== -->

</body>

</html>

