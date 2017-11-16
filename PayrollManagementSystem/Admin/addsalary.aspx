<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="addsalary.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm10" %>
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
                <label class="control-label col-sm-2" for="employeeid">Employeeid:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="employeeid" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" AutoPostBack="True"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="employeeid_required" runat="server" ControlToValidate="employeeid" Text="*" ForeColor="Red" ErrorMessage="Please Enter employeeid"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="name">Name:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="name" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="name_required" runat="server" ControlToValidate="name" Text="*" ForeColor="Red" ErrorMessage="Please Enter name"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="employeeid">Year:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="year" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="year_required" runat="server" ControlToValidate="year" Text="*" ForeColor="Red" ErrorMessage="Please Enter year"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="month">Month:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="month" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="month_required" runat="server" ControlToValidate="month" Text="*" ForeColor="Red" ErrorMessage="Please Enter month"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="salary">BaseSalary:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="salary" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" ></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="salary_required" runat="server" ControlToValidate="salary" Text="*" ForeColor="Red" ErrorMessage="Please Enter salary"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="newsalary">NewBaseSalary:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="newsalary" runat="server" CssClass="auto-style1" MaxLength="50" Width="168px" ></asp:TextBox>
                </div>
                </div>
            
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="add" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_btn_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Button ID="modify" runat="server" Text="Modify" CssClass="btn btn-primary" OnClick="modify_Click" CausesValidation="true"/>
          </div>

              </div>
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="sal_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
           
           
            
            
            
    </form>
        </div>

</asp:Content>
