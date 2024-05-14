using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace iStore_Project
{
    public partial class Users : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["user_id"]);
            string getUsers = "Select * from User_Reg";
            DataSet ds = ob.Fun_Adapter(getUsers);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}