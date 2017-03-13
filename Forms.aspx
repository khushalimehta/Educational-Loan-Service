<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

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
             <li style="color:blue">| Forms</li>
        <li style="margin-left:86.8%;margin-right:1%"></li>

            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">Login</asp:LinkButton>

     </ul>  
    <table border="1" style="width:100%;border-collapse:collapse">

        <tr>
            
            <td colspan="3">
                CareMax Account Creation Authorization
            </td>
             <td style="width:20%">
               <a href="1.pdf" target="_blank"> <img src="pdf-icon.png" alt="Pdf not available" height="50" width="50" style="margin-left:100px;margin-right:40px"/></a>
            </td>
          </tr>
        <tr>
        <td colspan="3">
                Federal Direct Consolidation Loan Application and Promissory Note 
            </td>
            <td style="width:20%">
                <a href="2.pdf" target="_blank"><img src="pdf-icon.png" alt="Pdf not available" height="50" width="50" style="margin-left:100px;margin-right:40px" /></a>
            </td>
       </tr>    
         
        <tr>
            <td colspan="3" >
                Direct Consolidation Loan Applications
            </td>
            <td style="width:20%">
                <a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action"  target="_blank"><img src="pdf-icon.png" alt="Pdf not available" height="50" width="50"style="margin-left:100px;margin-right:40px"/></a>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                Public Service Loan Forgiveness
            </td>
            <td style="width:20%">
               <a href="3.pdf"><img src="pdf-icon.png" alt="Pdf not available" height="50" width="50" style="margin-left:100px;margin-right:40px"/></a>
            </td>
        </tr>      
         

       
    </table>  
      
 
    </form>
</body>
</html>


     
  
    
            
        
   
