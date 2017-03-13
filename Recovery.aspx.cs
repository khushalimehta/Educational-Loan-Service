using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 

    protected void Button1_Click1(object sender, EventArgs e)
    {

        String email = TextBox1.Text;
        String header = "Acknowledgement";
        String subject = "We have recovered your password! ";
        String body = "Dear Valued Student,<br/> You are receiving this email because a you requested to recover your password.<br/> Your current password is : Abc123xyz <br/>Thank You. <br/> CareMax Education Loan.";
        if (send_email(email, header, subject, body))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('An email has been sent to your email address.')", true);
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Sorry, we coud not sent an email to specified email address.')", true);
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
  
protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}