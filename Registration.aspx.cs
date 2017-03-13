using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;


public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack == true)
        {
            RequiredFieldValidator2.Validate();
            RegularExpressionValidator1.Validate();
            string validatessn = SSN.Text;
            if (Application["AllUsersList"] != null)
            {

                List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
                if (allUsersList != null)
                {

                    for (int i = 0; i < allUsersList.Count; i++)
                    {
                        if (allUsersList[i].SocialSecurityNumber == validatessn)
                        {
                            RequiredFieldValidator2.Validate();
                            RegularExpressionValidator1.Validate();
                            string message =  "allready exist.Please go to login page.";
                            System.Text.StringBuilder sb = new System.Text.StringBuilder();
                            sb.Append("<script type = 'text/javascript'>");
                            sb.Append("window.onload=function(){");
                            sb.Append("alert('");
                            sb.Append(validatessn);
                            sb.Append(message);
                            sb.Append("')};");
                            sb.Append("</script>");
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                            SSN.Text = "";
                        }
                    }
                }
            }
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }


    protected void Button_click(object sender, EventArgs e)
    {
        string ssn = SSN.Text; ;
        string dropdown = DropDownList1.SelectedValue + DropDownList2.SelectedValue + DropDownList3.SelectedValue;
        Random generator = new Random();
        int accountrandom = Convert.ToInt32((generator.Next(100000, 1000000).ToString("D6")));
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        if (Application["AllUsersList"] != null)
        {

            if (allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == ssn)
                    {
                        string message = "User already exist. Please login!";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


                    }
                }
            }
        }
        if (CheckBox1.Checked == true)
        {

            StudentInfor astudentInfor = new StudentInfor(uname.Text, pwd.Text, CheckBox1.Checked, SSN.Text, FullName.Text, dropdown, Address.Text, emailaddress.Text, DropDownList4.Text, answer.Text, accountrandom, "", 0f, 0f, 0f, 0f, 0f, "");

            astudentInfor.UserName = uname.Text;
            astudentInfor.Password = pwd.Text;
            astudentInfor.Certifiedchecked = CheckBox1.Checked;
            astudentInfor.SocialSecurityNumber = SSN.Text;
            astudentInfor.FullName = FullName.Text;
            astudentInfor.DateOfBirth = dropdown;
            astudentInfor.Address = Address.Text;
            astudentInfor.EmailAddress = emailaddress.Text;
            astudentInfor.SecurityQuestion = DropDownList4.Text;
            astudentInfor.SecurityQuestionAnswer = answer.Text;
            astudentInfor.AccountNumber = accountrandom;
            astudentInfor.LastUpdatedDate = "01-01-1950";
            astudentInfor.CurrentBalance = 0.0f;
            astudentInfor.RegularMonthlyPaymentAmount = 0.0f;
            astudentInfor.AmountSatisfiedByExtraPayment = 0.0f;
            astudentInfor.PastDueAmount = 0.0f;
            astudentInfor.CurrentAmountDue = 0.0f;
            astudentInfor.CurrentStatementDueDate = "01-01-1950";

            allUsersList.Add(astudentInfor);

            Application["AllUsersList"] = allUsersList;

            if (!validateall())
            {
                return;
            }
            string connectionString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            string checked1 = "true";
            string question = DropDownList4.SelectedValue;
           // string sql2 = "Insert into MehtaK_WADfl16_StudentInfor(userName,password,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) " + "values('" + uname.Text + "','" + pwd.Text + "','" + checked1 + "','" + SSN.Text + "','" + FullName.Text + "','" + dropdown + "','" + Address.Text + "','" + emailaddress.Text + "','" + SSN.Text + "','" + answer.Text + "'," + accountrandom + ")";


            string st2 = "Insert into MehtaK_WADfl16_StudentInfor(userName,password,certifiedchecked,socialSecurityNumber,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) " + "values('" + uname.Text + "','" + pwd.Text + "','" + checked1 + "','" + SSN.Text + "','" + FullName.Text + "','" + dropdown + "','" + Address.Text + "','" + emailaddress.Text + "','" + SSN.Text + "','" + answer.Text + "'," + accountrandom + ")";
         // string st3 = "Insert into sample(Lastname,Name)" + "values('" + FullName.Text + "', '" + uname.Text + ")";
            SqlCommand cmd = new SqlCommand(st2, conn);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();

            }
            finally
            {
                conn.Close();
            }

            String email = emailaddress.Text;
            String header = "Acknowledgement";
            String subject = "New Registration Notification ";
            String body = " Dear" + FullName.Text + ", <br/>Thank you for registering with us.<br/>You can now access your loan account at <a href=\"http://dcm.uhcl.edu/c432016fa02mehtak2/Login.aspx\" > Login </a>.<br/>In the meantime, please share the word about CareMax Educational Loan Service with your friends and neighbors!.CareMax Educational Loan Service is open to all eligible college applicants throughout the United States. <br/>Thank you again for your registration. If you have any questions, please contact us at<a href=\"http://dcm.uhcl.edu/c432016fa02mehtak2/ContactUs.aspx\">Contact Us</a>.<br/> < br/>With Best Wishes, <br/>CareMax Educational Loan Service Team. ";
            if (send_email(email, header, subject, body))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Thank you for submitting for registration. You can now login by clicking the Login link at the top right hand side of this page. An email notification has also been sent to the email address you provided during registration.')", true);

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('We could not submit your request at this time.')", true);
            }

            clearall();
        }
        else
        {

            Response.Write("<script>alert('Please Accept the certifying statement by checking the box at the top left hand side')</script>");

        }
       
    } 


    public bool send_email(String email, String header, String subject, String body)
    {
        System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
        mail.To.Add(email);
        mail.From = new MailAddress("kmehta2049@gmail.com", header, System.Text.Encoding.UTF8);
        mail.Subject = subject;
        mail.SubjectEncoding = System.Text.Encoding.UTF8;
        mail.Body = body;
        mail.BodyEncoding = System.Text.Encoding.UTF8;
        mail.IsBodyHtml = true;
        mail.Priority = MailPriority.High;
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("kmehta2049@gmail.com", "20@Mehta93");
        client.Port = 587;
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        try
        {
            client.Send(mail);
            return true;

        }
        catch (Exception ex)
        {
            Exception ex2 = ex;
            string errorMessage = string.Empty;
            while (ex2 != null)
            {
                errorMessage += ex2.ToString();
                ex2 = ex2.InnerException;
            }
        }
        return false;
    }
    private bool validateall()
    {
        RequiredFieldValidator1.Validate();
        RequiredFieldValidator2.Validate();
        RequiredFieldValidator3.Validate();
        RequiredFieldValidator4.Validate();
        RequiredFieldValidator5.Validate();
        RequiredFieldValidator6.Validate();
        RequiredFieldValidator7.Validate();
        RequiredFieldValidator8.Validate();
        RequiredFieldValidator9.Validate();
        RegularExpressionValidator1.Validate();
        RegularExpressionValidator2.Validate();
        RegularExpressionValidator3.Validate();
        RegularExpressionValidator4.Validate();
        RegularExpressionValidator5.Validate();
        RegularExpressionValidator6.Validate();
        RegularExpressionValidator7.Validate();
        CompareValidator1.Validate();
        CompareValidator2.Validate();
        CompareValidator3.Validate();
        if(!RequiredFieldValidator1.IsValid || !RequiredFieldValidator2.IsValid || !RequiredFieldValidator3.IsValid || !RequiredFieldValidator4.IsValid || !RequiredFieldValidator5.IsValid || !RequiredFieldValidator6.IsValid || !RequiredFieldValidator7.IsValid || !RequiredFieldValidator8.IsValid || !RequiredFieldValidator9.IsValid ||
            !RegularExpressionValidator1.IsValid || !RegularExpressionValidator2.IsValid || !RegularExpressionValidator3.IsValid || !RegularExpressionValidator4.IsValid || !RegularExpressionValidator5.IsValid || !RegularExpressionValidator6.IsValid || !RegularExpressionValidator7.IsValid || !CompareValidator1.IsValid || !CompareValidator2.IsValid || !CompareValidator3.IsValid)
        {
            return false;
        }
        return true;
    }

    protected void clearall()
    {
        uname.Text = "";
        pwd.Text = "";
        CheckBox1.Checked = false;
        SSN.Text = "";
        FullName.Text = "";
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        DropDownList4.SelectedIndex = 0;
        Address.Text = "";
        emailaddress.Text = "";
        confirmemailaddress.Text = "";
        confirmpwd.Text = "";
        ConfirmSSN.Text = "";

    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void SSN_TextChanged(object sender, EventArgs e)
    {

     /*   string validatessn = SSN.Text;
        if (Application["AllUsersList"] != null)
        {

            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if (allUsersList != null)
            {

                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if (allUsersList[i].SocialSecurityNumber == validatessn)
                    {
                        string message = "User already exist.Please Login!";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(validatessn);
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        SSN.Text = "";
                    }
                }
            }
        }
*/
    }
    
}