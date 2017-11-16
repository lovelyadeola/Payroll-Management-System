<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/employeehome.Master" AutoEventWireup="true" CodeBehind="generatepayslip.aspx.cs" Inherits="PayrollManagementSystem.Employee.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
                <div class="form-group">
                    <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="employeeid">Employee id:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="employeeid" runat="server" required="required" CssClass="form-control" MaxLength="50" Width="200px" AutoPostBack="True"></asp:TextBox>
                </div>
                </div>
                 
            <div class="form-group">
                <label class="control-label col-sm-2" for="year">Year:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="year" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="year_required" runat="server" ControlToValidate="year" Text="*" ForeColor="Red" ErrorMessage="Please Enter Year"/>
              </div>
             
             <div class="form-group">
                <label class="control-label col-sm-2" for="month">Month:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="month" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="month_required" runat="server" ControlToValidate="month" Text="*" ForeColor="Red" ErrorMessage="Please Enter Month"/>
              </div>
             <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="view" runat="server" Text="Check" CssClass="btn btn-primary" OnClick="view_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="show" runat="server" Text="ViewPaySlip" CssClass="btn btn-primary" Visible="false" CausesValidation="true" OnClick="show_Click"/>
                
                </div>
              </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="genrate_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
           
            </form>
         </div>
   
</asp:Content>
