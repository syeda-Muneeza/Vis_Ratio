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
    public partial class Insurance : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void emptybox()
        {
            Adjustedequity.Text = "";
            NetFinancial.Text = "";
            OperatingLeverage.Text = "";
            InsurancDebt.Text = "";
            CombinedRatio.Text = "";
            ROAE.Text = "";
            UnderwritingRatio.Text = "";
            GrossClaimsRatio.Text = "";
            NetRatio.Text = "";
            Underwriting.Text = "";
            UnderwritingPremium.Text = "";
            NetProfit.Text = "";
            MotorPremium.Text = "";
            ReinsuranceCeded.Text = "";
            GrossPremium.Text = "";
            NetRevenue.Text = "";
            txtMyDate.Text = "";
                }

        protected void Save_Click(object sender, EventArgs e)
        {
            {

                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Insurance](Adjustedequity,NetFinancialLever,OperatingLeverage,InsuranceDebt,CombinedRatio,ROAE,UnderwritingExpense,GrossClaims,NetClaims,UnderwritingProfit,GrossPremium,NetProfit,MotorPremium,ReinsuranceCeded,GrossPrem,NetPremiumRevenue,insdate) values('" + Adjustedequity.Text + "','" + NetFinancial.Text + "','" + OperatingLeverage.Text + "','" + InsurancDebt.Text + "','" + CombinedRatio.Text + "','" + ROAE.Text + "','" + UnderwritingRatio.Text + "','" + GrossClaimsRatio.Text + "','" + NetRatio.Text + "','" + Underwriting.Text + "','" + UnderwritingPremium.Text + "','" + NetProfit.Text + "','" + MotorPremium.Text + "','" + ReinsuranceCeded.Text + "','" + GrossPremium.Text + "','" + NetRevenue.Text + "','" + txtMyDate.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                cmd.ExecuteNonQuery();
                //if (m != 0)
                //{
                //Response.Write("< script > alert('Data Inserted !!') </ script >");
                //}
                //else
                //{
                //Response.Write("< script > alert('Data Inserted !!') </ script > ");
                //}
                db.Close();
                emptybox();

            }
        }
    }
}