using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vis_Ratio
{
    public partial class Companyprofile : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();
        //SqlConnection con = new SqlConnection(@"Data Source=visdb.c66yg152cqdw.us-west-2.rds.amazonaws.com;Persist Security Info=False;User ID=sa;Initial Catalog=jcrvis_Vista;pwd=jcrvis123");


        DataTable dtcompany = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection(con);

            string insert = "Insert into[Vis_Ratio].[dbo].[Company](Company_name,Sec_code) values (@Company_name ,@Sec_code)";
                
            SqlCommand cmd = new SqlCommand(insert,db);
            cmd.Parameters.AddWithValue("@Company_name", txtcompany.Text);
            cmd.Parameters.AddWithValue("@Sec_code", Drpsector.SelectedItem.Value);
            db.Open();
           int i= cmd.ExecuteNonQuery();
            if (i != 0)
            {
                Lit1.Text = "Record Saved..";

            }
            else {

                Lit1.Text = "Failed to insert..";


            }
            Lit1.Text = "";
            txtcompany.Text = "";
            Drpsector.SelectedIndex = 0;

            
            db.Close();
        }


     
    }
}