<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="ContactUs" %>

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
          <li style="color:blue">  | Registration</li>
        <li style="margin-left:86.4%"></li>
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">Login</asp:LinkButton>
     </ul>  
 
        
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" ForeColor="Blue" OnCheckedChanged="CheckBox1_CheckedChanged" Text="By providing this information, I certify that I am the person identified by these items, and that I agree to the site Terms of Use." />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Full Name" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="FullName" runat="server" style="margin-left: 330px; margin-right: 3px; margin-top: 0px;" Width="500px" Height="20px"></asp:TextBox>
        <asp:Label ID="Label26" runat="server" BackColor="Yellow" Text="?" ToolTip="Enter FirstName, MiddleName and LastName"></asp:Label>       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FullName" Display="Dynamic" ErrorMessage="Full Name Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <br />
        <br />
         <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Social Security Number" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="SSN" runat="server" style="margin-left: 233px" Width="300px" Height="20px"  AutoPostBack="True" OnTextChanged="SSN_TextChanged"></asp:TextBox>
        <asp:Label ID="Label25" runat="server" BackColor="Yellow" Text="?" ToolTip="Once you set up a User Name to access your account, you will no longer need to provide your complete social security number/account number, birthdate or zip code to log in. For security, you will need to provide your full social security number or account number if your forget your User Name or Password."></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SSN" Display="Dynamic" ErrorMessage="Social Security Number is Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SSN" Display="Dynamic" ErrorMessage="Invalid Social Security Number" ForeColor="Red" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="Blue" Text="Confirm Social Security Number" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="ConfirmSSN" runat="server" style="margin-left: 167px" Width="300px" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmSSN" Display="Dynamic" ErrorMessage="Confirm SSN" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Invalid SSN" ForeColor="Red" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ControlToValidate="ConfirmSSN" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="SSN" ControlToValidate="ConfirmSSN" Display="Dynamic" ErrorMessage="SSN does not match" ForeColor="Red" ValidationGroup="Group1"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="Date of Birth" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="*"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" style="margin-left: 116px; margin-right: 0px" Width="94px" Font-Size="Medium">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>July</asp:ListItem>
            <asp:ListItem>August</asp:ListItem>
            <asp:ListItem>September</asp:ListItem>
            <asp:ListItem>October</asp:ListItem>
            <asp:ListItem>November</asp:ListItem>
            <asp:ListItem>December</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:Label ID="Label34" runat="server" Font-Size="Large" Text="/"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" style="margin-left: 3px" Width="58px" Font-Size="Medium">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
            <asp:ListItem>16</asp:ListItem>
            <asp:ListItem>17</asp:ListItem>
            <asp:ListItem>18</asp:ListItem>
            <asp:ListItem>19</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>21</asp:ListItem>
            <asp:ListItem>22</asp:ListItem>
            <asp:ListItem>23</asp:ListItem>
            <asp:ListItem>24</asp:ListItem>
            <asp:ListItem>25</asp:ListItem>
            <asp:ListItem>26</asp:ListItem>
            <asp:ListItem>27</asp:ListItem>
            <asp:ListItem>28</asp:ListItem>
            <asp:ListItem>29</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>31</asp:ListItem>
        </asp:DropDownList> 
