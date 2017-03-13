<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Student Loan Service</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    
     
</head>
<body>
    <form id="form1" runat="server">
    <img id="banner" src="banner1.JPG" alt="banner image" />
    <ul class="breadcrumb" style="display:inline">
         <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click">Home</asp:LinkButton>
         <li style="color:blue">   | MyAccount</li>
        <li style="margin-left:85.4%"></li>

        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">Logout</asp:LinkButton>

     </ul>  
   
        <p style="width: 963px; margin-left: 440px">
            <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="Red" Text="Your Loan Account Details" Font-Bold="True" ></asp:Label>
        &nbsp;&nbsp;&nbsp;
        </p>
        <hr />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Account Number:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="Blue" style="margin-left:70px" Text="99999999999"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Full Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="Blue"  style="margin-left:100px" Text="John Nathaniel Doe"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Last Updated Date:"></asp:Label>
&nbsp;<asp:Label ID="Label7" runat="server" Font-Size="X-Large" ForeColor="Blue" style="margin-left:100px" Text="MM/DD/YYYY"></asp:Label>
   
        <br />
        <hr />
        <asp:Table ID="Table1" runat="server" Font-Size="XX-Large" style="width:100%" BorderStyle="Solid" BorderColor="Blue" CellPadding="0" CellSpacing="2">
            <asp:TableRow BorderColor="Blue" BackColor="#B3D9FF" ForeColor="#0000CC">
                <asp:TableCell BackColor="#B3D9FF" BorderColor="Blue"> Current Balance</asp:TableCell>
                <asp:TableCell ID="Cell1" BackColor="#B3D9FF" BorderColor="Blue" Text="99999.99"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#5EAEFF" BorderColor="Blue" ForeColor="#0000CC">
                <asp:TableCell>Last Updated Date</asp:TableCell>
                <asp:TableCell ID="Cell2">99999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#B3D9FF" BorderColor="Blue" ForeColor="#0000CC">
                <asp:TableCell>Regular Monthly Payment Amount</asp:TableCell>
                <asp:TableCell ID="Cell3">999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#5EAEFF" BorderColor="Blue" ForeColor="#0000CC">
                <asp:TableCell>Amount Satisfied by Extra Payment</asp:TableCell>
                <asp:TableCell ID="Cell4">999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#B3D9FF" BorderColor="Blue" ForeColor="#0000CC">
                <asp:TableCell>Past Due Amount(if applicable)</asp:TableCell>
                <asp:TableCell ID = "Cell5">999.99</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow BackColor="#5EAEFF" BorderColor="Blue" ForeColor="#0000CC">
                <asp:TableCell><b>Current Amount Due</b></asp:TableCell>
                <asp:TableCell ID="Cell6">999.99</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <br />

        <asp:Label ID="Label8" runat="server" Text="Current Statement Due Date:" Font-Bold="True" Font-Size="XX-Large" ForeColor="Blue"></asp:Label>

        &nbsp;<asp:Label ID="Label9" runat="server" Text="MM/DD/YYYY" Font-Bold="True" Font-Size="XX-Large" ForeColor="#CC00FF"></asp:Label>

        <br />
   
    </form>
</body>
</html>
