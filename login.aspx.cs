using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
//nikozdralic@gmail.com - zdralic
//emilholm.hansen @hotmail.com - lyxar

namespace loginsystem
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand command;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sets all the staticClass balues to default settings.
            staticClass.LoginId = 0;
            staticClass.IsAdmin = false;
            staticClass.EditThis = false;
        }
        protected void Clicked(object sender, EventArgs e)//Trikker on the Onclicked from Html.
        {
            DBConnetorOpen();//open the connection.
            //Gets the desired infomation from the database.
            string cmdstr = "Select id from login where Username='" + username.Value + "' and Password='" + password.Value + "'";
            command = new SqlCommand(cmdstr, conn);
            try
            {
                //convert the output to an int.
                staticClass.LoginId = (int)command.ExecuteScalar();
            }
            catch (Exception)
            {
                //sets the id number to 0 if there is no user that can be found.
                staticClass.LoginId = 0;
            }
            if (staticClass.LoginId > 0)//Sends the user to the diffrent page if they exists in the database.
            {
                //funder ud af om brugen der er loget ind er en admin eller ej.
                cmdstr = "select Admin from login where Id = " + staticClass.LoginId;
                command = new SqlCommand(cmdstr, conn);
                SqlDataReader reader = command.ExecuteReader();
                //så længe der er noget i reader en.
                while (reader.Read())
                {
                    ChangeState((IDataRecord)reader);
                }
                try
                {
                    if (reader["Admin"] as int? == 1)
                    {
                        staticClass.IsAdmin = true;
                    }
                    else
                    {
                        staticClass.IsAdmin = false;
                    }
                }
                //catch bruges til at fange de fejl der måtte opstå når jeg kalder en database, 
                //og den finder noget som ikke var for ventet.
                catch (Exception)
                {
                }
                reader.Close();//close the reader.
                DBConnetorClose();//close the connection.
                Response.Redirect("UserInfo.aspx");
            }
            else
            {
                this.errorfield.Attributes.Add("style", "visibility: visible");
                // user doesn't exists.
            }
            DBConnetorClose();//close the connection.
        }
        private void ChangeState(IDataRecord record)
        {
            string temp = record[0].ToString();
            if (temp == "1")
            {
                staticClass.IsAdmin = true;
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