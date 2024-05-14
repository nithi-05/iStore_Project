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
    public partial class View_Bill : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string s = "select t1.*,t2.* from Product t1 join Order_Tab t2 on t1.Product_id=t2.Product_id where Order_Status='Not Paid' and User_id='" + Session["user_id"] + "'";
                DataSet ds = ob.Fun_Adapter(s);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                string g = "select * from Bill where User_id='" + Session["user_id"] + "' and Bill_Status='Nill'";
                SqlDataReader dr = ob.Fun_Reader(g);
                while (dr.Read())
                {
                    Label2.Text = dr["Bill_Id"].ToString();
                    Label3.Text = dr["Bill_Date"].ToString();
                    Label6.Text = dr["Grand_Total"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string _gTotQuery = "select Grand_Total from Bill where User_id='" + Session["user_id"] + "'";
            int _grandTotal = Convert.ToInt32(ob.Fun_Scalar(_gTotQuery));

            BalCheck.ServiceClient obj = new BalCheck.ServiceClient();
            string bal = obj.BalanceCheck(TextBox1.Text);
            int _acBal = Convert.ToInt32(bal);

            if (_acBal > _grandTotal)
            {
                string OrdCountQuery = "select max(Order_Id) from Order_Tab where User_id='" + Session["user_id"] + "'";
                int _orderCount = Convert.ToInt32(ob.Fun_Scalar(OrdCountQuery));
                if (_orderCount != 0)
                {
                    int pro_id = 0;
                    for (int ab = 1; ab <= _orderCount; ab++)
                    {
                        int pro_qty = 0, cart_qty = 0, qty = 0;
                        string _pQuery = "select t1.*,t2.* from Product t1 join Order_Tab t2 on t1.Product_id= t2.Product_id where User_id='" + Session["user_id"] + "'";
                        SqlDataReader dr = ob.Fun_Reader(_pQuery);
                        while (dr.Read())
                        {
                            pro_qty = Convert.ToInt32(dr["Product_Stock"]);
                            cart_qty = Convert.ToInt32(dr["Cart_Quantity"]);
                            pro_id = Convert.ToInt32(dr["Product_id"]);
                            break;
                        }
                        qty = pro_qty - cart_qty;
                        string sup = "update Product set Product_Stock = " + qty + " where Product_id=" + pro_id + "";
                        int up = ob.Fun_NonQuery(sup);

                    }
                    string f = "update Order_Tab set Order_Status='Paid'";
                    int q = ob.Fun_NonQuery(f);

                    string t = "update Bill set Bill_Status='Paid'";
                    int r = ob.Fun_NonQuery(t);

                    string u = "update Account set Balance_Amount='" + (_acBal - _grandTotal) + "' where User_id='" + Session["user_id"] + "'";
                    int x = ob.Fun_NonQuery(u);

                    string ty = "update Order_Tab set Cart_Status='Unavailable'";
                    int fg = ob.Fun_NonQuery(ty);
                    Label7.Visible = true;
                    Label7.Text = "Paid";
                    Button1.Visible = false;
                }
                
            }
        }
    }
}