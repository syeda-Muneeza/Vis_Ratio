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
    public partial class Investment : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void emptybox()
        {
            CashbBalances.Text = "";
            TotalInvestments.Text = "";
            TotalAssets.Text = "";
            Tier.Text = "";
            networth.Text = "";
            Revenueop.Text = "";
            Operating.Text = "";
            ProfitTax.Text = "";
            ProfitAfter.Text = "";
            Average.Text = "";
            DividendPayout.Text = "";
            Efficiency.Text = "";
            Gearing.Text = "";
            Leverage.Text = "";
            currentratio.Text = "";
            ROAA.Text = "";
            ROAE.Text = "";
            Liquid.Text = "";
            txtMyDate.Text = "";



        }

        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Investment](CashBank,TotaInvestments,TotaAssets,TierEquity,NetWorth,RevenueOpe,OperatingExpenses,ProfitBeforeTax,ProfitAfterTax,AveReturnEquity,DividendPayout,Efficiency,Gearing,Leverage,CurrentRatio,ROAA,ROAE,TotaLiabilities,investdate) values('" + CashbBalances.Text + "','" + TotalInvestments.Text + "','" + TotalAssets.Text + "','" + Tier.Text + "','" + networth.Text + "','" + Revenueop.Text + "','" + Operating.Text + "','" + ProfitTax.Text + "','" + ProfitAfter.Text + "','" + Average.Text + "','" + DividendPayout.Text + "','" + Efficiency.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + currentratio.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + Liquid.Text + "','" + txtMyDate.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                int m = cmd.ExecuteNonQuery();
                if (m != 0)
                {
                    Response.Write("< script > alert('Data Inserted !!') </ script >");
                }
                else
                {
                    Response.Write("< script > alert('Data Inserted !!') </ script > ");
                }
                db.Close();

            }
        }
    }
}