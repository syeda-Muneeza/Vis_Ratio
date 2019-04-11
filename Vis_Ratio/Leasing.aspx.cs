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
    public partial class Leasing : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[LeasingCompanies](TotalInvestments,NetInvestment,TotalAssets,Lease,Borrowings,COIs,TierEquity,NetWorth,NetMark,OperatingExpenses,ProfitBeforeTax,ProfitAfteTax,GrossInfection,ProvisioningCoverage,NetInfection,Efficiency,ROAA,ROAE,CurrentRatio,leasedate) values('" + TotalInvestments.Text + "','" + NetInvestment.Text + "','" + TotalAssets.Text + "','" + Leasemoney.Text + "','" + Borrowings.Text + "','" + coi.Text + "','" + Tier1.Text + "','" + networth.Text + "','" + NetMark.Text + "','" + Operating.Text + "','" + ProfitTax.Text + "','" + ProfitAfter.Text + "','" + GrossInfection.Text + "','" + Provisioning.Text + "','" + NetInfection.Text + "','" + Efficiency.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + Current.Text + "','" + txtMyDate.Text + "')";
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