&nbsp;<asp:Label ID="Label35" runat="server" Font-Size="Large" Text="/"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Font-Size="Medium" Width="62px" style="margin-left: 3px">
            <asp:ListItem>1950</asp:ListItem>
            <asp:ListItem>1951</asp:ListItem>
            <asp:ListItem>1952</asp:ListItem>
            <asp:ListItem>1953</asp:ListItem>
            <asp:ListItem>1954</asp:ListItem>
            <asp:ListItem>1955</asp:ListItem>
            <asp:ListItem>1956</asp:ListItem>
            <asp:ListItem>1957</asp:ListItem>
            <asp:ListItem>1958</asp:ListItem>
            <asp:ListItem>1959</asp:ListItem>
            <asp:ListItem>1960</asp:ListItem>
            <asp:ListItem>1961</asp:ListItem>
            <asp:ListItem>1962</asp:ListItem>
            <asp:ListItem>1963</asp:ListItem>
            <asp:ListItem>1964</asp:ListItem>
            <asp:ListItem>1965</asp:ListItem>
            <asp:ListItem>1966</asp:ListItem>
            <asp:ListItem>1967</asp:ListItem>
            <asp:ListItem>1968</asp:ListItem>
            <asp:ListItem>1969</asp:ListItem>
            <asp:ListItem>1970</asp:ListItem>
            <asp:ListItem>1971</asp:ListItem>
            <asp:ListItem>1972</asp:ListItem>
            <asp:ListItem>1973</asp:ListItem>
            <asp:ListItem>1974</asp:ListItem>
            <asp:ListItem>1975</asp:ListItem>
            <asp:ListItem>1976</asp:ListItem>
            <asp:ListItem>1977</asp:ListItem>
            <asp:ListItem>1978</asp:ListItem>
            <asp:ListItem>1979</asp:ListItem>
            <asp:ListItem>1980</asp:ListItem>
            <asp:ListItem>1981</asp:ListItem>
            <asp:ListItem>1982</asp:ListItem>
            <asp:ListItem>1983</asp:ListItem>
            <asp:ListItem>1984</asp:ListItem>
            <asp:ListItem>1985</asp:ListItem>
            <asp:ListItem>1986</asp:ListItem>
            <asp:ListItem>1987</asp:ListItem>
            <asp:ListItem>1988</asp:ListItem>
            <asp:ListItem>1989</asp:ListItem>
            <asp:ListItem>1990</asp:ListItem>
            <asp:ListItem>1991</asp:ListItem>
            <asp:ListItem>1992</asp:ListItem>
            <asp:ListItem>1993</asp:ListItem>
            <asp:ListItem>1994</asp:ListItem>
            <asp:ListItem>1995</asp:ListItem>
            <asp:ListItem>1996</asp:ListItem>
            <asp:ListItem>1997</asp:ListItem>
            <asp:ListItem>1998</asp:ListItem>
            <asp:ListItem>1999</asp:ListItem>
            <asp:ListItem>2000</asp:ListItem>
            <asp:ListItem>2001</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="Address" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="Address" runat="server" style="margin-left: 348px" Width="700px" Height="20px"></asp:TextBox>
        <asp:Label ID="Label29" runat="server" BackColor="Yellow" Text="?" ToolTip="Many foreign countries do not have a zip code. If you are foreign, you can skip the zip code in the address. "></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Address" Display="Dynamic" ErrorMessage="Address is Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" ForeColor="Blue" Text="User Name" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="uname" runat="server" style="margin-left: 326px" Width="300px" Height="20px"></asp:TextBox>
        <asp:Label ID="Label30" runat="server" BackColor="Yellow" Text="6-64 characters" ForeColor="Red"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="uname" Display="Dynamic" ErrorMessage="User Name is required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="uname" Display="Dynamic" ErrorMessage="Invalid User Name" ForeColor="Red" ValidationExpression="^[a-zA-Z][a-zA-Z0-9]{5,11}$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" ForeColor="Blue" Text="Password" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="pwd" runat="server" style="margin-left: 338px" Width="300px" Height="20px" TextMode="Password"></asp:TextBox>
        <asp:Label ID="Label31" runat="server" BackColor="Yellow" Text="Password Rules" ForeColor="Red" ToolTip="Password must be between 8 and 10 characters, contain at least one digit and one alphabetic character, and must not contain special characters "></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pwd" Display="Dynamic" ErrorMessage="Password is Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="pwd" Display="Dynamic" ErrorMessage="Invalid Password" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" ForeColor="Blue" Text="Confirm Password" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label20" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="confirmpwd" runat="server" style="margin-left: 274px" Width="300px" Height="20px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="confirmpwd" Display="Dynamic" ErrorMessage="Confirm password required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="confirmpwd" Display="Dynamic" ErrorMessage="Invalid Password" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pwd" ControlToValidate="confirmpwd" Display="Dynamic" ErrorMessage="Password Does Not Match" ForeColor="Red" ValidationGroup="Group1"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" ForeColor="Blue" Text="Email Address" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="emailaddress" runat="server" style="margin-left: 301px" Width="400px" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="emailaddress" Display="Dynamic" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="emailaddress" Display="Dynamic" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" ForeColor="Blue" Text="Confirm Email Address" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label22" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="confirmemailaddress" runat="server" style="margin-left: 235px" Width="400px" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="confirmemailaddress" Display="Dynamic" ErrorMessage="Email Address Required" ForeColor="Red" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="confirmemailaddress" Display="Dynamic" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="Group1"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="emailaddress" ControlToValidate="confirmemailaddress" Display="Dynamic" ErrorMessage="Email Address does not match" ForeColor="Red" ValidationGroup="Group1"></asp:CompareValidator>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" ForeColor="Blue" Text="Security Question" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label23" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" Font-Size="Medium" Height="25px" style="margin-left: 279px" Width="700px">
            <asp:ListItem>What is your mother&#39;s maiden name? </asp:ListItem>
            <asp:ListItem>What was your childhood nickname?</asp:ListItem>
            <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
            <asp:ListItem>What is your favorite sport team?</asp:ListItem>
            <asp:ListItem>What was the make and model of your first car?</asp:ListItem>
            <asp:ListItem>What school did you attend for sixth grade?</asp:ListItem>
            <asp:ListItem>What was the last name of your third grade teacher?</asp:ListItem>
            <asp:ListItem>In what town was your first job?</asp:ListItem>
            <asp:ListItem>What is your favorite movie?</asp:ListItem>
            <asp:ListItem>Who is your childhood sports hero?</asp:ListItem>
            <asp:ListItem>In what year was your father born?</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label33" runat="server" BackColor="Yellow" Text="?" ToolTip="Single word answers are best. John, red, green, drum, for example"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label16" runat="server" ForeColor="Blue" Text="Answer" Font-Size="Large"></asp:Label>
        <asp:Label ID="Label24" runat="server" ForeColor="Red" Text="*"></asp:Label>
        <asp:TextBox ID="answer" runat="server" style="margin-left: 350px" Width="400px" Height="20px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" ErrorMessage="Answer is Required" ForeColor="Red" ControlToValidate="answer" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label32" runat="server" Font-Bold="True" ForeColor="Red" Text="* Denotes Required Items"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button_click" Text="Submit" Font-Size="Large" Style="margin-left: 541px" />
        <br />
        
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
