<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminhome.Master" AutoEventWireup="true" CodeBehind="addemployee.aspx.cs" Inherits="PayrollManagementSystem.Admin.WebForm5" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid" style="align-items:center;">
        
        <form class="form-horizontal jumbotron col-sm-8" method="post" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <style type="text/css">
.ajax__calendar_container { z-index : 1000 ; }
</style>
            <div class="form-group">
                <div class="control-label" style="text-align:center; margin-bottom:20px;">
                    <asp:Label ID="message_lbl" runat="server" CssClass="alert alert-info fade in" Visible="false"></asp:Label>
                </div>
                
            </div>
            
            
            <label class="control-label col-sm-2" for="employeetype"> Employee Type:</label><div class="form group">
            <div class="col-sm-6">
                    <asp:DropDownList ID="employeetype" runat="server" CssClass="form-control" Width="172px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
                </div>
            <br />
            <br />
            <br />
            <br />
              
              <div class="form-group">
                <label class="control-label col-sm-2" for="Firstname">Firstname:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="Firstname" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="Firstname_required" runat="server" ControlToValidate="Firstname" Text="*" ForeColor="Red" ErrorMessage="Please Enter Firstname"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="Firstname">Lastname:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="Lastname" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="Lastname_required" runat="server" ControlToValidate="Lastname" Text="*" ForeColor="Red" ErrorMessage="Please Enter Lastname"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dob">Date Of Birth:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="dob" runat="server" CssClass="form-control" TextMode="Date" ToolTip="Enter the Date Of Birth" Width="200px"></asp:TextBox>
                    <ajax:CalendarExtender ID="dob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="dob" Format="dd-MM-yyyy">
                </ajax:CalendarExtender>

                </div>
                <asp:RequiredFieldValidator ID="dob_req" runat="server" ControlToValidate="dob" Text="*" ForeColor="Red" ErrorMessage="Please Enter Date Of Birth"/>
                </div>
            
            <label class="control-label col-sm-2" for="Gender">Gender:</label>
            <div class="form group">
            <div class="col-sm-6">
                    <asp:DropDownList ID="Gender" runat="server" CssClass="form-control" Width="172px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
                </div>
            <br />
            <br />

            <div class="form-group">
                <label class="control-label col-sm-2" for="country">Country:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="country" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="country_required" runat="server" ControlToValidate="country" Text="*" ForeColor="Red" ErrorMessage="Please Enter Country"/>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="state">State:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="state" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="state_required" runat="server" ControlToValidate="state" Text="*" ForeColor="Red" ErrorMessage="Please Enter State"/>
              </div>
            
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="city">City:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="city" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="city_required" runat="server" ControlToValidate="city" Text="*" ForeColor="Red" ErrorMessage="Please Enter City"/>
              </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="address">Address:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="address" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="address_required" runat="server" ControlToValidate="address" Text="*" ForeColor="Red" ErrorMessage="Please Enter Address"/>
              </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="pincode">Pincode:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="pincode" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="pincode_required" runat="server" ControlToValidate="pincode" Text="*" ForeColor="Red" ErrorMessage="Please Enter Pincode"/>
              </div>
            
            <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="email" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="email_required" runat="server" 
                    ControlToValidate="email" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="email_regularexpression" runat="server" 
                    ControlToValidate="email" ErrorMessage="Enter Proper Email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="mobileno">Mobileno:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="mobileno" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="mobileno_required" runat="server" 
                    ControlToValidate="mobileno" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="mobileno_regularexpression" runat="server" 
                    ControlToValidate="mobileno" ErrorMessage="Enter Proper mobileno" 
                    ValidationExpression="^([7-9]{1})([0-9]{9})"
                    ForeColor="Red"></asp:RegularExpressionValidator>
              </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="designation">Designation:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="designation" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="designation_required" runat="server" ControlToValidate="designation" Text="*" ForeColor="Red" ErrorMessage="Please Enter Designation"/>
              </div>
           
             <div class="form-group">
                <label class="control-label col-sm-2" for="doj">Date Of Join:</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="doj" runat="server" CssClass="form-control" TextMode="Date" ToolTip="Enter the Date Of Join" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="doj_required" runat="server" ControlToValidate="doj" Text="*" ForeColor="Red" ErrorMessage="Please Enter Date Of join"/>
                </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="basesalary">Base Salary:</label>
                <div class="col-sm-6">
                  <asp:TextBox ID="basesalary" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="basesalary_required" runat="server" ControlToValidate="basesalary" Text="*" ForeColor="Red" ErrorMessage="Please Enter BaseSalary"/>
              </div>
            

           

            
            







            <asp:UpdatePanel ID="username_update_panel" runat="server">
                <ContentTemplate>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="username">Username:</label>
                            <div class="col-sm-6"> 
                              <asp:TextBox ID="username" runat="server" MaxLength="20" CssClass="form-control" OnChange ="CheckUserName(this)" Width="200px"></asp:TextBox>
                            </div>
                        <asp:Label ID="lblStatus" runat="server" EnableViewState="true"></asp:Label>
                        <asp:RequiredFieldValidator ID="username_required" runat="server" ControlToValidate="username" Text="*" ForeColor="Red" ErrorMessage="Please Enter Username"/>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="password">Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="password" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password" Width="200px"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="password_required" runat="server" ControlToValidate="password" Text="*" ForeColor="Red" ErrorMessage="Please Enter Password"/>
              </div>
            
              <div class="form-group">
                <label class="control-label col-sm-2" for="cnfpassword">Confirm Password:</label>
                <div class="col-sm-6"> 
                  <asp:TextBox ID="cnfpassword" runat="server" CssClass="form-control" CausesValidation="True" TextMode="Password" Width="200px"></asp:TextBox>
                </div>
                  <asp:RequiredFieldValidator ID="cnfpass_required" runat="server" ControlToValidate="cnfpassword" Text="*" ForeColor="Red" ErrorMessage="Please Confirm The Password"/>
                  <asp:CompareValidator ID="passvalidate" runat="server" ControlToValidate="cnfpassword" ControlToCompare="password" ErrorMessage="Passwords Do Not Match !" CssClass="alert alert-danger"/>
              </div>
            
         


              <div class="form-group"> 
                <div class="col-sm-offset-2 col-sm-10">
                    <asp:Button ID="add_button" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_button_Click" CausesValidation="true"/>
                    <asp:Label ID="add_msg" runat="server" Visible="false"></asp:Label>
                </div>
              </div>

            <div class="form-group">
                <div class="col-sm-8">
                    <asp:ValidationSummary ID="add_summary" runat="server" CssClass="alert alert-danger" />
                </div>
            </div>
            <asp:HiddenField ID="hidden" runat="server" />
            </form>
    </div>
    <script type="text/javascript">  
  
        function CheckUserName(oName) 
        {
            PageMethods.UserNameChecker(oName.value, OnSucceeded); 
        }

        function OnSucceeded(result, userContext, methodName) 
        {   
            lbl = document.getElementById('<%=lblStatus.ClientID %>'); 

            if (methodName == "UserNameChecker") 
            { 
                if (result == true) 
                { 
                    lbl.textContent = 'username not available'; 
                    lbl.style.color = "red"; 
                } 
                else 
                { 
                    lbl.textContent = 'username available';
                    lbl.style.color = "green"; 
                }
                document.getElementById('<%=hidden.ClientID %>').value = lbl.innerHTML;
            } 
        }  
    </script>
</asp:Content>
