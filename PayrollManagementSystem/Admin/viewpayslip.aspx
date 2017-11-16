<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewpayslip.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" method="post">
        
        <div class="container-fluid">
            <h1 class="jumbotron">Payroll details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [payrolldetails] WHERE [pid] = @pid" InsertCommand="INSERT INTO [payrolldetails] ([employeeidpayroll], [year], [month], [deduction], [incentive], [netpay]) VALUES (@employeeidpayroll, @year, @month, @deduction, @incentive, @netpay)" SelectCommand="SELECT [pid], [employeeidpayroll], [year], [month], [deduction], [incentive], [netpay] FROM [payrolldetails]" UpdateCommand="UPDATE [payrolldetails] SET [employeeidpayroll] = @employeeidpayroll, [year] = @year, [month] = @month, [deduction] = @deduction, [incentive] = @incentive, [netpay] = @netpay WHERE [pid] = @pid" >
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="employeeidpayroll" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="deduction" Type="Decimal" />
                    <asp:Parameter Name="incentive" Type="Decimal" />
                    <asp:Parameter Name="netpay" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="employeeidpayroll" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="deduction" Type="Decimal" />
                    <asp:Parameter Name="incentive" Type="Decimal" />
                    <asp:Parameter Name="netpay" Type="Decimal" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
   </h1>

            </div>
         <p>
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="pid">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                    <asp:BoundField DataField="employeeidpayroll" HeaderText="Eid" SortExpression="employeeidpayroll" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
                    <asp:BoundField DataField="deduction" HeaderText="Deduction" SortExpression="deduction" />
                    <asp:BoundField DataField="incentive" HeaderText="Incentive" SortExpression="incentive" />
                    <asp:BoundField DataField="netpay" HeaderText="Netpay" SortExpression="netpay" />
                </Columns>
         </asp:GridView>
         </form>
</asp:Content>
