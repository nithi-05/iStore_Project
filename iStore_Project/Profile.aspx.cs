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
    public partial class Profile : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string _getCat = "select * from Category";
            DataSet ds = ob.Fun_Adapter(_getCat);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            int user_id = Convert.ToInt32(Session["user_id"]);
            string _getUserInfo = "select * from User_Reg where User_id="+user_id+"";

        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
          
                int id = Convert.ToInt32(e.CommandArgument);
                Session["cid"] = id;
                Response.Redirect("View_Products.aspx");
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Bank_Acc.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Feedback.aspx");
        }
    }
}