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
    public partial class Brokerage : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection db1 = new SqlConnection(con);
                string com = "Select * from [Vis_Ratio].[dbo].[Company] where Sec_code='4'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, db1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Drpcompany.DataSource = dt;

                Drpcompany.DataBind();
            }
        }
        private void Emptybox()
        {

            BrokerIncome.Text = "";
            Corpinance.Text = "";
            MTSIncome.Text = "";
            LeverIncome.Text = "";
            OtherIncome.Text = "";
            DividendIncome.Text = "";
            RecurringRevenue.Text = "";
            Capitalnvest.Text = "";
            Fair.Text = "";
            NetProfit.Text = "";
            Administrativeexpenses.Text = "";
            FinanceCost.Text = "";
            ShortTerm.Text = "";
        Long1.Text = "";
        TradeDebts.Text = "";
        TotalAssets.Text = "";
        Totalliabil.Text = "";
        TotalEquity.Text = "";
        Surplus.Text = "";
        Equityless.Text = "";
        LiquidAssets.Text = "";
        InterestBearing.Text = "";
        MarketShare.Text = "";
        Marketvalue.Text = "";
        ROAA.Text = "";
        ROAE.Text = "";
        Efficiency.Text = "";
        LiquidAss.Text = "";
        Liquidiabil.Text = "";
        Leverage.Text = "";
        Gearing.Text = "";
        Short1.Text = "";
        txtMyDate.Text = "";

        }
        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Brokerage](Com_code, BrokerageIncome,FinanceIncome,MTSMFS,LeverageFinancing,RecurringIncome,DividendIncome,RecurringRevenue,Capitalgain,Fairvaluegain,NeProfit,Administrativeexpenses,FinanceCost,ShortTermInvestments,LongTermInvestments,TradeDebts,TotalAssets,Totalliabilities,INCLSurplus,Surplus,EquitySurplus,LiquiAssets,InterestBearing,MarketSharevolumes,MarketSharevalue,ROAA,ROAE,Efficiency,Liabilities,Assets,Leverage,Gearing,Equity,brkdate) values('" + Drpcompany.SelectedItem.Value + "','" + BrokerIncome.Text + "','" + Corpinance.Text + "','" + MTSIncome.Text + "','" + LeverIncome.Text + "','" + OtherIncome.Text + "','" + DividendIncome.Text + "','" + RecurringRevenue.Text + "','" + Capitalnvest.Text + "','" + Fair.Text + "','" + NetProfit.Text + "','" + Administrativeexpenses.Text + "','" + FinanceCost.Text + "','" + ShortTerm.Text + "','" + Long1.Text + "','" + TradeDebts.Text + "','" +TotalAssets.Text + "','" + Totalliabil.Text + "','" + TotalEquity.Text + "','" + Surplus.Text + "','" + Equityless.Text + "','" + LiquidAssets.Text + "','" + InterestBearing.Text + "','" + MarketShare.Text + "','" + Marketvalue.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + Efficiency.Text + "','" + LiquidAss.Text + "','" + Liquidiabil.Text + "','" + Leverage.Text + "','" + Gearing.Text + "','" + Short1.Text + "','" + txtMyDate.Text + "')";
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