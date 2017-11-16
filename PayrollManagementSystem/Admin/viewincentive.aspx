<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewincentive.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        
        <div class="container-fluid">
            <h1 class="jumbotron">Incentive details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [incentive_details] WHERE [incentive_id] = @incentive_id" InsertCommand="INSERT INTO [incentive_details] ([emp_id_incentive], [DA], [TA], [Medical], [Total]) VALUES (@emp_id_incentive, @DA, @TA, @Medical, @Total)" SelectCommand="SELECT * FROM [incentive_details]" UpdateCommand="UPDATE [incentive_details] SET [emp_id_incentive] = @emp_id_incentive, [DA] = @DA, [TA] = @TA, [Medical] = @Medical, [Total] = @Total WHERE [incentive_id] = @incentive_id" >
                <DeleteParameters>
                    <asp:Parameter Name="incentive_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="emp_id_incentive" Type="String" />
                    <asp:Parameter Name="DA" Type="Decimal" />
                    <asp:Parameter Name="TA" Type="Decimal" />
                    <asp:Parameter Name="Medical" Type="Decimal" />
                    <asp:Parameter Name="Total" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="emp_id_incentive" Type="String" />
                    <asp:Parameter Name="DA" Type="Decimal" />
                    <asp:Parameter Name="TA" Type="Decimal" />
                    <asp:Parameter Name="Medical" Type="Decimal" />
                    <asp:Parameter Name="Total" Type="Decimal" />
                    <asp:Parameter Name="incentive_id" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
                </h1>

    </div>
         <p>
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="incentive_id">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="incentive_id" HeaderText="Incentiveid" InsertVisible="False" ReadOnly="True" SortExpression="incentive_id" />
                    <asp:BoundField DataField="emp_id_incentive" HeaderText="Employeeid" SortExpression="emp_id_incentive" />
                    <asp:BoundField DataField="DA" HeaderText="DA" SortExpression="DA" />
                    <asp:BoundField DataField="TA" HeaderText="TA" SortExpression="TA" />
                    <asp:BoundField DataField="Medical" HeaderText="Medical" SortExpression="Medical" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    </Columns>
                </asp:GridView>
       
        </form>
</asp:Content>
