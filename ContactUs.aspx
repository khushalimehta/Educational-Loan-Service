<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Loan Service</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
     <script type="text/javascript" src="contactinfor.js"></script>
</head>
<body onload="loadDoc()">
    <form id="form1" runat="server">
    <img id="banner" src="banner1.JPG" alt="banner image" />
        <ul class="breadcrumb" style="display:inline">
        
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click">Home</asp:LinkButton>
          <li style="color:blue">  | Contact Us</li>
        <li style="margin-left:84.0%;margin-right:2%"></li>
            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">Login</asp:LinkButton>
     </ul>  
    <table border="1" id = "ContactDetails" style="border-collapse:collapse;width:100%;border-color:red">
        
    
    </table>
        <p style="color:blue;font-size:20px;text-align:center"><b>You must be logged in to send us a message</b></p>
        <p style="color:red;font-size:25px;text-align:center"><b>Please type your message below and click the Send Message button.</b></p>
    <asp:TextBox rows="25" runat="server" style="width:100%" id ="textarea" TextMode="MultiLine" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" ForeColor="Blue" OnClick="Button1_Click" style="margin-left: 500px" Text="Send Message" Width="260px" />
        <br />
        
        <br />
    </form>
</body>
</html>
