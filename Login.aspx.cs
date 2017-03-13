using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bool userExist = false;
        
        if(Application["AllUsersList"] != null)
        {
            List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
            if(allUsersList != null)
            {
                for (int i = 0; i < allUsersList.Count; i++)
                {
                    if(allUsersList[i].EmailAddress == username.Text && allUsersList[i].Password == pwd.Text)
                    {
                        userExist = true;
                        Session["currentuser"] = allUsersList[i];
                        StudentInfor astudent = Session["currentuser"] as StudentInfor;

                        string message = "You are now logged in";
                        System.Text.StringBuilder sb = new System.Text.StringBuilder();
                        sb.Append("<script type = 'text/javascript'>");
                        sb.Append("window.onload=function(){");
                        sb.Append("alert('");
                        sb.Append(message);
                        sb.Append("')};");
                        sb.Append("</script>");
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                        Response.Redirect("Account.aspx");
                    }
                   

                }
            }

        }
       
       

      
        if(userExist == false)
        {
            string message = "It appears that this user is not in our database.Please click Register Now Link.";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            clearall();
            
        }
        
       
        
    }
    protected void clearall()
    {
        username.Text = "";
        pwd.Text = "";

    }
    private void OnClick(object sender, EventArgs e)
    {
        try
        {
            System.Diagnostics.Process.Start("Registration.aspx");
        }
        catch { }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}