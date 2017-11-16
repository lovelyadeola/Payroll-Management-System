<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="adddeduction.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm9" %>
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
                    <asp:TextBox ID="employeeid" runat="server" CssClass="auto-style1" MaxLength="50" AutoPostBack="True" Width="200px" required="required"></asp:TextBox>
                </div>
                
               </div>
            <label class="control-label col-sm-2" for="ename">Name:</label>
            &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="ename" runat="server"></asp:Label>
            <br />
            <br />

            <label class="control-label col-sm-2" for="bsalary">Basesalary:</label>
              &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="bsalary" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <div class="form-group">
                <label class="control-label col-sm-2" for="tds">TDS(in Rs):</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="tds" runat="server" CssClass="auto-style1" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="ltaken">Leaves taken by Employee:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="ltaken" runat="server" CssClass="auto-style1" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dleave">Deduction due to leave(in Rs):</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="dleave" runat="server" CssClass="auto-style1" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                </div>
           
            <div class="form-group">
                <label class="control-label col-sm-2" for="total">Total Deduction(in Rs):</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="total" runat="server" CssClass="auto-style1" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                </div>
            <br />
            <br />
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="get" runat="server" Text="Get" CssClass="btn btn-primary" OnClick="get_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="deduct" runat="server" Text="Deduct" CssClass="btn btn-primary" OnClick="deduct_Click" />
              </div>
                </div>
        
       
            

            
            
            
           
            </form>
        </div>
    
</asp:Content>
