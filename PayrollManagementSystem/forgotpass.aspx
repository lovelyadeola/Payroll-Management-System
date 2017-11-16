<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="PayrollManagementSystem.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payroll Management System - Forgot Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
            <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" Text="Email Address"></asp:Label>
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                </div>
                
                <asp:RequiredFieldValidator ID="RV1" runat="server" 
                                ControlToValidate="txtEmail" 
                             ErrorMessage="Please Enter EmailID" 
                           SetFocusOnError="True">*
                    </asp:RequiredFieldValidator>
              </div>

            
              
              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="submit_btn" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="submit_btn_Click" CausesValidation="true"/>
                </div>
              </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="login_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
            </form>
    </div>
</asp:Content>
