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
    public partial class AMCs : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection db1 = new SqlConnection(con);
                string com = "Select * from [Vis_Ratio].[dbo].[Company] where Sec_code='6'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, db1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Drpcompany.DataSource = dt;
                Drpcompany.DataBind();
            }
        }
        
        private void emptybox()
        {
            AUMs.Text = "";
            AUMinSMAs.Text = "";
            SMAs.Text = "";
            MarketShare.Text = "";
            RetailAUMs.Text = "";
            Retail.Text = "";
            Associates.Text = "";
            NumberofInvestors.Text = "";
            ManagementFees.Text = "";
            Corerevenue.Text = "";
            Adminstrative.Text = "";
            OperatingProfit.Text = "";
            Efficiency.Text = "";
            TotalEquity.Text = "";
            Longdebt.Text = "";
            TotalDebt.Text = "";
            NumberFunds.Text = "";
            portfolio.Text = "";
            TotalAssets.Text = "";
            IndependentDirectors.Text = "";
            BoardMembers.Text = "";
            BoardCommittees.Text = "";
            ManagementCommittees.Text = "";
            ICComposition.Text = "";
            SharedFunctions.Text = "";
            txtMyDate.Text = "";
            Drpratingtype.SelectedIndex = 0;
            Drpltrating.SelectedIndex = 0;
            Drpst.SelectedIndex = 0;
            }

        protected void Save_Click1(object sender, EventArgs e)

        {

            SqlConnection db = new SqlConnection(con);
            db.Open();
            string insert = "Insert into[Vis_Ratio].[dbo].[AMCs](Com_code,rating_type,Lt_rating,st_rating,AUMs,AUMinSMAs,NoofSMAs,MarketShare,RetailAUMs,Retail,Associates,NoInvestors,ManagementFees,Corerevenue,Adminexpenses,OperatingProfit,Efficiency,TotalEquity,Longtermdebt,TotalDebt,NumberofFunds,portfolio,Assets,IndependentDirectors,BoardMembers,BoardCommittees,ManagementCommittees,ICComposition,SharedFunctions,amcdate) values('" + Drpcompany.SelectedItem.Value+ "','" + Drpratingtype.SelectedItem + "','"+Drpltrating.SelectedItem+"','"+Drpst.SelectedItem+"','" + AUMs.Text + "','" + AUMinSMAs.Text + "','" + SMAs.Text + "','" + MarketShare.Text + "','" + RetailAUMs.Text + "','" + Retail.Text + "','" + Associates.Text + "','" + NumberofInvestors.Text + "','" + ManagementFees.Text + "','" + Corerevenue.Text + "','" + Adminstrative.Text + "','" + OperatingProfit.Text + "','" + Efficiency.Text + "','" + TotalEquity.Text + "','" + Longdebt.Text + "','" + TotalDebt.Text + "','" + NumberFunds.Text + "','" + portfolio.Text + "','" + TotalAssets.Text + "','" + IndependentDirectors.Text + "','" + BoardMembers.Text + "','" + BoardCommittees.Text + "','" + ManagementCommittees.Text + "','" + ICComposition.Text + "','" + SharedFunctions.Text + "','" + txtMyDate.Text + "')";
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
            emptybox();
         }
        
    }
}