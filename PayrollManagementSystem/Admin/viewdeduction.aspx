<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewdeduction.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server" method="post">
        <div class="container-fluid">
            <h1 class="jumbotron">View Deduction<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT e.employeeid, e.firstname, e.basesalary, d.amount, d.deduction_id, d.month, d.year, d.TDS, d.eleave FROM Employee AS e INNER JOIN Deduction_details AS d ON e.employeeid = d.emp_id_deducts">

                                                   </asp:SqlDataSource>
            </h1>
            </div>
         <p>
              
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="employeeid,deduction_id">
                <Columns>
                    <asp:BoundField DataField="employeeid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="employeeid" />
                    <asp:BoundField DataField="firstname" HeaderText="Name" SortExpression="firstname" />
                    <asp:BoundField DataField="basesalary" HeaderText="Salary" SortExpression="basesalary" />
                    <asp:BoundField DataField="amount" HeaderText="Total" SortExpression="amount" />
                    <asp:BoundField DataField="deduction_id" HeaderText="Did" InsertVisible="False" ReadOnly="True" SortExpression="deduction_id" />
                    <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
                    <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                    <asp:BoundField DataField="TDS" HeaderText="TDS" SortExpression="TDS" />
                    <asp:BoundField DataField="eleave" HeaderText="Leave" SortExpression="eleave" />
                    </Columns>
                </asp:GridView>
       
         </p>
         </form>
    
   
</asp:Content>
