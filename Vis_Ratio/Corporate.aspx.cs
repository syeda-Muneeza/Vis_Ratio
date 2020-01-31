using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Vis_Ratio
{
    public partial class Corporate : System.Web.UI.Page
    {

        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["username"] != null)
            {
                lblid.Text = Session["uid"].ToString();
                Txtuser.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("~/LoginPage.aspx");

            }

            if (!Page.IsPostBack)

            {
                SqlConnection db1 = new SqlConnection(con);
                string com = "Select * from [Vis_Ratio].[dbo].[Company] where Sec_code='1'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, db1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Drpcompany.DataSource = dt;
                Drpcompany.DataBind();

            }
        }

        private void Emptybox()
        {
            FixedAssets.Text = "";
            LongDeposits.Text = "";
            Stocktrade.Text = "";
            TradeDebts.Text = "";
            CashBalances.Text = "";
            TotalAssets.Text = "";
            TradeDebts.Text = "";
            LongDebt.Text = "";
            ShortDebt.Text = "";
            TotalDebt.Text = "";
            TotalLiabilities.Text = "";
            TotalEquity.Text = "";
            NeSales.Text = "";
            GrossProfit.Text = "";
            ProfitTax.Text = "";
            ProfitAfter.Text = "";
            FFO.Text = "";
            GrossMargin.Text = "";
            NetMargin.Text = "";
            FFODebt.Text = "";
            FFOTermDebt.Text = "";
            Debtoverage.Text = "";
            ROAA.Text = "";
            ROAE.Text = "";
            Gearing.Text = "";
            Leverage.Text = "";
            Stock.Text = "";
            CurrentRatio.Text = "";
            txtMyDate.Text = "";
            Trade.Text = "";
            Drpratingtype.SelectedIndex = 0;
            Drpltrating.SelectedIndex = 0;
            Drpst.SelectedIndex = 0;
            Drpsub.SelectedIndex = 0;
            Drpac.SelectedIndex = 0;
            Drpoutlook.SelectedIndex = 0;

        }

        protected void Save_Click(object sender, EventArgs e)
         
            { 
                    SqlConnection db = new SqlConnection(con);  
                    db.Open();
                    string insert = "Insert into[Vis_Ratio].[dbo].[Corporates](Com_code,rating_type,Lt_rating,st_rating,sub_sector" +
                    ",accounttype,outlook,User_code,Entry_Date,FixedAssets,Longterm,StockTrade,TradeDebts,CashBank,TotalAssets,TradePayables,LongTermDebt" +
                    ",ShortTermDebt,TotalDebt,TotalLiabilities,TotalEquity,NetSales,GrossProfit,ProfitBeforeTax," +
                    "ProfitafterTax,FFO,GrossMargin,NetMargin,FFOTotalDebt,FFOtoLongDebt,ServicingCoverage,ROAA,ROAE" +
                    ",Gearing,Leverage,ShortTermBorrowings,CurrentRatio,cordate) values('" + Drpcompany.SelectedItem.Value + "','"
                    + Drpratingtype.SelectedItem + "','" + Drpltrating.SelectedItem + "','" + Drpst.SelectedItem + "','"+ Drpsub.SelectedItem + "'," +
                    "'" + Drpac.SelectedItem + "','" + Drpoutlook.SelectedItem + "','" + lblid.Text + "','" + DateTime.Now + "','" + FixedAssets.Text + "','" + LongDeposits.Text + "','"
                    + Stocktrade.Text + "','" + TradeDebts.Text + "','" + CashBalances.Text + "','" + TotalAssets.Text + "','" + Trade.Text + "','" 
                    + LongDebt.Text + "','" + ShortDebt.Text + "','" + TotalDebt.Text + "','" + TotalLiabilities.Text + "','" + TotalEquity.Text + "','" 
                    + NeSales.Text + "','" + GrossProfit.Text + "','" + ProfitTax.Text + "','" + ProfitAfter.Text + "','" + FFO.Text + "','" + GrossMargin.Text + "','"
                    + NetMargin.Text + "','" + FFODebt.Text + "','" + FFOTermDebt.Text + "','" + Debtoverage.Text + "','" + ROAA.Text + "','"
                    + ROAE.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + Stock.Text + "','" + CurrentRatio.Text + "','" + txtMyDate.Text + "')";

            SqlCommand cmd = new SqlCommand(insert, db);
                cmd.ExecuteNonQuery();
                
                db.Close();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
            conn.Open();
            string query = "select max(CorID) as CorID from Corporates";
          
            SqlDataAdapter adpt = new SqlDataAdapter(query, conn);
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            adpt.Fill(ds);
            adpt.Fill(dt);

            string cid = Convert.ToString(ds.Tables[0].Rows[0]["CorID"]);

            SqlConnection db1 = new SqlConnection(con);
            db1.Open();
            string insert1 = "Insert into[Vis_Ratio].[dbo].[His_corp](CorID,Com_code,rating_type,Lt_rating,st_rating,sub_sector" +
            ",accounttype,outlook,User_code,Entry_Date,FixedAssets,Longterm,StockTrade,TradeDebts,CashBank,TotalAssets,TradePayables,LongTermDebt" +
            ",ShortTermDebt,TotalDebt,TotalLiabilities,TotalEquity,NetSales,GrossProfit,ProfitBeforeTax," +
            "ProfitafterTax,FFO,GrossMargin,NetMargin,FFOTotalDebt,FFOtoLongDebt,ServicingCoverage,ROAA,ROAE" +
            ",Gearing,Leverage,ShortTermBorrowings,CurrentRatio,cordate) values('" + cid + "','" + Drpcompany.SelectedItem.Value + "','"
            + Drpratingtype.SelectedItem + "','" + Drpltrating.SelectedItem + "','" + Drpst.SelectedItem + "','" + Drpsub.SelectedItem + "'," +
            "'" + Drpac.SelectedItem + "','" + Drpoutlook.SelectedItem + "','" + lblid.Text + "','" + DateTime.Now + "','" + FixedAssets.Text + "','" + LongDeposits.Text + "','"
            + Stocktrade.Text + "','" + TradeDebts.Text + "','" + CashBalances.Text + "','" + TotalAssets.Text + "','" + Trade.Text + "','"
            + LongDebt.Text + "','" + ShortDebt.Text + "','" + TotalDebt.Text + "','" + TotalLiabilities.Text + "','" + TotalEquity.Text + "','"
            + NeSales.Text + "','" + GrossProfit.Text + "','" + ProfitTax.Text + "','" + ProfitAfter.Text + "','" + FFO.Text + "','" + GrossMargin.Text + "','"
            + NetMargin.Text + "','" + FFODebt.Text + "','" + FFOTermDebt.Text + "','" + Debtoverage.Text + "','" + ROAA.Text + "','"
            + ROAE.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + Stock.Text + "','" + CurrentRatio.Text + "','" + txtMyDate.Text + "')";

            SqlCommand cmd1 = new SqlCommand(insert1, db1);
            cmd1.ExecuteNonQuery();

            db1.Close();

            Emptybox();
            }
        

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            lblid.Text = "";
            Txtuser.Text = "";

            Session.RemoveAll();
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Corporate_search.aspx");
        }
    }
}