using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace iStore_Project
{
    public partial class View_Feedback : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        public void gridBind()
        {
            string s = "select * from Feedback where Status ='Pending'";
            DataSet ds = ob.Fun_Adapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            gridBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int i = Convert.ToInt32(e.CommandArgument);
            Session["fid"] = i;
            string f = "select t1.*,t2.* from Feedback t1 join User_Reg t2 on t1.User_id = t2.User_id where fb_id='" + i + "'";
            SqlDataReader dr = ob.Fun_Reader(f);
            while (dr.Read())
            {
                Label15.Text = dr["User_Name"].ToString();
                Label17.Text = dr["User_Email"].ToString();
            }
        }

        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SendEmail2("Nithin", "nithinbaby.kzm@gmail.com", "zzio vnea hcmp bpea", "'" + Label15.Text + "'", " " + Label17.Text + " ", "'"+Label16.Text+"'", "'" + TextBox1.Text + "'");
            string s = "update Feedback set Reply='" + TextBox1.Text + "',Status='Sent' where fb_id='" + Session["fid"] + "'";
            int u = ob.Fun_NonQuery(s);
            if (u == 1)
            {
                gridBind();
                Panel1.Visible = false;

            }
        }
    }
}