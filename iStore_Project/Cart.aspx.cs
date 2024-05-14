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
    public partial class Cart : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        int _cid, _cQnty, _cTot, _uId, _pId, _gTot;
        string _cStatus = "";
        public void gridBind()
        {
            //string _load_cart = "select * from Cart where User_id='"+Session["user_id"]+"'";
            string load_cart = "select A.*,B.* from Cart as A join Product as B on A.Product_id = B.Product_id where User_id = "+Session["user_id"]+"";
            DataSet ds = ob.Fun_Adapter(load_cart);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    gridBind();
                }
                catch
                {

                }
            }
            if (GridView1.Rows.Count == 0)
            {
                Label1.Text = "Cart is empty!";
            }
        }

     
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getId = Convert.ToInt32(GridView1.DataKeys[i].Value);
            TextBox txtQuantity = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
           
            string _getPId = "select Product_id from Cart where Cart_id="+getId+"";
            string _p_id = ob.Fun_Scalar(_getPId);

            string _price = "select Product_Price from Product where Product_id='"+_p_id+"'";
            string itemPrice = ob.Fun_Scalar(_price);
            
            int _itemPrice = (Convert.ToInt32(itemPrice)) * (Convert.ToInt32(txtQuantity.Text));
            string _update = "update Cart set Cart_Quantity='" + txtQuantity.Text + "',Cart_Total='"+_itemPrice+"' where Cart_id="+getId;
          
            int j = ob.Fun_NonQuery(_update);
            if (j == 1)
            {
                GridView1.EditIndex = -1;
                gridBind();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int _cart_id = Convert.ToInt32(e.CommandArgument);
            string _removeItem = "delete from Cart where Cart_id=" + _cart_id + "";
            int i = ob.Fun_NonQuery(_removeItem);
            if (i == 1)
            {
                gridBind();
            }
            else
            {

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string max = "select max(Cart_id) from Cart";
            int j = Convert.ToInt32(ob.Fun_Scalar(max));
                for (int i = 1; i <= j; i++)
                {
                    int id = Convert.ToInt32(Session["user_id"]);
                    string u = "select User_id from Cart where Cart_id=" + i + "";
                    int users = Convert.ToInt32(ob.Fun_Scalar(u));
                    if (id == users)
                    {
                        string _items = "select * from Cart where Cart_id=" + i + "";
                        SqlDataReader dr = ob.Fun_Reader(_items);
                        while (dr.Read())
                        {
                            _cid = Convert.ToInt32(dr["Cart_id"].ToString());
                            _cQnty = Convert.ToInt32(dr["Cart_Quantity"].ToString());
                            _cTot = Convert.ToInt32(dr["Cart_Total"].ToString());
                            _cStatus = dr["Cart_Status"].ToString();
                            _uId = Convert.ToInt32(dr["User_id"].ToString());
                            _pId = Convert.ToInt32(dr["Product_id"].ToString());
                        }
                        _gTot = _gTot + _cTot;
                        string _insOrder = "insert into Order_Tab values('Not Paid'," + _cid + "," + _cQnty + "," + _cTot + ",'" + _cStatus + "'," + _uId + "," + _pId + ")";
                        int y = ob.Fun_NonQuery(_insOrder);


                    }
                }
                string _bill = "insert into Bill values('" + DateTime.Now.ToString("yyyy-MM-dd") + "','Nill'," + _uId + "," + _gTot + ")";
                int g = ob.Fun_NonQuery(_bill);
                if (g !=0)
                {
                    string _delCart = "delete from Cart where User_id='" + Session["user_id"] + "'";
                    ob.Fun_NonQuery(_delCart);
                    Response.Redirect("View_Bill.aspx");
                }
            }
            
    }
}