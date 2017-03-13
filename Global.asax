<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %> 

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List<StudentInfor>();
        Application["AllUsersList"] = null;
        List<StudentInfor> allUsersList = new List<StudentInfor>();

        String connectionString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string sql = "SELECT * from MehtaK_WADfl16_StudentInfor";
            using (SqlCommand cmd = new SqlCommand(sql, conn))
            {
                try
                {
                    conn.Open();
                    SqlDataReader sqlReader = cmd.ExecuteReader();
                    while(sqlReader.Read())
                    {
                        StudentInfor astudent = new StudentInfor((String)sqlReader["userName"], (String)sqlReader["password"], true, (String)sqlReader["socialSecurityNumber"], (String)sqlReader["fullName"], (String)sqlReader["dateOfBirth"], (String)sqlReader["address"], (String)sqlReader["emailAddress"], (String)sqlReader["securityQuestion"], (String)sqlReader["securityQuestionAnswer"], (int)sqlReader["accountNumber"], (String)sqlReader["lastUpdatedDate"], (float)sqlReader.GetDouble(12), (float)sqlReader.GetDouble(13), (float)sqlReader.GetDouble(14), (float)sqlReader.GetDouble(15), (float)sqlReader.GetDouble(16), (String)sqlReader["currentStatementDueDate"]);
                        allUsersList.Add(astudent);   
                    }
                }

                finally
                {
                    conn.Close();
                    Application["AllUsersList"] = allUsersList;
                }
            }

        }
    }
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }


    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>