using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Vis_Ratio
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("~/Corporate.aspx");
            }
            else
            {
                Session.RemoveAll();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
            conn.Open();
            string query = "select User_code,* from User_profile where User_id='" + txtuser.Text + "' and User_password='" + txtpassword.Text + "'";
            //SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataAdapter adpt = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            adpt.Fill(ds);
            adpt.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                Session["uid"] = ds.Tables[0].Rows[0]["User_code"];
                
                Session["username"] = txtuser.Text;
                Response.Redirect("~/Corporate.aspx");
                //Session.RemoveAll();
            }
            else
            {
                Response.Write("username or password is incorrect!");
            }

        }
    }
}