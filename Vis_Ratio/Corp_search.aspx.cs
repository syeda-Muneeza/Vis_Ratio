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
    public partial class Corp_search : System.Web.UI.Page
    {

         
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

        //String strConnString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!Page.IsPostBack)

            {
                    if (Session["username"] != null)

                {
                        lblid.Text = Session["uid"].ToString();
                        Txtuser.Text = Session["username"].ToString();
                        BindDrp();
                        ltDrp();
                        ltDrp2();
                    }
                    else
                    {
                        Response.Redirect("~/LoginPage.aspx");

                    }

                }

                }

        protected void BindDrp()
        {

            DataTable dt = new DataTable();
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

        protected void ltDrp()
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();
            try

            {
                // con.Open();
                cmd = new SqlCommand("select * from LT_Rat order by LT_id asc", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                // con.Close();
                Ddlrating.DataSource = dt;
                Ddlrating.DataTextField = "Lt_ratingName";
                Ddlrating.DataValueField = "LT_id";
                Ddlrating.DataBind();
                Ddlrating.Items.Insert(0, new ListItem("All", ""));

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
        protected void ltDrp2()

        {

            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();

            try

            {

                // con.Open();
                cmd = new SqlCommand("select * from LT_Rat order by LT_id asc", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                Ddlrating2.DataSource = dt;
                Ddlrating2.DataTextField = "Lt_ratingName";
                Ddlrating2.DataValueField = "LT_id";
                Ddlrating2.DataBind();
                Ddlrating2.Items.Insert(0, new ListItem("All", ""));

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

            }
        }

        protected void btnsave_Click(object sender, EventArgs e)

        {

            string no1 = txtno1.Text;
            string no2 = txtno2.Text;
            string sectorname = ddlsector.SelectedValue;
            string fixedas = Ddlfix.SelectedItem.Text;
            string lt1 = Ddlrating.SelectedValue;
            string lt2 = Ddlrating2.SelectedValue;
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();

            SqlDataAdapter adp = new SqlDataAdapter();

            try

            {

                 cmd = new SqlCommand("select cast(" + fixedas + " as float)as newrange , *from VW_lt where Sub_sectorid='" + sectorname + "' and " + fixedas + "  not in('NA','') and cast(" + fixedas + "  as float)  between '" + no1 + "' and '" + no2 + "' and LT_id between '" + lt1 + "' and '" + lt2 + "' order by company_name,cordate,accounttype asc", conn);
                  //cmd = new SqlCommand("Select * from Corporates where sub_sector='" + ddlsector.SelectedValue + "' and " + Ddlfix.SelectedItem.Text + " between '" + txtno1.Text + "' and '" + txtno2.Text + "'", conn);

                adp = new SqlDataAdapter(cmd);

                adp.Fill(dt);
                Session["sessDataSet"] = dt;

                if (dt.Rows.Count > 0)

                {
                    DataTable dt1 = (DataTable)Session["sessDataSet"];
                    gvc.DataSource = dt1;
                    gvc.DataBind();
                }

                else {
                    string str = "<span style='color:red'>Selection of Data Is Incorrect Format!</span>";
                    Response.Write(str);
                    gvc.Dispose();
                    gvc.Visible = false;
                 
                }
                gvc.Visible = true;
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

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            lblid.Text = "";
            Txtuser.Text = "";
            Session.RemoveAll();
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void ddlsector_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            //SqlCommand cmd = new SqlCommand("select * from VW_lt order by Sub_Secname asc", conn);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable finaltable = new DataTable();
            //sda.Fill(finaltable);
            
            
            
            //ddlsector.Items.Clear();
            //if (ddlsector.SelectedItem.Text.ToString() == "All")
            //{
            //    gvc.DataSource = dt;
            //    gvc.DataBind();
            //}

            //else
            //{

            DataTable dt1 = new DataTable();
            ddlsector.DataTextField = "Sub_Secname";
            ddlsector.DataValueField = "Sub_sectorid";

            string sector = ddlsector.SelectedValue;


            SqlCommand cmd1 = new SqlCommand();

            SqlDataAdapter adp1 = new SqlDataAdapter();
            cmd1 = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sector + "' order by company_name,cordate,accounttype asc", conn);
            adp1 = new SqlDataAdapter(cmd1);

            adp1.Fill(dt1);
            gvc.DataSource = dt1;
            gvc.DataBind();

            Ddlfix.SelectedValue = "0";
            txtno1.Text = "";
            txtno2.Text = "";
            Ddlrating.Items.Insert(0, new ListItem("All", ""));
            Ddlrating2.Items.Insert(0, new ListItem("All", ""));
            //Ddlrating.SelectedValue = "0";
            //Ddlrating2.SelectedValue = "0";
            //}


        }


        private DataTable PivotTable(DataTable finaltable)
        {

            DataTable newTable = new DataTable();
            DataRow dr = null;
            //Add Columns to new Table
            for (int i = 0; i <= finaltable.Rows.Count; i++)
            {
                newTable.Columns.Add(new DataColumn(finaltable.Columns[i].ColumnName, typeof(String)));
            }

            //Execute the Pivot Method
            for (int cols = 0; cols < finaltable.Columns.Count; cols++)
            {
                dr = newTable.NewRow();
                for (int rows = 0; rows < finaltable.Rows.Count; rows++)
                {
                    if (rows < finaltable.Columns.Count)
                    {
                        dr[0] = finaltable.Columns[cols].ColumnName; // Add the Column Name in the first Column
                        dr[rows + 1] = finaltable.Rows[rows][cols];
                    }
                }
                newTable.Rows.Add(dr); //add the DataRow to the new Table rows collection
            }
            return newTable;
        }



    }
  
}