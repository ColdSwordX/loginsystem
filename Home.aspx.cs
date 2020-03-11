using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace loginsystem
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        List<string> content = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            ChangeState();
            DBConnetorOpen();//open the connection.
            

            DBConnetorClose();//Closes the connection.
        }
        private void ChangeState()
        {

            if (staticClass.LoginId == 0)
            {
                Response.Redirect("login.aspx");
            }
            if (staticClass.IsAdmin)
            {
                CreateNew.Visible = true;
                Delete.Visible = true;
            }
        }
        private void DBConnetorOpen()//opens a connection to the database.
        {
            conn.ConnectionString = staticClass.Connection;
            conn.Open();
            // use the connection here
        }
        private void DBConnetorClose()//closes the connection to the database.
        {
            conn.Close();
            conn.Dispose();
        }
    }
}