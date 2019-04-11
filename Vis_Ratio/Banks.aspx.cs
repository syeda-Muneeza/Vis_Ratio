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
    public partial class Banks : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       private void emptybox()
        {
            TotalAssets.Text = "";
            GrossAdv.Text = "";
            TotalInvest.Text = "";
            PIBsDeposits.Text = "";
            PIBsInvest.Text = "";
            NPLs.Text = "";
            GrossInfection.Text = "";
            Specific.Text = "";
            TotalCoverage.Text = "";
            NetInfection.Text = "";
            Deposits.Text = "";
            MarketDepo.Text = "";
            GrossDeposit.Text = "";
            CostDeposits.Text = "";
            CostFunding.Text = "";
            LCR.Text = "";
            NSFR.Text = "";
            LiquidBorrowings.Text = "";
            TierEquity.Text = "";
            Shareholder.Text = "";
            Revalnvestments.Text = "";
            Netcapital.Text = "";
            TTierCAR.Text = "";
            CAR.Text = "";
            Leverage.Text = "";
            TotalSharehol.Text = "";
            Net.Text = "";
            Return1.Text = "";
            Spreads.Text = "";
            Adminexpenses.Text = "";
            Efficiency.Text = "";
            Overheads.Text = "";
            ROAA.Text = "";
            ROAE.Text = "";
            OperaLoss.Text = "";
            ProfitTax.Text = "";
            Staffoutsourced.Text = "";
            Branches.Text = "";
            Employeecosts.Text = "";
            Percost.Text = "";
            Perdeposit.Text = "";
            Emplobranch.Text = "";
            bankdate.Text = "";
            PrROAA.Text = "";

    }

        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Banks](TotalAssets, GrossAdvances, TotalInvestments, PIBDeposits, PIBTotalInvestments, NPLs, GrossInfection, SpecificProvisioning, TotalProvisioning, NetInfection, Deposits, DomesticDeposits, GrossAdvDepositRatio, CostofDeposits, CostofFunding, LCR, NSFR, LiquidAssets, TierEquity, ShareholdersEquity, RevaluationInvestments, NetNPLs, TierCAR, CAR, Leverage, TotalShareholde, NetInterestIncome, EarningAssets, Spreads, Expenses, Efficiency, Overheads, economROAA, ROAA, ROAE, OperatingProfit, ProfitTax, StaffStrength, Branches, Employeerelated, Perbranch, Peremployee, Employeesper,bankdate) values('" + TotalAssets.Text + "','" + GrossAdv.Text + "','" + TotalInvest.Text + "','" + PIBsDeposits.Text + "','" + PIBsInvest.Text + "','" + NPLs.Text + "','" + GrossInfection.Text + "','" + Specific.Text + "','" + TotalCoverage.Text + "','" + NetInfection.Text + "','" + Deposits.Text + "','" + MarketDepo.Text + "','" + GrossDeposit.Text + "','" + CostDeposits.Text + "','" + CostFunding.Text + "','" + LCR.Text + "','" + NSFR.Text + "','" + LiquidBorrowings.Text + "','" + TierEquity.Text + "','" + Shareholder.Text + "','" + Revalnvestments.Text + "','" + Netcapital.Text + "','" + TTierCAR.Text + "','" + CAR.Text + "','" + Leverage.Text + "','" + TotalSharehol.Text + "','" + Net.Text + "','" + Return1.Text + "','" + Spreads.Text + "','" + Adminexpenses.Text + "','" + Efficiency.Text + "','" + Overheads.Text + "','" + PrROAA.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + OperaLoss.Text + "','" + ProfitTax.Text + "','" + Staffoutsourced.Text + "','" + Branches.Text + "','" + Employeecosts.Text + "','" + Percost.Text + "','" + Perdeposit.Text + "','" + Emplobranch.Text + "','" + bankdate.Text + "')";
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