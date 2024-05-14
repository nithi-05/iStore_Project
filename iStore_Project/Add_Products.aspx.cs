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
    public partial class Add_Products : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();

        public void setCategory()
        {

            string _getCat = "select * from Category";
            DataSet ds = ob.Fun_Adapter(_getCat);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "Category_Name";
            DropDownList2.DataValueField = "Category_id";
            DropDownList2.DataBind();

          

            DropDownList2.Items.Insert(0, "--Select--");
            DropDownList2.Items[0].Selected = true;
            DropDownList2.Items[0].Attributes["Disabled"] = "Disabled";

            DropDownList1.Items.Insert(0, "--Select--");
            DropDownList1.Items[0].Selected = true;
            DropDownList1.Items[0].Attributes["Disabled"] = "Disabled";

        }

        public void setProducts()
        {
           
                string _getprdct = "select A.*,B.Category_Name from Product as A join Category as B on A.Category_id=B.Category_id";
                DataSet ds = ob.Fun_Adapter(_getprdct);
                GridView1.DataSource = ds;
                GridView1.DataBind();
           
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setCategory();
                setProducts();
            }
              
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _prdctPhoto = "~/Product_Photos/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(_prdctPhoto));
            int catId = Convert.ToInt32(DropDownList2.SelectedValue);
            string ins_Prdct = "insert into Product values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + _prdctPhoto + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedItem.Text + "'," + catId + ")";
            int i = ob.Fun_NonQuery(ins_Prdct);
            if (i == 1)
            {
                setProducts();
                Response.Redirect("Add_Products.aspx");
            }
            else
            {
                Label17.Text = "Error occure in insertion";
                Label17.Visible = true;
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Session["pro_id"] = id.ToString();
            string i_data = "select * from Product where Product_id=" + id + "";
            Panel1.Visible = true;
            Label1.Text = "Edit Products";

            string _getCat = "select * from Category";
            DataSet ds = ob.Fun_Adapter(_getCat);
            DropDownList4.DataSource = ds;
            DropDownList4.DataTextField = "Category_Name";
            DropDownList4.DataValueField = "Category_id";
            DropDownList4.DataBind();

            GridView1.Visible = false;
            SqlDataReader dr = ob.Fun_Reader(i_data);
            while (dr.Read())
            {
                TextBox5.Text = dr["Product_Name"].ToString();
                Image1.ImageUrl = dr["Product_Photo"].ToString();
                TextBox6.Text = dr["Product_Details"].ToString();
                TextBox7.Text = dr["Product_Price"].ToString();
                TextBox8.Text = dr["Product_Stock"].ToString();
                DropDownList4.SelectedValue = dr["Category_id"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!FileUpload2.HasFile)
            {
                string _setdata = "update Product set Product_Name='" + TextBox5.Text + "',Product_Details='" + TextBox6.Text + "', Product_Photo='" + Image1.ImageUrl + "',Product_Price='" + TextBox7.Text + "',Product_Stock='" + TextBox8.Text + "',Category_id=" + DropDownList4.SelectedItem.Value+ "  where Product_id='" + Session["pro_id"] + "'";
                int i = ob.Fun_NonQuery(_setdata);
                if (i == 1)
                {
                    Panel1.Visible = false;
                    GridView1.Visible = true;
                    Label1.Text = "Products";
                    setProducts();
                }
            }
            else
            {
                string photo = "~/Product_Photos/" + FileUpload2.FileName;
                FileUpload2.SaveAs(MapPath(photo));
                string _setdata = "update Product set Product_Name='" + TextBox5.Text + "',Product_Details='" + TextBox6.Text + "', Product_Photo='" +photo + "',Product_Price='" + TextBox7.Text + "',Product_Stock='" + TextBox8.Text + "',Category_id=" + DropDownList4.SelectedItem.Value + "  where Product_id='" + Session["pro_id"] + "'";
                int i = ob.Fun_NonQuery(_setdata);
                if (i == 1)
                {
                    GridView1.Visible = true;
                    Panel1.Visible = false;
                    Label1.Text = "Products";
                    setProducts();
                }
            }
        }

        protected void LinkButton3_Command(object sender, CommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            string _getPrdctStatus = "select Product_Status from Product where Product_id=" + id + "";
            string _status = ob.Fun_Scalar(_getPrdctStatus);
            if (_status == "Available")
            {
                string _statusQuery = "update Product set Product_Status = 'Unavailable' where Product_id=" + id + "";
                int i = ob.Fun_NonQuery(_statusQuery);
                if (i == 1)
                {
                   // setCategory();
                    setProducts();
                }
            }
            else if (_status == "Unavailable")
            {
                string _statusQuery = "update Product set Product_Status = 'Available' where Product_id=" + id + "";
                int i = ob.Fun_NonQuery(_statusQuery);
                if (i == 1)
                {
                    //setCategory();
                    setProducts();
                }
            }
        }
    }
}