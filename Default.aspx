        <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <table border="0" class="tb">
        <tr>
            <td id="links">
               
               <asp:LinkButton ID="Loginlink1" runat="server" OnClick="LinkButton1_Click1" Text =""></asp:LinkButton>
                <br /><br />
                <div class="dropdown">
                <div class="dropbtn">
                <a href="#"> Info Center</a> 
                    <div class="arrow-down"></div>
                </div>
                <br /><br />
                <div class="dropdown-content">
                   <a href="Glossary.aspx" >Glossary</a><br />
                   <a href="FAQ.aspx">FAQ</a>
                 </div>
               </div><br />
            <a href="Account.aspx"> My Account</a><br /><br />
           <a href="Forms.aspx"> Forms</a><br /><br />
            <a href="ContactUs.aspx"> Contact Us</a>
                    
            </td>
            <td id="message" colspan="2">
                    <b style="font-size:30px">Who We Are...</b><br /><br />
                <p>
                    American Student Loan Service provides loan services for the one who look financial help to  get his/her education goals completed.
                    We provide services for Campus Based Loans.Private Education Loans and Federal Family Education Loans.We work hard with you to get the Loan You Deserve,
                    Maintain Loan Activities,Send Payment Reminders and Process payments.
                </p>
            </td>
        </tr>
        <tr>
            <td id="cs">
                <a href="https://ssl.comodo.com/"><img src="comodo_secure.png" alt="comodo-Secure"/></a>
            </td>
            <td id="image" >
               <!--<img src="https://bbfzone-ckatoday.netdna-ssl.com/wp-content/uploads/2016/01/student-loan-refinance-money.jpg" alt="Student Finance" />--> 
            </td>
            <td id="img2" >
               <!-- <img src="https://www.salliemae.com/assets/core/plan-for-college/types-of-student-loans-category.jpg" alt="sf"  />-->
            </td>
        </tr>
       </table>
        <table>
            <tr>
                <td>
                    <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/adv.xml" KeywordFilter="plan1" Target="_blank" Height="200px" Width="270px" />
                </td>
                <td>
                    <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/adv.xml" KeywordFilter="plan2" Target="_blank" Height="200px" Width="270px"/>
                </td>
                 <td>
                    <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/adv.xml" KeywordFilter="plan1" Target="_blank" Height="200px" Width="270px"/>
                </td>
                 <td>
                    <asp:AdRotator ID="AdRotator4" runat="server" AdvertisementFile="~/adv.xml" KeywordFilter="plan2" Target="_blank" Height="200px" Width="270px"/>
                </td>
                 <td>
                    <asp:AdRotator ID="AdRotator5" runat="server" AdvertisementFile="~/adv.xml" KeywordFilter="plan1" Target="_blank" Height="200px" Width="270px"/>
                </td>
                    
            </tr>
        </table>
        <table style="width:100%">
        <tr ><td id="seperator">&nbsp;</td></tr>
        <tr>
            <td id="copyright" title="Copyright"  >&copy;
               CareMax Education Loan Services,Inc.All rights reserved 2012-2016
            </td>
        </tr>
      
    </table>  
      
 
    </form>
</body>
</html>
