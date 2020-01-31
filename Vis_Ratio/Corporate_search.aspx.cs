using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vis_Ratio
{
    public partial class Corporate_search : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
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

            
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //bindgrideview();
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
            bindgrideview();
                     
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            lblid.Text = "";
            Txtuser.Text = "";
            Session.RemoveAll();
            Response.Redirect("~/LoginPage.aspx");
        }

        protected DataTable Transpose(DataTable dt)
        {

            //DataTable dt = (DataTable)ViewState["GridData"];
            DataTable newdt = new DataTable();
            //Create New Columns( count of columns will be equal to number of rows including header  
            for (int i = 0; i <= dt.Rows.Count; i++)
            {
                //Column Name string is not specified because column name will come in rows at start  
                newdt.Columns.Add("");
            }
            //Now Iterate through old Datatable and fill new Datatable   
            //Create a new row in New Datatable   
            for (int k = 0; k < dt.Columns.Count; k++)
            {
                DataRow newdr = newdt.NewRow();
                //Assign first column Value in NewDatatable with column name of old table  
                newdr[0] = dt.Columns[k].ColumnName.ToString();
                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    newdr[j + 1] = dt.Rows[j][k].ToString();
                }
                newdt.Rows.Add(newdr);
            }

            return newdt;
         
        }


        protected void bindgrideview()
        {

            //DataTable dt = (DataTable)ViewState["GridData"];
            //gvc.DataSource = dt;
            //gvc.DataBind();
            //DataTable newdt = Transpose(dt);
            //gv2.DataSource = newdt;
            //gv2.DataBind();

            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();


            string sectorname = ddlsector.SelectedValue;
            string fixedas = Ddlfix.SelectedItem.Text;

            string a = txtno1.Text;
            string b = txtno2.Text;
            string lt1 = Ddlrating.SelectedValue;
            string lt2 = Ddlrating2.SelectedValue;
            //step 1
            if (sectorname == "0" && Ddlfix.SelectedItem.Text == "0" && txtno1.Text == "" && txtno2.Text == "" && lt1 == "" && lt2 == "")
            {
                cmd = new SqlCommand("select * from VW_lt order by company_name,cordate,sub_secname asc", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;

                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

            }
            //step 2
            else if (ddlsector.SelectedIndex > 0 && Ddlfix.SelectedItem.Text == "0" && txtno1.Text == "" && txtno2.Text == "" && lt1 == "" && lt1 == "" && lt2 == "")

            {
                cmd = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sectorname + "' order by sub_secname,company_name asc", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();
                }
                else
                {

                    string message = "Selection of Data Is Incorrect Format!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }


            }
            //step 3
            else if (sectorname == "0" && Ddlfix.SelectedIndex > 0 && txtno1.Text.Length > 0 && txtno2.Text.Length > 0 && lt1 == "" && lt2 == "")

            {

                cmd = new SqlCommand("select * from VW_lt where " + fixedas + "  not in ('NA', '') and cast(" + fixedas + " as float)  between '" + a + "' and '" + b + "' order by company_name asc ", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

                else
                {

                    string message = "Select Min and Max textbox Value";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }

            }
            //step 4
            else if (sectorname == "0" && Ddlfix.SelectedItem.Text == "0" && txtno1.Text == "" && txtno2.Text == "" && Ddlrating.SelectedIndex > 0 && Ddlrating2.SelectedIndex > 0)
            {
                cmd = new SqlCommand("select * from VW_lt where LT_id between '" + lt1 + "' and '" + lt2 + "' order by company_name asc", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;

                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

                else
                {

                    string message = "Select LT Rating range In correct Format!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }

            }
            //step 5
            else if (ddlsector.SelectedIndex > 0 && Ddlfix.SelectedIndex > 0 && txtno1.Text.Length > 0 && txtno2.Text.Length > 0 && lt1 == "" && lt2 == "")
            {
                cmd = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sectorname + "' and " + fixedas + "  not in ('NA', '') and cast(" + fixedas + " as float)  between '" + a + "' and '" + b + "' order by company_name asc ", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }
                else
                {

                    string message = "Selection of Data Is Incorrect Format!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }


            }

            //step 6
            else if (ddlsector.SelectedIndex > 0 && Ddlfix.SelectedIndex > 0 && txtno1.Text.Length > 0 && txtno2.Text.Length > 0 && Ddlrating.SelectedIndex > 0 && lt2 == "")
            {
                cmd = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sectorname + "' and " + fixedas + "  not in ('NA', '') and cast(" + fixedas + " as float)  between '" + a + "' and '" + b + "' and LT_id ='" + lt1 + "' order by company_name asc ", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

                else
                {

                    string message = "Selection of Data Is Incorrect Format!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }



            }
            //step 7
            else if (ddlsector.SelectedIndex > 0 && Ddlfix.SelectedIndex > 0 && txtno1.Text.Length > 0 && txtno2.Text.Length > 0 && Ddlrating.SelectedIndex > 0 && Ddlrating2.SelectedIndex > 0)
            {
                cmd = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sectorname + "' and " + fixedas + "  not in ('NA', '') and cast(" + fixedas + " as float)  between '" + a + "' and '" + b + "' and LT_id between '" + lt1 + "' and '" + lt2 + "' order by company_name asc ", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

                else
                {

                    string message = "No record found!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }

            }

            //step 8
            else if (ddlsector.SelectedIndex > 0 && Ddlfix.SelectedItem.Text == "0" && txtno1.Text == "" && txtno2.Text == "" && Ddlrating.SelectedIndex > 0 && Ddlrating2.SelectedIndex > 0)
            {
                cmd = new SqlCommand("select * from VW_lt where Sub_sectorid='" + sectorname + "' and LT_id between '" + lt1 + "' and '" + lt2 + "' order by company_name asc ", conn);
                adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ViewState["GridData"] = dt;
                    gvc.DataSource = dt;
                    gvc.DataBind();
                    DataTable newdt = Transpose(dt);
                    gv2.DataSource = newdt;
                    gv2.DataBind();

                }

                else
                {

                    string message = "No record found!";
                    ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", "<script>alert('" + message + "');</script>");
                }



            }


        }

        protected void gv2_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[0].CssClass = "header";
            }

        }

        protected void gvc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvc.PageIndex = e.NewPageIndex;
            bindgrideview();
        }


        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //    /*Verifies that the control is rendered */
        //}

    

        //protected void btnPrint_Click(object sender, EventArgs e)
        //{
        //    gvc.AllowPaging = false;
        //    gvc.DataBind();
        //    StringWriter sw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    gvc.RenderControl(hw);
        //    string gridHTML = sw.ToString().Replace("\"", "'")
        //        .Replace(System.Environment.NewLine, "");
        //    StringBuilder sb = new StringBuilder();
        //    sb.Append("<script type = 'text/javascript'>");
        //    sb.Append("window.onload = new function(){");
        //    sb.Append("var printWin = window.open('', '', 'left=0");
        //    sb.Append(",top=0,width=1000,height=600,status=0');");
        //    sb.Append("printWin.document.write(\"");
        //    sb.Append(gridHTML);
        //    sb.Append("\");");
        //    sb.Append("printWin.document.close();");
        //    sb.Append("printWin.focus();");
        //    sb.Append("printWin.print();");
        //    sb.Append("printWin.close();};");
        //    sb.Append("</script>");
        //    ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());
        //    gvc.AllowPaging = true;
        //    gvc.DataBind();
        //}

        //protected void btnPrintFromCodeBehind_Click(object sender, EventArgs e)
        //{
        //    ScriptManager.RegisterStartupScript(this, typeof(Page), "printGrid", "printGrid();", true);
        //}


    }
    }
