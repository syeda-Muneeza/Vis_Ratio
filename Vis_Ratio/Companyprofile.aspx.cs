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
        DataTable dtcompany = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            filldata();
        }

        private void filldata()
        {

            SqlConnection db = new SqlConnection(con);
           
            SqlCommand com = new SqlCommand("select * FROM [Vis_Ratio].[dbo].[Sectors]", db); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
           
            da.Fill(dt);  // fill dataset
            Drpsector.DataSource = dt;
            //Drpsector.DataBind();
            Drpsector.DataTextField = "Sector_name";
            Drpsector.DataValueField = "Sector_id";
            Drpsector.DataBind();
            


            //Drpsector.DataTextField = ds.Tables[0].Columns["Sector_name"].ToString(); // text field name of table dispalyed in dropdown
            //Drpsector.DataValueField = ds.Tables[0].Columns["Sector_id"].oString();             // to retrive specific  textfield name 
            //Drpsector.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            //Drpsector.DataBind();  //binding dropdownlist


        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            SqlConnection db1 = new SqlConnection(con);
            db1.Open();
            string insert = "Insert into[Vis_Ratio].[dbo].[C ompany](Company_name,Sec_code) values('" + txtcompany.Text + "','" + Drpsector.SelectedItem.Value + "')";
            SqlCommand cmd = new SqlCommand(insert, db1);
            cmd.ExecuteNonQuery();
            db1.Close();
        }

        private void emptybox()
        {
            txtcompany.Text = "";
            Drpsector.SelectedIndex = 0;


        }

        protected void Drpsector_SelectedIndexChanged(object sender, EventArgs e)
        {
            string a;
            a = Drpsector.SelectedValue;
            if (Drpsector.SelectedIndex == 0)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Select Driver ID then proceed.');", true);
            }

        }
    }
}