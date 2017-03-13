using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Net.Mail;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentuser"] != null)
        {
            StudentInfor astudent = Session["currentuser"] as StudentInfor;
            LinkButton2.Text = "Logout";
            
        }
        if(LinkButton2.Text == "Login")
        {
            textarea.Enabled = false;
            Button1.Enabled = false;
        }
        if(LinkButton2.Text == "Logout")
        {
            textarea.Enabled = true;
            Button1.Enabled = true;
        }

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if(LinkButton2.Text.Equals("Logout"))
        {
            Session.Abandon();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You are now logged out');window.location ='Login.aspx';", true);

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
      
    }

   protected void Button1_Click(object sender, EventArgs e)
    {
        if(textarea.Text != "")
        {
            if(Session["currentuser"] != null)
            {
                StudentInfor s = Session["currentuser"] as StudentInfor;
                String email = s.EmailAddress;
                String header = "Acknowledgement";
                String subject = "We have received your message! ";
                String body = textarea.Text;
                if (send_email(email, header, subject, body))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "", "alert('Thank You.An email notification has also been sent to the address we have in our file')", true);
                }

            }
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
    
}