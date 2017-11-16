<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/employeehome.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PayrollManagementSystem.Employee.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form runat="server">
            <h1 class="jumbotron" style="text-align:center;">Welcome, <asp:Label ID="user_name" runat="server"></asp:Label></h1>
            <div>
                <span>
                    <asp:FormView ID="FormView1" runat="server" CssClass="table table-bordered" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                        <table class="table table-hover table-striped table-bordered">
                            <tr>
                                <td> First Name : </td>
                                <td><asp:Label ID="firstnameLabel" runat="server" Text='<%# Bind("firstname") %>' /></td>
                            </tr>
                            <tr>
                                <td>Last Name : </td>
                                <td><asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' /></td>
                            </tr>
                            <tr>
                                <td>Date of Birth : </td>
                                <td><asp:Label ID="dobLabel" runat="server" Text='<%# Bind("dob") %>' /></td>
                            </tr>
                            <tr>
                                <td>Gender : </td>
                                <td><asp:Label ID="genderLabel" runat="server" Text='<%# Bind("gender") %>' /></td>
                            </tr>
                            <tr>
                                <td>Country : </td>
                                <td><asp:Label ID="countryLabel" runat="server" Text='<%# Bind("country") %>' /></td>
                            </tr>
                            <tr>
                                <td>State : </td>
                                <td><asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' /></td>
                            </tr>
                            <tr>
                                <td>Address : </td>
                                <td><asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' /></td>
                            </tr>
                            <tr>
                                <td>City : </td>
                                <td><asp:Label ID="cityLabel" runat="server" Text='<%#Bind("city") %>' /></td>
                            </tr>
                            <tr>
                                <tr>
                                <td>Job : </td>
                                <td><asp:Label ID="joblabel" runat="server" Text='<%#Bind("designation") %>' /></td>
                            </tr>
                            <tr>
                                <tr>
                                <td>Basesalary : </td>
                                <td><asp:Label ID="salarylabel" runat="server" Text='<%#Bind("basesalary") %>' /></td>
                            </tr>
                            <tr>
                            
                            
                                <td>Pincode : </td>
                                <td><asp:Label ID="pincodeLabel" runat="server" Text='<%# Bind("pincode") %>' /></td>
                            </tr>
                            <tr>
                                <td>Email : </td>
                                <td><asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></td>
                            </tr>
                            <tr>
                                <td>Mobile No : </td>
                                <td><asp:Label ID="mobilenoLabel" runat="server" Text='<%# Bind("mobileno") %>' /></td>
                            </tr>
                            <tr>
                                <td>Username : </td>
                                <td><asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' /></td>
                            </tr>
                            </table>                           
                            </ItemTemplate>              
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:FormView>
                </span>             
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [dob],[gender],[country],[state],[address],[city],[designation],[basesalary],[pincode],[email],[mobileno],[username] FROM [Employee] WHERE ([username] = @username)" >
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" />
                </SelectParameters>

            </asp:SqlDataSource>
            

            </form>
        </div>
    
</asp:Content>
