<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="paysalary.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
            <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
            
             <div class="form-group">
                <label class="control-label col-sm-2" for="employeeid">Employee id:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="employeeid" runat="server" CssClass="form-control" MaxLength="50" AutoPostBack="True" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="employeeid_required" runat="server"  ControlToValidate="employeeid" Text="*" ForeColor="Red" ErrorMessage="Please Enter Employeeid"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="ename">Name:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="ename" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="ename_required" runat="server" ControlToValidate="ename" Text="*" ForeColor="Red" ErrorMessage="Please Enter name"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="bsalary">Base Salary:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="bsalary" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="bsalary_required" runat="server" ControlToValidate="bsalary" Text="*" ForeColor="Red" ErrorMessage="Please Enter salary"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="job">Job:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="job" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="job_required" runat="server" ControlToValidate="job" Text="*" ForeColor="Red" ErrorMessage="Please Enter Job"/>
              </div>

             <div class="form-group">
                <label class="control-label col-sm-2" for="td">Deduction(due to Tax):</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="td" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="td_required" runat="server" ControlToValidate="td" Text="*" ForeColor="Red" ErrorMessage="Please Enter tax deduction"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="ld">Deduction(due to Leave):</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="ld" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="ld_required" runat="server" ControlToValidate="ld" Text="*" ForeColor="Red" ErrorMessage="Please Enter leave deduction"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="inc"> Total Incentive:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="inc" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="inc_required" runat="server" ControlToValidate="inc" Text="*" ForeColor="Red" ErrorMessage="Please Enter Incentive"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="month">Month:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="month" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="month_required" runat="server" ControlToValidate="month" Text="*" ForeColor="Red" ErrorMessage="Please Enter Month"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="year">Year:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="year" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="year_required" runat="server" ControlToValidate="year" Text="*" ForeColor="Red" ErrorMessage="Please Enter Year"/>
              </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="netsalary">Net Salary:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="netsalary" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="netsalary_required" runat="server" ControlToValidate="netsalary" Text="*" ForeColor="Red" ErrorMessage="Please Enter NetSalary"/>
              </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="pay" runat="server" Text="Pay" CssClass="btn btn-primary" OnClick="pay_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
              </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="pay_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
            
            









            </form>
        </div>
    
</asp:Content>
