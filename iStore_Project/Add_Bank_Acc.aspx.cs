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
    public partial class Add_Bank_Acc : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();

        public void gridBind()
        {
           
                string query = "select * from Account where User_id='" + Session["user_id"] + "'";
                DataSet ds = ob.Fun_Adapter(query);
                GridView1.DataSource = ds;
                GridView1.DataBind();
          
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query= "insert into Account values('"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+Session["user_id"]+"')";
            int i = ob.Fun_NonQuery(query);
            if (i == 1)
            {
                Label13.Visible = true;
                Label13.Text = "Account Added Successfully! ";
                LinkButton1.Visible = true;
                gridBind();
            }
            else
            {
                Label13.Visible = true;
                Label13.Text = "There is a error occured!";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            gridBind();
            if (GridView1.Rows.Count == 0)
            {
                Label14.Text = "There is no accounts linked!";
                Label14.Visible = true;
            }
        }
    }
}