<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="addincentive.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #ccc;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>
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
                    <asp:TextBox ID="employeeid" runat="server" CssClass="auto-style1" MaxLength="50" AutoPostBack="True" Width="217px" required="required"></asp:TextBox>
                </div>
                
               </div>
            <label class="control-label col-sm-2" for="ename">Name:</label>
            &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="ename" runat="server"></asp:Label>
            <br />
            <br />

            <label class="control-label col-sm-2" for="bsalary">Basesalary:</label>
              &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="bsalary" runat="server"></asp:Label>
            <h3>Allowance in Percentage(%):</h3>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dap">DA:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="dap" runat="server" CssClass="auto-style1" MaxLength="50" Width="225px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="tap">TA:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="tap" runat="server" CssClass="auto-style1" MaxLength="50" Width="222px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="medicalp">Medical:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="medicalp" runat="server" CssClass="auto-style1" MaxLength="50" Width="218px"></asp:TextBox>
                </div>
                </div>
            <h3>Allowance in Rupess(Rs):</h3>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dar">DA:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="dar" runat="server" CssClass="auto-style1" MaxLength="50" Width="217px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="tar">TA:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="tar" runat="server" CssClass="auto-style1" MaxLength="50" Width="215px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="mdeicalr">Medical:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="medicalr" runat="server" CssClass="auto-style1" MaxLength="50" Width="217px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="total">Total:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="total" runat="server" CssClass="auto-style1" MaxLength="50" Width="213px"></asp:TextBox>
                </div>
                </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="getin" runat="server" Text="Get" CssClass="btn btn-primary" OnClick="getin_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="addin" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="Addin_Click" />
              </div>
                </div>
       
            
            









            

            </form>
        </div>
            
     
</asp:Content>
