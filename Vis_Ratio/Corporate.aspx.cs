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

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            { 
                SqlConnection db = new SqlConnection(con);  
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Corporates](Com_code,rating_type,Lt_rating,st_rating, FixedAssets,Longterm,StockTrade,TradeDebts,CashBank,TotalAssets,TradePayables,LongTermDebt,ShortTermDebt,TotalDebt,TotalLiabilities,TotalEquity,INCOMECASHFLOW,NetSales,GrossProfit,ProfitBeforeTax,ProfitafterTax,FFO,RATIOANALYSIS,GrossMargin,NetMargin,FFOTotalDebt,FFOtoLongDebt,ServicingCoverage,ROAA,ROAE,Gearing,Leverage,ShortTermBorrowings,CurrentRatio,cordate) values('" + Drpcompany.SelectedItem.Value + "','" + Drpratingtype.SelectedItem + "','" + Drpltrating.SelectedItem + "','" + Drpst.SelectedItem + "','" + FixedAssets.Text + "','" + LongDeposits.Text + "','" + Stocktrade.Text + "','" + TradeDebts.Text + "','" + CashBalances.Text + "','" + TotalAssets.Text + "','" + TradeDebts.Text + "','" + LongDebt.Text + "','" + ShortDebt.Text + "','" + TotalDebt.Text + "','" + TotalLiabilities.Text + "','" + TotalEquity.Text + "','" + NeSales.Text + "','" + GrossProfit.Text + "','" + ProfitTax.Text + "','" + ProfitAfter.Text + "','" + FFO.Text + "','" + GrossMargin.Text + "','" + NetMargin.Text + "','" + FFODebt.Text + "','" + FFOTermDebt.Text + "','" + Debtoverage.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + Stock.Text + "','" + CurrentRatio.Text + "','" + txtMyDate.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                cmd.ExecuteNonQuery();
                //if (m != 0)
                //{
                //    Response.Write("< script > alert('Data Inserted !!') </ script >");
                //}
                //else
                //{
                //    Response.Write("< script > alert('Data Inserted !!') </ script > ");
                //}
                db.Close();
                Emptybox();
            }
        }
    }
}