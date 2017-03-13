<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Loan Service</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
  
    <style type="text/css">
        .auto-style1 {
            width: 438px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <img id="banner" src="banner1.JPG" alt="banner image" />
    <ul class="breadcrumb" style="display:inline">
      

       
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click">Home</asp:LinkButton>
           <li style="color:blue">  | Login</li>
        <li style="color:blue;margin-left:91.6%"></li>
     </ul>  
     <h1 style="color:red">User Login</h1>
     <p style="color:red">If you are not a registered user,please click here:&nbsp;
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Register Now</asp:HyperLink>
        </p>
        
     <p style="color:blue">If you are a registered user,please enter your login credentials below</p>
        <p style="color:blue">
            <asp:Label ID="Label5" runat="server" Text="If you forgot password please click here"></asp:Label>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Recovery.aspx">Recover My Password</asp:HyperLink>
        </p>
        <table border="0" style="width:100%;height:100%">
            <tr>
            <td class="auto-style1"><asp:Label ID="Label1" runat="server" Text="User Id(Email Address):" ForeColor="Blue"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="*" ForeColor="Red"></asp:Label>
                </td>
            <td><asp:TextBox ID="username" runat="server" Height="42px" style="margin-left: 82px" Width="437px"></asp:TextBox>
                <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                            ValidationGroup="Group1" 
                                            ControlToValidate="username"
                                            ErrorMessage="User Id is a required field."
                                            ForeColor="Red"
                                            Display="Dynamic" CssClass="validtext">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"     
                                                ValidationGroup="Group1"    
                                                ErrorMessage="Invalid User ID" 
                                                ControlToValidate="username"     
                                                ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                                                ForeColor="Red" />
            </td>

            </tr>
            <tr>
            <td class="auto-style1"><asp:Label ID="Label2" runat="server" Text="Password:" ForeColor="Blue" Height="42px"></asp:Label>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
            <td><asp:TextBox ID="pwd" runat="server" style="margin-left: 82px; margin-right: 0px" Width="435px" Height="42px" TextMode="Password"></asp:TextBox> 
                <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="pwd"
                                            ErrorMessage="Password is required."
                                            ForeColor="Red"
                                            Display="Dynamic" CssClass="validtext" ValidationGroup="Group1"></asp:RequiredFieldValidator>
           </td>
           </tr>
        </table>
        
        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red" Text="* DENOTES REQUIRED FIELD"></asp:Label>
        <br />
        
        <br />
        
        <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="42px" style="margin-left: 332px; align-content:center" Text="Log In" Width="150px" ForeColor="Blue" OnClick="Button1_Click"  />
        
    </form>
</body>
</html>
