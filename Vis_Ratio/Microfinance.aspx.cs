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
    public partial class Microfinance : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void emptybox()
        {
            TotalAssets.Text = "";
            GrossAdv.Text = "";
            Marketshare.Text = "";
            GrossInfectionPAR30.Text = "";
            Incremental.Text = "";
            NetInfection.Text = "";
            Deposits.Text = "";
            GrossAdvancesto.Text = "";
            NetAdvancesto.Text = "";
            CostofFunds.Text = "";
            LiquidAssets.Text = "";
            Networth.Text = "";
            CapitalAdequacy.Text = "";
            CoverageRatio.Text = "";
            Leverage.Text = "";
            EquityGLP.Text = "";
            GLPtotalassets.Text = "";
            Spreads.Text = "";
            Overheads.Text = "";

            ProfitafterTax.Text = "";
            OSS.Text = "";
            FSS.Text = "";
            InternalRatio.Text = "";
            EquityGrowth.Text = "";
            GrantIncome.Text = "";
            ROAA.Text = "";
            ROAE.Text = "";
            NumberofBranches.Text = "";

            Numberofficers.Text = "";
            Activeclients.Text = "";
            Averageloansize.Text = "";
            Activeclients.Text = "";
            Averageloanamount.Text = "";
            txtMyDate.Text = "";
}
        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Microfinance](TotalAssets,GrossAdvances,Marketsharegross,GrossInfection,Incrementalinfection,NetInfection,Deposits,DepositRatio,NetAdvances,CostofFunds,LiquidAssets,Networth,CapitalAdequacy,CoverageRatio,LeverageRatoBasel,GLP,GLPtotalassets,Spreads,Overheads,Tax,OSS,FSS,CapitalGeneration,EquityGrowth,GrantIncome,ROAA,ROAE,Branches,loanofficers,activeclients,Averagloansize,Loanofficer,Averageloan,micdate)  values('" + TotalAssets.Text + "','" + GrossAdv.Text + "','" + Marketshare.Text + "','" + GrossInfectionPAR30.Text + "','" + Incremental.Text + "','" + NetInfection.Text + "','" + Deposits.Text + "','" + GrossAdvancesto.Text + "','" + NetAdvancesto.Text + "','" + CostofFunds.Text + "','" + LiquidAssets.Text + "','" + Networth.Text + "','" + CapitalAdequacy.Text + "','" + CoverageRatio.Text + "','" + Leverage.Text + "','" + EquityGLP.Text + "','" + GLPtotalassets.Text + "','" + Spreads.Text + "','" + Overheads.Text + "','" + ProfitafterTax.Text + "','" + OSS.Text + "','" + FSS.Text + "','" + InternalRatio.Text + "','" + EquityGrowth.Text + "','" + GrantIncome.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + NumberofBranches.Text + "','" + Numberofficers.Text + "','" + Activeclients.Text + "','" + Averageloansize.Text + "','" + Activeclients.Text + "','" + Averageloanamount.Text + "','" + txtMyDate.Text + "')";
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