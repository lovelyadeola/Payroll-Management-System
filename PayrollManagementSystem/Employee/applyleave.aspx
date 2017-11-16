<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/employeehome.Master" AutoEventWireup="true" CodeBehind="applyleave.aspx.cs" Inherits="PayrollManagementSystem.Employee.WebForm7" %>
<%@ Register assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <style type="text/css">
.ajax__calendar_container { z-index : 1000 ; }
</style>
            <div class="form-group">
                <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                
            </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="employeeid">Employee id:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="employeeid" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="employeeid_required" runat="server" ControlToValidate="employeeid" Text="*" ForeColor="Red" ErrorMessage="Please Enter Employeeid"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="ename">Name:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="ename" runat="server" CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="ename_required" runat="server" ControlToValidate="ename" Text="*" ForeColor="Red" ErrorMessage="Please Enter name"/>
              </div>
            <div class="form-group">
            <label class="control-label col-sm-2" for="leavetype">Leave Type:</label>
            <div class="col-sm-6">
                
            <asp:DropDownList ID="leavetype" runat="server" CssClass="form-control" Width="200px">
                            <asp:ListItem Value="cl">casual</asp:ListItem>
                            <asp:ListItem Value="sl">sick</asp:ListItem>
                            <asp:ListItem Value="el">other</asp:ListItem>
                        </asp:DropDownList>
                
                </div>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="sdate">Starting Date:</label>
            
            <div class="col-sm-6">
            <asp:TextBox ID="sdate" TextMode="Date" runat="server" CssClass="form-control" Width="200px" ></asp:TextBox>
                        <ajax:CalendarExtender ID="sdate_cal" runat="server" TargetControlId="sdate" Enabled="true" Format="dd-MM-yyyy"></ajax:CalendarExtender>
                    
                  </div>
                <asp:RequiredFieldValidator ID="sdate_required" runat="server" ControlToValidate="sdate" Text="*" ForeColor="Red" ErrorMessage="Please Enter starting date"/>
              
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="edate">Ending Date:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="edate" Textmode="Date"  CssClass="form-control" runat="server" AutoPostBack="true" Width="200px"></asp:TextBox>
                        <ajax:CalendarExtender ID="edate_cal" runat="server" Enabled="true" TargetControlId="edate" Format="dd-MM-yyyy"></ajax:CalendarExtender>
                    
                </div>
                <asp:RequiredFieldValidator ID="edate_required" runat="server" ControlToValidate="edate" Text="*" ForeColor="Red" ErrorMessage="Please Enter ending date"/>
              
            
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="duration">Duration:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="duration" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                    
                </div>
                <asp:RequiredFieldValidator ID="duration_required" runat="server" ControlToValidate="duration" Text="*" ForeColor="Red" ErrorMessage="Please Enter duration"/>
              
                
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="reason">Reason:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="reason" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                    
                </div>
                <asp:RequiredFieldValidator ID="reason_required" runat="server" ControlToValidate="reason" Text="*" ForeColor="Red" ErrorMessage="Please Enter Reason"/>
              
                
            </div>
            <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="apply" runat="server" Text="Apply" CssClass="btn btn-primary" OnClick="apply_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
              </div>
            
            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="leave_err_sum" CssClass="alert alert-danger" runat="server" />
                </div>
            </div>
            



    </form>
        </div>
</asp:Content>
