using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["currentuser"] != null)
        {
            StudentInfor astudent = Session["currentuser"] as StudentInfor;
            LinkButton2.Text = "Logout";
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (LinkButton2.Text.Equals("Logout"))
        {
            Session.Abandon();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('You are now logged out');window.location ='Login.aspx';", true);
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}