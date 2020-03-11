using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace loginsystem
{
    public static class staticClass
    {

        static private int ID;
        static private bool admin;
        static private bool edit;
        static private string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=Z:\Webtest\loginsystem\App_Data\loginDB.mdf;Integrated Security = True";
        static private bool delete;
        static public bool Delete {

            get { return delete; }
            set { delete = value; }
        }
        static public string Connection {
            get { return conn; }
        }
        static public bool EditThis
        {
            get { return edit; }
            set { edit = value; }
        }
        static public int LoginId 
        {
            get { return ID; }
            set { ID = value; }
        }
        static public bool IsAdmin {

            get { return admin; }
            set { admin = value; }
        }
    }
}