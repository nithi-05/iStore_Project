using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iStore_Project
{
    public partial class Add_Feedback : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into Feedback values('" + Session["user_id"] + "','" + TextBox1.Text + "','Waiting','Pending')";
            int i = ob.Fun_NonQuery(ins);
            if (i == 1)
            {
                Label2.Visible = true;
                Label2.Text = "Success";
                TextBox1.Text = "";
            }
        }
    }
}