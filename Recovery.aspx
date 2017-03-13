<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recovery.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Loan Service</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
  
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <img id="banner" src="banner1.JPG" alt="banner image" />
     <p style="color:red">
         <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Password Recovery"></asp:Label>
        </p>
        
        <table border="0" style="width:100%;height:100%">
            <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="#0099FF" Text="Email Address"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Size="Large" style="margin-left: 3px; margin-right: 0px;" Text="Recover Password" OnClick="Button1_Click1" />
            </td>

            </tr>
            <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0099FF" Font-Size="Large" OnClick="LinkButton1_Click">Go Back to Main Page </asp:LinkButton>
                </td>
           </tr>
        </table>
        <hr />
        <br />
        
        <br />
        
    </form>
</body>
</html>
