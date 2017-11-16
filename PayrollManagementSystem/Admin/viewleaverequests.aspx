<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewleaverequests.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        <div class="container-fluid">
            <h1 class="jumbotron">Leave Requests
                </h1>
            
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [leave_requests] WHERE [Id] = @Id" InsertCommand="INSERT INTO [leave_requests] ([emp_id_leave], [leavetype], [startingdate], [endingdate], [duration], [reason], [status]) VALUES (@emp_id_leave, @leavetype, @startingdate, @endingdate, @duration, @reason, @status)" SelectCommand="SELECT * FROM [leave_requests]" UpdateCommand="UPDATE [leave_requests] SET [emp_id_leave] = @emp_id_leave, [leavetype] = @leavetype, [startingdate] = @startingdate, [endingdate] = @endingdate, [duration] = @duration, [reason] = @reason, [status] = @status WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="emp_id_leave" Type="Int32" />
                <asp:Parameter Name="leavetype" Type="String" />
                <asp:Parameter Name="startingdate" Type="String" />
                <asp:Parameter Name="endingdate" Type="String" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="reason" Type="String" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="emp_id_leave" Type="Int32" />
                <asp:Parameter Name="leavetype" Type="String" />
                <asp:Parameter Name="startingdate" Type="String" />
                <asp:Parameter Name="endingdate" Type="String" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="reason" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-responsive table-condensed" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="emp_id_leave" HeaderText="emp_id_leave" SortExpression="emp_id_leave" />
                <asp:BoundField DataField="leavetype" HeaderText="leavetype" SortExpression="leavetype" />
                <asp:BoundField DataField="startingdate" HeaderText="startingdate" SortExpression="startingdate" />
                <asp:BoundField DataField="endingdate" HeaderText="endingdate" SortExpression="endingdate" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="reason" HeaderText="reason" SortExpression="reason" />
                <asp:TemplateField HeaderText="status" SortExpression="status">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("status") %>'>
                            <asp:ListItem>pending</asp:ListItem>
                            <asp:ListItem>Approved</asp:ListItem>
                            <asp:ListItem>Canceled</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
         <div class="container-fluid" style="align-items:center;">
   
         <div class="form-group">
                <label class="control-label col-sm-2" for="employeeid">Employee id:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="employeeid" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="employeeid_required" runat="server" ControlToValidate="employeeid" Text="*" ForeColor="Red" ErrorMessage="Please Enter Employeeid"/>
              </div>
             <br />
             <br />
            <div class="form-group">
                <label class="control-label col-sm-2" for="month">Month:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="month" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="month_required" runat="server" ControlToValidate="month" Text="*" ForeColor="Red" ErrorMessage="Please Enter Month"/>
              </div>
             <br />
             <br />

         <div class="form-group">
                <label class="control-label col-sm-2" for="year">Year:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="year" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="year_required" runat="server" ControlToValidate="year" Text="*" ForeColor="Red" ErrorMessage="Please Enter Year"/>
              </div>
             <br />
             <br />
         <div class="form-group">
                <label class="control-label col-sm-2" for="duration">Duration:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="duration" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="duration_required" runat="server" ControlToValidate="year" Text="*" ForeColor="Red" ErrorMessage="Please Enter Year"/>
              </div>
             <br />
             <br />
         <div class="form-group">
                <label class="control-label col-sm-2" for="type">Type:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="type" runat="server"  CssClass="form-control" MaxLength="50" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="type_required" runat="server" ControlToValidate="type" Text="*" ForeColor="Red" ErrorMessage="Please Enter Type"/>
              </div>
             <br />
             <br />
           
           
           
           <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="add" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_Click" CausesValidation="true"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </div>
              </div>
             </div>
        

    </form>
</asp:Content>
