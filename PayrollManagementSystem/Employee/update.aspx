<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/employeehome.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="PayrollManagementSystem.Employee.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <form runat="server">
            <asp:FormView ID="FormView1" runat="server" CssClass="table table-bordered table-hover table-responsive" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
                <EditItemTemplate>
                    <div class="form-group">
                    <table>
                        <tr>
                            <td>Lastname : </td>
                            <td>
                                <asp:TextBox ID="lastnameTextBox" runat="server" Text='<%# Bind("lastname") %>' CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="lastnameTextBoxReqd" runat="server" ControlToValidate="lastnameTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>City : </td>
                            <td>
                                <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="cityTextBoxReqd" runat="server" ControlToValidate="cityTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Pincode : </td>
                            <td>
                                <asp:TextBox ID="pincodeTextBox" runat="server" Text='<%# Bind("pincode") %>' CssClass="form-control"/>
                                <asp:RequiredFieldValidator ID="pincodeTextBoxReqd" runat="server" ControlToValidate="pincodeTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Email : </td>
                            <td>
                                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="emailTextBoxReqd" runat="server" ControlToValidate="emailTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile No : </td>
                            <td>
                                <asp:TextBox ID="mobilenoTextBox" runat="server" Text='<%# Bind("mobileno") %>' CssClass="form-control"/>
                                <asp:RequiredFieldValidator ID="mobilenoTextBoxReqd" runat="server" ControlToValidate="mobilenoTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Username : </td>
                            <td>
                                <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' CssClass="form-control"/>
                                <asp:RequiredFieldValidator ID="usernameTextBoxReqd" runat="server" ControlToValidate="usernameTextBox" Text="*" ForeColor="Red"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td><asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                            <td><asp:Button CssClass="btn btn-primary" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"/></td>
                        </tr>
                    </table>
                    </div>
                </EditItemTemplate>
                <EditRowStyle BackColor="#99ccff" />
                <FooterStyle BackColor="#99ccff" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#99ccff" Font-Bold="True" ForeColor="White" />
                 <ItemTemplate>
                    <table class="table table-hover table-bordered table-responsive table-striped">
                        <tr>
                            <td>Lastname :</td>
                            <td><asp:Label ID="lastnameLabel" runat="server" Text='<%# Bind("lastname") %>' /></td>
                        </tr>
                        <tr>
                            <td>
                                City:
                            </td>
                            <td><asp:Label ID="cityLabel" runat="server" Text='<%#Bind("city") %>' /></td>
                        </tr>
                        <tr>
                            <td>Pincode :</td>
                            <td><asp:Label ID="pincodeLabel" runat="server" Text='<%# Bind("pincode") %>' /></td>
                        </tr>
                        <tr>
                            <td>Email :</td>
                            <td><asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' /></td>
                        </tr>
                        <tr>
                            <td>Mobile No :</td>
                            <td><asp:Label ID="mobilenoLabel" runat="server" Text='<%# Bind("mobileno") %>' /></td>
                        </tr>
                        <tr>
                            <td>Username :</td>
                            <td><asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' /></td>
                        </tr>
                  
                  
                        <tr>
                            <td>
                                <asp:Button CssClass="btn btn-primary" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            </td>
                        </tr>
                        </table>
                     </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [lastname],[city],[pincode],[email],[mobileno],[username] FROM [Employee] WHERE([username]=@username);" UpdateCommand="UPDATE Employee SET lastname=@lastname,city=@city,pincode=@pincode,email=@email,mobileno=@mobileno,username=@username WHERE(username=@username);">
               <SelectParameters>
                   <asp:SessionParameter Name="username" SessionField="username" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="lastname" />
                   <asp:Parameter Name="city" />

                   <asp:Parameter Name="pincode" />
                   <asp:Parameter Name="email" />
                   <asp:Parameter Name="mobileno" />
                 
                   
                 
                   <asp:Parameter Name="username" />
                 
                   
                 
               </UpdateParameters>

           </asp:SqlDataSource>
               </form>
        </div>
               
               
               
    
                        
</asp:Content>
