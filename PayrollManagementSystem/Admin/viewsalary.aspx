<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewsalary.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <div class="container-fluid">
            <h1 class="jumbotron"> Salary details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [sales] WHERE [id] = @id" InsertCommand="INSERT INTO [sales] ([employeeidsalary], [year], [month], [basesalary]) VALUES (@employeeidsalary, @year, @month, @basesalary)" SelectCommand="SELECT * FROM [Salary]" UpdateCommand="UPDATE [sales] SET [employeeidsalary] = @employeeidsalary, [year] = @year, [month] = @month, [basesalary] = @basesalary WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="employeeidsalary" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="basesalary" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="employeeidsalary" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="basesalary" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>

                                                   </asp:SqlDataSource>
                </h1>
            </div>
        <p>
              
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="id">
                <Columns>

                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="employeeidsalary" HeaderText="Eid" SortExpression="employeeidsalary" />
                    <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                    <asp:BoundField DataField="basesalary" HeaderText="basesalary" SortExpression="basesalary" />

                    </Columns>
                </asp:GridView>
         
        </form>
     
</asp:Content>
