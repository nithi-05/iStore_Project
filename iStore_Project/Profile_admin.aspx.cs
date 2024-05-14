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
    public partial class Profile_admin : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["user_id"]);
            string getData = "select Admin_Name from Admin where Admin_id=" + id + "";
            SqlDataReader dr = ob.Fun_Reader(getData);
            while(dr.Read())
            {
                Label1.Text = "Welcome " + dr["Admin_Name"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Users.aspx");
        }

      
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Add_Categories.aspx");
        }


        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Add_Products.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Feedback.aspx");
        }
    }
}