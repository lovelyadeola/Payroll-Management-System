<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form runat="server">
        <asp:label ID="message_text" Visible="false" runat="server" CssClass="alert alert-info"></asp:label>
        <h2 class ="jumbotron">
            Welcome, <asp:Label ID="username_text" runat="server"></asp:Label>
        </h2>
            <p class ="jumbotron">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="search" runat="server" CssClass="auto-style1" MaxLength="50" Width="210px"></asp:TextBox>
            &nbsp;<asp:Button ID="search_btn" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="search_btn_Click" CausesValidation="true"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </p>
    <div>
                <span>
                    <asp:FormView ID="FormView1" runat="server" CssClass="table table-bordered" DataSourceId="SqlDataSource1">
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
                </asp:FormView>
                </span>             
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [firstname], [lastname], [dob],[gender],[country],[state],[address],[city],[pincode],[email],[mobileno],[username] FROM [Employee] WHERE ([username] = @username)" >
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="username" />
                </SelectParameters>

            </asp:SqlDataSource>
    
     <div>
                <span>
                    <asp:FormView ID="FormView2" runat="server" CssClass="table table-bordered">
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
                </asp:FormView>
                </span>             
         <asp:Button ID="Export" runat="server" Text="Export" CssClass="btn btn-primary" OnClick="Export_Click" />
            </div>
            

            </form>
        </div>
    
</asp:Content>
