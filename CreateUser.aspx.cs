using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace loginsystem
{
    public partial class CreateUser : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand command;
        string cmdstr;

        protected void Page_Load(object sender, EventArgs e)
        {
            ChangeState();
        }
        protected void MakeUser(object sender, EventArgs e) 
        {
            DBConnetorOpen();
            cmdstr = "insert into login (Username, Password) values ('" + UserName.Value + "', '" + Password.Value + "' )" +
                "insert into person (Id, Fname, Lname, age, Email, Phone, City, Street)" +
                "select MAX(login.Id), '" + CreateFN.Value + "' , '" + CreateLN.Value + "' , '" + CreateAge.Value + "' , '" + CreateEmail.Value + "' , '" +
                CreatePN.Value + "' , '" + CreateCity.Value + "' , '" + CreateSteet.Value + "' from login";
            command = new SqlCommand(cmdstr, conn);
            command.ExecuteScalar();
            DBConnetorClose();
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