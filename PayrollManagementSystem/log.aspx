<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="PayrollManagementSystem.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payroll Management System- Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
            
            <div class="form-group">
                <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="Label1" runat="server" CssClass="alert alert-danger fade in" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
                <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                <label class="control-label col-sm-2" for="logintype">Login Type:</label>
            &nbsp;<div class="col-sm-6">
                    <asp:DropDownList ID="logintype" runat="server" CssClass="form-control">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
                </div>
              
              
            <div class="form-group">
                <label class="control-label col-sm-2" for="username">Username:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="username_required" runat="server" ControlToValidate="username" Text="*" ForeColor="Red" ErrorMessage="Please Enter Username"/>
              </div>

              <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="pwd" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="password_required" runat="server" ControlToValidate="pwd" Text="*" ForeColor="Red" ErrorMessage="Please Enter Password"/>
              </div>
              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="login_btn" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="login_btn_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
              </div>
            <a href="forgotpass.aspx">Forgot Password?</a>
            
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="login_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
            </form>
    </div>
</asp:Content>
