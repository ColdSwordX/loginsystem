using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace loginsystem
{
    public partial class UserInfo : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand command;
        string cmdstr;

        protected void Page_Load(object sender, EventArgs e)
        {
            ChangeState();
            DBConnetorOpen();//open the connection.
            //Gets the desired infomation from the database.
            cmdstr = "select * from person where Id = " + staticClass.LoginId;
            command = new SqlCommand(cmdstr, conn);
            SqlDataReader reader = command.ExecuteReader();
            //while there is something in the reader it will run.
            while (reader.Read())
            {
                PupluateLabels((IDataRecord)reader);
            }
            reader.Close();//closes the reader.
            DBConnetorClose();//Closes the connection.
        }
        protected void EditInformaiton(object sender, EventArgs e)
        {
            staticClass.EditThis = true;
            EditPage.Visible = true;
        }
        protected void EditClick(object sender, EventArgs e)
        {
            DBConnetorOpen();
            cmdstr = "UPDATE person SET Fname = '" + EditFirstName.Text + "', Lname = '" + EditLastName.Text +
                "', Age = '" + EditAge.Text + "', Email = '" + EditEmail.Text + "', Phone = '" + EditPhone.Text +
                "', City = '" + EditCity.Text + "', Street = '" + EditStreet.Text + "' WHERE Id = " + staticClass.LoginId;
            command = new SqlCommand(cmdstr, conn);
            command.ExecuteScalar();
            DBConnetorClose();
        }
        private void PupluateLabels(IDataRecord record)//adds the persons data to the labels.
        {
            LFirstName.Text = "First Name: " + record[2];
            LLastName.Text = "Last Name: " + record[3];
            LAge.Text = "Age: " + record[4];
            LEmail.Text = "Email: " + record[5];
            LPhone.Text = "Phone Number: " + record[6];
            LCity.Text =  "City: " + record[7];
            LStreet.Text = "Street: " + record[8];
        }
        private void ChangeState()
        {
            EditPage.Visible = false;
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