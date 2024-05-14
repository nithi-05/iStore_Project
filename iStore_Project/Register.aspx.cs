using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iStore_Project
{
    public partial class Register : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(User_id) from Login";
            string uid = ob.Fun_Scalar(sel);
            int user_id = 0;
            if (uid == "")
            {
                user_id = 0;
            }
            else
            {
                int newregid = Convert.ToInt32(uid);
                user_id = newregid + 1;
            }
            string ins = "insert into User_Reg values(" + user_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            int i = ob.Fun_NonQuery(ins);
            if (i != 0)
            {
                string inslog = "insert into Login values('" + TextBox6.Text + "','" + TextBox7.Text + "','user','active'," + user_id + ")";
                int j = ob.Fun_NonQuery(inslog);
                if (j == 1)
                {
                    Label9.Visible = true;
                    Label9.Text = "Registered";
                }
                else
                {
                    Label9.Visible = true;
                    Label9.Text = "Not registered";
                }
            }
        }
    }
}