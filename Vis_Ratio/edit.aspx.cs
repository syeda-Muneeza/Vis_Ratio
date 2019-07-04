using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace Vis_Ratio
{
    public partial class edit : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)

        {
            if (!Page.IsPostBack)
            {
                BindDrp();
               
            }
        }
        protected void BindDrp()
        {
            DataTable dt = new DataTable();
            //  using (SqlConnection con = new SqlConnection(conn))
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();

            try
            {
                // con.Open();

                cmd = new SqlCommand("Select * from Company where Sec_code='1'", conn);
                adp = new SqlDataAdapter(cmd);

                adp.Fill(dt);
                // con.Close();
                ddlc.DataSource = dt;
                ddlc.DataTextField = "Company_name";
                ddlc.DataValueField = "Company_code";
                ddlc.DataBind();
                ddlc.Items.Insert(0, new ListItem("All", ""));

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

        protected void BindGridview(int empid)

        {
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter();
            try

            {
                SqlCommand cmd = new SqlCommand("select * from Corporates where Com_code = '" + empid + "'", conn);
                adp.SelectCommand = cmd;
                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvc.DataSource = dt;
                    gvc.DataBind();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                dt.Clear();
                dt.Dispose();
                adp.Dispose();
            }

        }

        protected void ddlc_SelectedIndexChanged(object sender, EventArgs e)

        {
            try
            {
                int empId = Convert.ToInt32(ddlc.SelectedValue);
                BindGridview(empId);
                lblcom.Text = ddlc.SelectedItem.Text;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }

        }
               
        protected void gvc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.EditIndex = e.NewEditIndex;
            BindGridview(empId);
        }

        protected void gvc_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //using (SqlConnection con = new SqlConnection(conn))
            {
                int empId = Convert.ToInt32(ddlc.SelectedValue);
                int userid = Convert.ToInt32(gvc.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gvc.Rows[e.RowIndex];
             // Label lblID = (Label)row.FindControl("lblID");
                TextBox FixedAssets = (TextBox)row.Cells[0].Controls[0];
                TextBox Longterm = (TextBox)row.Cells[1].Controls[0];
                TextBox StockTrade = (TextBox)row.Cells[2].Controls[0];
                TextBox TradeDebts = (TextBox)row.Cells[3].Controls[0];
                TextBox CashBank = (TextBox)row.Cells[4].Controls[0];
                TextBox TotalAssets = (TextBox)row.Cells[5].Controls[0];
                TextBox TradePayables = (TextBox)row.Cells[6].Controls[0];
                TextBox LongTermDebt = (TextBox)row.Cells[7].Controls[0];

                TextBox ShortTermDebt = (TextBox)row.Cells[8].Controls[0];
                TextBox TotalDebt = (TextBox)row.Cells[9].Controls[0];
                TextBox TotalLiabilities = (TextBox)row.Cells[10].Controls[0];
                TextBox TotalEquity = (TextBox)row.Cells[11].Controls[0];
             // TextBox INCOMECASHFLOW = (TextBox)row.Cells[12].Controls[0];
                TextBox NetSales = (TextBox)row.Cells[12].Controls[0];
                TextBox GrossProfit = (TextBox)row.Cells[13].Controls[0];
                TextBox ProfitBeforeTax = (TextBox)row.Cells[14].Controls[0];
                TextBox ProfitafterTax = (TextBox)row.Cells[15].Controls[0];
                TextBox FFO = (TextBox)row.Cells[16].Controls[0];
             // TextBox RATIOANALYSIS = (TextBox)row.Cells[18].Controls[0];
                TextBox GrossMargin = (TextBox)row.Cells[17].Controls[0];

                TextBox NetMargin = (TextBox)row.Cells[18].Controls[0];
                TextBox FFOTotalDebt = (TextBox)row.Cells[19].Controls[0];
                TextBox FFOtoLongDebt = (TextBox)row.Cells[20].Controls[0];
                TextBox ServicingCoverage = (TextBox)row.Cells[21].Controls[0];
                TextBox ROAA = (TextBox)row.Cells[22].Controls[0];
                TextBox ROAE = (TextBox)row.Cells[23].Controls[0];
                TextBox Gearing = (TextBox)row.Cells[24].Controls[0];
                TextBox Leverage = (TextBox)row.Cells[25].Controls[0];
                TextBox ShortTermBorrowings = (TextBox)row.Cells[26].Controls[0];
                TextBox CurrentRatio = (TextBox)row.Cells[27].Controls[0];

                TextBox cordate = (TextBox)row.Cells[28].Controls[0];
                TextBox rating_type = (TextBox)row.Cells[29].Controls[0];
                TextBox Lt_rating = (TextBox)row.Cells[30].Controls[0];
                TextBox st_rating = (TextBox)row.Cells[31].Controls[0];
                TextBox sub_sector = (TextBox)row.Cells[32].Controls[0];
                TextBox outlook = (TextBox)row.Cells[33].Controls[0];
                TextBox accounttype = (TextBox)row.Cells[34].Controls[0];
                    
    

                gvc.EditIndex = -1;
                conn.Open();
             // SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
                SqlCommand cmd = new SqlCommand("Update Corporates set FixedAssets='"+FixedAssets.Text+"',Longterm='"+Longterm.Text+"',StockTrade='"+StockTrade.Text+"',TradeDebts='"+TradeDebts.Text+"',CashBank='"+CashBank.Text+"',TotalAssets='"+TotalAssets.Text+"',TradePayables='"+TradePayables.Text+"',LongTermDebt='"+LongTermDebt.Text+"',ShortTermDebt='"+ShortTermDebt.Text+"',TotalDebt='"+TotalDebt.Text+"',TotalLiabilities='"+TotalLiabilities.Text+"',TotalEquity='"+TotalEquity.Text+"',NetSales='"+NetSales.Text+"',GrossProfit='"+GrossProfit.Text+"',ProfitBeforeTax='"+ProfitBeforeTax.Text+"',ProfitafterTax='"+ProfitafterTax.Text+"',FFO='"+FFO.Text+"',GrossMargin='"+GrossMargin.Text+"',NetMargin='"+NetMargin.Text+"',FFOTotalDebt='"+FFOTotalDebt.Text+"',FFOtoLongDebt='"+FFOtoLongDebt.Text+"',ServicingCoverage='"+ServicingCoverage.Text+"',ROAA='"+ROAA.Text+"',ROAE='"+ROAE.Text+"',Gearing='"+Gearing.Text+"',Leverage='"+Leverage.Text+"',ShortTermBorrowings='"+ShortTermBorrowings.Text+"',CurrentRatio='"+CurrentRatio.Text+"',cordate='"+cordate.Text+"',rating_type='"+rating_type.Text+"',Lt_rating='"+Lt_rating.Text+"',st_rating='"+st_rating.Text+"',sub_sector='"+sub_sector.Text+"',outlook='"+outlook.Text+"',accounttype='"+accounttype.Text+ "'where CorID='" + userid + "'", conn);

                cmd.ExecuteNonQuery();
                conn.Close();
                BindGridview(empId);
            }

        }

        protected void gvc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.PageIndex = e.NewPageIndex;
            BindGridview(empId);
        }

        protected void gvc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.EditIndex = -1;
            BindGridview(empId);
        }



        protected void gvc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            GridViewRow row = (GridViewRow)gvc.Rows[e.RowIndex];
           // Label lbldeleteid = (Label)row.FindControl("lblID");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM Corporates where CorID='" + Convert.ToInt32(gvc.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridview(empId);
        }
       
    }
}
