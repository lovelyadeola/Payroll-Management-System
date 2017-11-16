<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="viewemployeedetails.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" method="post">
        
        <div class="container-fluid">
            <h1 class="jumbotron">Employee details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [employeeid], [type], [firstname], [lastname], [dob], [gender], [state], [address], [city], [pincode], [email], [mobileno], [designation], [doj], [basesalary] FROM [Employee]" DeleteCommand="DELETE FROM [Employee] WHERE [employeeid] = @employeeid" InsertCommand="INSERT INTO [Employee] ([employeeid], [type], [firstname], [lastname], [dob], [gender], [state], [address], [city], [pincode], [email], [mobileno], [designation], [doj], [basesalary]) VALUES (@employeeid, @type, @firstname, @lastname, @dob, @gender, @state, @address, @city, @pincode, @email, @mobileno, @designation, @doj, @basesalary)" UpdateCommand="UPDATE [Employee] SET [type] = @type, [firstname] = @firstname, [lastname] = @lastname, [dob] = @dob, [gender] = @gender, [state] = @state, [address] = @address, [city] = @city, [pincode] = @pincode, [email] = @email, [mobileno] = @mobileno, [designation] = @designation, [doj] = @doj, [basesalary] = @basesalary WHERE [employeeid] = @employeeid">
                <DeleteParameters>
                    <asp:Parameter Name="employeeid" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="employeeid" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="pincode" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="doj" Type="String" />
                    <asp:Parameter Name="basesalary" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="pincode" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="mobileno" Type="String" />
                    <asp:Parameter Name="designation" Type="String" />
                    <asp:Parameter Name="doj" Type="String" />
                    <asp:Parameter Name="basesalary" Type="String" />
                    <asp:Parameter Name="employeeid" Type="String" />
                </UpdateParameters>
                </asp:SqlDataSource>
            </h1>
        </div>
        <p>
            <asp:GridView ID="GridView1" EmptyDataText="No Employee  found !" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-responsive table-condensed" AutoSizeColumnsMode="Fill" DataKeyNames="employeeid">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="employeeid" HeaderText="Id" ReadOnly="True" SortExpression="employeeid" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:BoundField DataField="firstname" HeaderText="Name" SortExpression="firstname" />
                    <asp:BoundField DataField="lastname" HeaderText="Surname" SortExpression="lastname" />
                    <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="mobileno" HeaderText="Mobileno" SortExpression="mobileno" />
                    <asp:BoundField DataField="designation" HeaderText="Job" SortExpression="designation" />
                    <asp:BoundField DataField="doj" HeaderText="DOJ" SortExpression="doj" />
                    <asp:BoundField DataField="basesalary" HeaderText="Basesalary" SortExpression="basesalary" />
                </Columns>
                </asp:GridView>
             
                
            
        </p>
    </form>
</asp:Content>
