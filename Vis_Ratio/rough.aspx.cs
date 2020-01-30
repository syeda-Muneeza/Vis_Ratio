using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vis_Ratio
{
    public partial class rough : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
           
                    BindDrp();
                    

            }

        protected void BindDrp()
        {
            DataTable dt = new DataTable();
            //using (SqlConnection con = new SqlConnection(conn))
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();
            try
            {

                // con.Open();
                //cmd = new SqlCommand("select Sub_sectorid, Sub_Secname,* from Sub_sector", conn);
                cmd = new SqlCommand("select * from Sub_sector", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                // con.Close();
                ddlsector.DataSource = dt;
                ddlsector.DataTextField = "Sub_Secname";
                ddlsector.DataValueField = "Sub_sectorid";
                ddlsector.DataBind();
                ddlsector.Items.Insert(0, new ListItem("All", "0"));

             

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                cmd.Dispose();
                adp.Dispose();
                dt.Clear();
                dt.Dispose();
            }
        }

        protected void ddlsector_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from VW_lt order by Sub_Secname asc", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //ddlsector.Items.Clear();
            if (ddlsector.SelectedItem.Text.ToString() == "All")
            {
                gvc.DataSource = dt;
                gvc.DataBind();
            }

            else
            {
               
                DataTable dt1 = new DataTable();
                ddlsector.DataTextField = "Sub_Secname";
            ddlsector.DataValueField = "Sub_sectorid";
          
                string sector = ddlsector.SelectedValue;
               

                SqlCommand cmd1 = new SqlCommand();

                SqlDataAdapter adp1 = new SqlDataAdapter();
                cmd1 = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sector+ "' order by company_name,cordate,accounttype asc", conn);
                adp1 = new SqlDataAdapter(cmd1);

                adp1.Fill(dt1);
                gvc.DataSource = dt1;
            gvc.DataBind();
            }

            


        }

       
    }
    }
