<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/employeehome.Master" AutoEventWireup="true" CodeBehind="viewleavestatus.aspx.cs" Inherits="PayrollManagementSystem.Employee.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <div class="container-fluid">
            <h1 class="jumbotron">View Leave Status<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT l.Id,l.emp_id_leave,l.leavetype, l.startingdate,l.endingdate,l.duration,l.reason,l.status FROM Employee AS e INNER JOIN leave_requests AS l ON l.emp_id_leave=e.employeeid AND e.username=@username
" >
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" />
                </SelectParameters>
                </asp:SqlDataSource>
                </h1>
            <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                &nbsp;
           
                
          
            
            </div>
        <p>
             <asp:GridView ID="GridView1" EmptyDataText="No Requests  found !" runat="server" AutoGenerateColumns="False"  CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="emp_id_leave" HeaderText="Eid" SortExpression="emp_id_leave" />
                    <asp:BoundField DataField="leavetype" HeaderText="Type" SortExpression="leavetype" />
                    <asp:BoundField DataField="startingdate" HeaderText="Startdate" SortExpression="startingdate" />
                    <asp:BoundField DataField="endingdate" HeaderText="Enddate" SortExpression="endingdate" />
                    <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration" />
                    <asp:BoundField DataField="reason" HeaderText="Reason" SortExpression="reason" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    </Columns>
                 </asp:GridView>
        
        </p>
        </form>
    
</asp:Content>
