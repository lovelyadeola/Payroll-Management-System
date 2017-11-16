<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewleave.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        
        <div class="container-fluid">
            <h1 class="jumbotron">Leave details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [leave] WHERE [employeeidleave] = @employeeidleave AND [month] = @month AND [year] = @year" InsertCommand="INSERT INTO [leave] ([employeeidleave], [month], [year], [el], [cl], [sl]) VALUES (@employeeidleave, @month, @year, @el, @cl, @sl)" SelectCommand="SELECT [employeeidleave], [month], [year], [el], [cl], [sl] FROM [leave]" UpdateCommand="UPDATE [leave] SET [el] = @el, [cl] = @cl, [sl] = @sl WHERE [employeeidleave] = @employeeidleave AND [month] = @month AND [year] = @year" >
                <DeleteParameters>
                    <asp:Parameter Name="employeeidleave" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="employeeidleave" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                    <asp:Parameter Name="el" Type="Int32" />
                    <asp:Parameter Name="cl" Type="Int32" />
                    <asp:Parameter Name="sl" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="el" Type="Int32" />
                    <asp:Parameter Name="cl" Type="Int32" />
                    <asp:Parameter Name="sl" Type="Int32" />
                    <asp:Parameter Name="employeeidleave" Type="Int32" />
                    <asp:Parameter Name="month" Type="Int32" />
                    <asp:Parameter Name="year" Type="Int32" />
                </UpdateParameters>

              </asp:SqlDataSource> 
                </h1>
            </div>
        <p>
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="employeeidleave,month,year" >
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="employeeidleave" HeaderText="Eid" ReadOnly="True" SortExpression="employeeidleave" />
                    <asp:BoundField DataField="month" HeaderText="Month" ReadOnly="True" SortExpression="month" />
                    <asp:BoundField DataField="year" HeaderText="Year" ReadOnly="True" SortExpression="year" />
                    <asp:BoundField DataField="el" HeaderText="EL" SortExpression="el" />
                    <asp:BoundField DataField="cl" HeaderText="CL" SortExpression="cl" />
                    <asp:BoundField DataField="sl" HeaderText="SL" SortExpression="sl" />
                    </Columns>
                </asp:GridView>
            </p>
         
            </form>  
                 
</asp:Content>
