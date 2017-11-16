<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm4" %>
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
                <label class="control-label col-sm-2" for="jobtitle">Designation:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="jobtitle" runat="server" CssClass="auto-style1" MaxLength="50" Width="163px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="jobtitle_required" runat="server" ControlToValidate="jobtitle" Text="*" ForeColor="Red" ErrorMessage="Please Enter Designation"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="jobdescription">Description:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="jobdescription" runat="server" CssClass="auto-style1" MaxLength="50" Width="162px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="jobdescription_required" runat="server" ControlToValidate="jobdescription" Text="*" ForeColor="Red" ErrorMessage="Please Enter Description"/>
              </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="add" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_btn_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              </div>

              </div>
           <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="job_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
            
            
            





            </form>
        </div>

    
</asp:Content>
