<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="deleteemployee.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payroll Management System - Delete Employee List</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <h1>Delete Employee List</h1> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Employee where employeeid=@employeeid" SelectCommand="SELECT employeeid,firstname,lastname,username FROM Employee">
                <DeleteParameters>
                    <asp:Parameter Name="employeeid" />
                </DeleteParameters>
                </asp:SqlDataSource>
            <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" EmptyDataText="No Employees Found !" runat="server" CssClass="table table-responsive table-hover" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <Columns>
                    <asp:BoundField DataField="employeeid" HeaderText="Employee ID" InsertVisible="False" ReadOnly="True" SortExpression="Employee_Id" />
                    <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="Username" />
                   
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" />
                </Columns>
            </asp:GridView>
    </div>
    </form>
</asp:Content>
