<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CloudForensics.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
	<meta charset="utf-8" />
	<title>CF | Login</title>
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
						<asp:Label runat="server" ID="lblMessage" Text="" style="font-size: medium;font-weight: 600;color:#ff6060"  Visible="false"/>
					</div>
					<div class="mb-3">
						<label class="form-label">Email Address <span class="text-danger">*</span></label>
						<asp:TextBox runat="server" ID="txtUsername" TextMode="Email" CssClass="form-control form-control-lg bg-white bg-opacity-5" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

					</div>
					<div class="mb-3">
						<div class="d-flex">
							<label class="form-label">Password <span class="text-danger">*</span></label>
							<a href="Forgot-password" class="ms-auto text-white text-decoration-none text-opacity-50">Forgot password?</a>
						</div>
						<asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control form-control-lg bg-white bg-opacity-5" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

					</div>
					<div class="mb-3">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="customCheck1" />
							<label class="form-check-label" for="customCheck1">Remember me</label>
						</div>
					</div>
					
					<asp:Button runat="server" ID="btnLogin" Text="Sign In" CssClass="btn btn-outline-theme btn-lg d-block w-100 fw-500 mb-3" OnClick="btnLogin_Click" ValidationGroup="Validate" />
					<div class="text-center text-white text-opacity-50">
						Don't have an account yet? <a href="Registration">Sign up</a>.
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
