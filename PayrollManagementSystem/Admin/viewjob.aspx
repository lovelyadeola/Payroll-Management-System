<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <div class="container-fluid">
            <h1 class="jumbotron">Job details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [jobdetails] WHERE [job_id] = @job_id" InsertCommand="INSERT INTO [jobdetails] ([job_title], [job_description], [emp_id_job]) VALUES (@job_title, @job_description, @emp_id_job)" SelectCommand="SELECT * FROM [jobdetails]" UpdateCommand="UPDATE [jobdetails] SET [job_title] = @job_title, [job_description] = @job_description, [emp_id_job] = @emp_id_job WHERE [job_id] = @job_id" >
                <DeleteParameters>
                    <asp:Parameter Name="job_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="job_description" Type="String" />
                    <asp:Parameter Name="emp_id_job" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="job_title" Type="String" />
                    <asp:Parameter Name="job_description" Type="String" />
                    <asp:Parameter Name="emp_id_job" Type="Int32" />
                    <asp:Parameter Name="job_id" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
            </h1>
        </div>
        <p>
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="job_id">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="job_id" HeaderText="Jobid" ReadOnly="True" SortExpression="job_id" InsertVisible="False" />
                    <asp:BoundField DataField="job_title" HeaderText="Designation" SortExpression="job_title">
                    </asp:BoundField>
                    <asp:BoundField DataField="job_description" HeaderText="Description" SortExpression="job_description" />
                    <asp:BoundField DataField="emp_id_job" HeaderText="Eid" SortExpression="emp_id_job" />
                    </Columns>
                </asp:GridView>
        
    </form>
</asp:Content>
