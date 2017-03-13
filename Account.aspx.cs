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
        if (Session["currentuser"] != null)
        {
            StudentInfor astudent = Session["currentuser"] as StudentInfor;
            Label5.Text = Convert.ToString(astudent.AccountNumber);
            Label6.Text = Convert.ToString(astudent.FullName);
            Label7.Text = Convert.ToString(astudent.LastUpdatedDate);
            Cell1.Text = Convert.ToString(astudent.CurrentBalance);
            Cell2.Text = Convert.ToString(astudent.LastUpdatedDate);
            Cell3.Text = Convert.ToString(astudent.RegularMonthlyPaymentAmount);
            Cell4.Text = Convert.ToString(astudent.AmountSatisfiedByExtraPayment);
            Cell5.Text = Convert.ToString(astudent.PastDueAmount);
            Cell6.Text = Convert.ToString(astudent.CurrentAmountDue);
            Label9.Text = Convert.ToString(astudent.CurrentStatementDueDate);
        }
        
        else
        {
                Table1.Visible = false;
                Label7.Visible = false;
                Label6.Visible = false;
                Label5.Visible = false;
                Label9.Visible = false;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please login to see the Account details');window.location ='Login.aspx';", true);
            
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