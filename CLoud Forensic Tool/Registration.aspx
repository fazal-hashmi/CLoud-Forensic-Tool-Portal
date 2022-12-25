<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CloudForensics.Registration" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>CF | Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- ================== BEGIN core-css ================== -->
    <link href="assets/css/vendor.min.css" rel="stylesheet" />
    <link href="assets/css/app.min.css" rel="stylesheet" />
    <!-- ================== END core-css ================== -->
    <link href="/assets/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
    

</head>
<body class='pace-top'>
    <!-- BEGIN #app -->
    <div id="app" class="app app-full-height app-without-header">
        <!-- BEGIN register -->
        <div class="register">
            <!-- BEGIN register-content -->
            <div class="register-content">
                <form runat="server" name="register_form">
                    <h1 class="text-center">Sign Up</h1>
                    <p class="text-white text-opacity-50 text-center">One Admin ID is all you need to access all the Admin services.</p>
                     <div class="mb-3">
						<asp:Label runat="server" ID="lblMessage" Text="" style="font-size: medium;font-weight: 600;" Visible="false"/>
					</div>
                    <div class="mb-3">
                        <label class="form-label">Name <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control form-control-lg bg-white bg-opacity-5" placeholder="e.g John Smith" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />


                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email Address <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control form-control-lg bg-white bg-opacity-5" placeholder="username@address.com" TextMode="Email" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control form-control-lg bg-white bg-opacity-5" TextMode="Password" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />


                    </div>
                    <div class="mb-3">
                        <label class="form-label">Confirm Password <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtConfirmPassw" CssClass="form-control form-control-lg bg-white bg-opacity-5" TextMode="Password" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassw" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

                    </div>
                    <div class="mb-3">
                        <label class="form-label">Country <span class="text-danger">*</span></label>
                        <asp:DropDownList runat="server" ID="ddlCountries" CssClass="form-select form-select-lg bg-white bg-opacity-5" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCountries" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />


                    </div>
                    <div class="mb-3">
                        <label class="form-label">Gender <span class="text-danger">*</span></label>
                        <asp:DropDownList runat="server" ID="ddlGender" CssClass="form-select form-select-lg bg-white bg-opacity-5" ValidationGroup="Validate">
                            <asp:ListItem Value="M" Text="Male" />
                            <asp:ListItem Value="F" Text="Female" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlGender" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

                    </div>
                    <div class="mb-3">
                        <label class="form-label">Date of Birth <span class="text-danger">*</span></label>
                        <asp:TextBox runat="server" ID="txtDOB" CssClass="form-control form-control-lg bg-white bg-opacity-5" placeholder="dd/mm/yyyy" ValidationGroup="Validate" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOB" ErrorMessage="This field is required." ForeColor="#ff6060" ValidationGroup="Validate" />

                    </div>
                    <div class="mb-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="cboxRead" runat="server" />
                            <label class="form-check-label" for="cboxRead">I have read and agree to the <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>.</label>

                        </div>
                    </div>
                   
                    <div class="mb-3">
                        <asp:Button runat="server" ID="btnRegistration" CssClass="btn btn-outline-theme btn-lg d-block w-100" Text="Sign Up" OnClick="btnRegistration_Click" ValidationGroup="Validate" />
                    </div>

                    <div class="text-white text-opacity-50 text-center">
                        Already have an Admin ID? <a href="Login">Sign In</a>
                    </div>
                </form>
            </div>
            <!-- END register-content -->
        </div>
        <!-- END register -->

        <!-- BEGIN btn-scroll-top -->
        <a href="#" data-toggle="scroll-to-top" class="btn-scroll-top fade"><i class="fa fa-arrow-up"></i></a>
        <!-- END btn-scroll-top -->

    </div>
    <!-- END #app -->

    <!-- ================== BEGIN core-js ================== -->
    <script src="assets/js/vendor.min.js"></script>
    <script src="assets/js/app.min.js"></script>
    <!-- ================== END core-js ================== -->
    <script src="/assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- script -->
    <script>
        $('#txtDOB').datepicker({
            autoclose: true
        });
    </script>
</body>
</html>
