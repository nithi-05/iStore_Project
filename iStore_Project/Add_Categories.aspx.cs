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
   
    public partial class Add_Categories : System.Web.UI.Page
    {
      
        ConnectionClass ob = new ConnectionClass();

        public void gridBind()
        {
            string getCat = "select * from Category";
            DataSet ds = ob.Fun_Adapter(getCat);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gridBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic = "~/Category_Photos/"+FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pic));
            string str = "insert into Category values('" + TextBox1.Text + "','" + pic + "','" + TextBox2.Text + "','"+DropDownList1.SelectedItem.Text+"')";
            int i = ob.Fun_NonQuery(str);
            if(i==1)
            {
                //Response.Redirect("Add_Categories.aspx");
                gridBind();
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Couldn't insert";
            }
        }
      
        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            
            int id = Convert.ToInt32(e.CommandArgument);
            Session["cat"] = id.ToString();
            string i_data = "select * from Category where Category_id=" + id + "";
            Panel1.Visible = true;
            Label1.Text = "Edit Categories";
           
         
            GridView1.Visible = false;
            SqlDataReader dr = ob.Fun_Reader(i_data);
            while (dr.Read())
            {
                TextBox3.Text = dr["Category_Name"].ToString();
                Image1.ImageUrl = dr["Category_Photo"].ToString();
                TextBox4.Text = dr["Category_Description"].ToString();
            }
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!FileUpload2.HasFile)
            {
                string _setdata = "update Category set Category_Name='" + TextBox3.Text + "', Category_Photo='" + Image1.ImageUrl + "',Category_Description='" + TextBox4.Text + "' where Category_id='" + Session["cat"] + "'";
                int i = ob.Fun_NonQuery(_setdata);
                if (i == 1)
                {
                    Panel1.Visible = false;
                    GridView1.Visible = true;
                    Label1.Text = "Categories";
                    gridBind();
                }
            }
            else
            {
                string photo = "~/Category_Photos/" + FileUpload2.FileName;
                FileUpload2.SaveAs(MapPath(photo));
                string _setdata = "update Category set Category_Name='" + TextBox3.Text + "', Category_Photo='" + photo + "',Category_Description='" + TextBox4.Text + "' where Category_id='" + Session["cat"] + "'";
                int i = ob.Fun_NonQuery(_setdata);
                if (i == 1)
                {
                    GridView1.Visible = true;
                    Panel1.Visible = false;
                    Label1.Text = "Categories";
                    gridBind();
                }
            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string _getCatStatus = "select Category_Status from Category where Category_id="+id+"";
            string _status = ob.Fun_Scalar(_getCatStatus);
            if (_status == "Available")
            {
                string _statusQuery = "update Category set Category_Status = 'Unavailable' where Category_id="+id+"";
                int i = ob.Fun_NonQuery(_statusQuery);
                if (i == 1)
                {
                    gridBind();
                }
            }
            else if (_status == "Unavailable")
            {
                string _statusQuery = "update Category set Category_Status = 'Available' where Category_id=" + id + "";
                int i = ob.Fun_NonQuery(_statusQuery);
                if (i == 1)
                {
                    gridBind();
                }
            }
        }
    }
}