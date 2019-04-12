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

}

        //protected void Save_Click(object sender, EventArgs e)

        //{
        //    //string con = @"Data Source=DESKTOP-2BV215M\SQLEXPRESS;Initial Catalog=Vis_Ratio;Integrated Security=True";

        //    //dtamcdata.Rows(0)("AUMs") = AUMs.Text;
        //    //dtamcdata.Rows(0)("AUMinSMAs") = AUMinSMAs.Text;
        //    //dtamcdata.Rows(0)("NoofSMAs") = SMAs.Text;
        //    //dtamcdata.Rows(0)("MarketShare") = MarketShare.Text;
        //    //dtamcdata.Rows(0)("RetailAUMs") = RetailAUMs.Text;
        //    //dtamcdata.Rows(0)("Retail") = Retail.Text;
        //    //dtamcdata.Rows(0)("Associates") = Associates.Text;
        //    //dtamcdata.Rows(0)("NoInvestors") = NumberofInvestors.Text;
        //    //dtamcdata.Rows(0)("ManagementFees") = ManagementFees.Text;
        //    //dtamcdata.Rows(0)("Corerevenue") = Corerevenue.Text;
        //    //dtamcdata.Rows(0)("Adminexpenses") = Adminstrative.Text;
        //    //dtamcdata.Rows(0)("OperatingProfit") = OperatingProfit.Text;
        //    //dtamcdata.Rows(0)("Efficiency") = Efficiency.Text;
        //    //dtamcdata.Rows(0)("TotalEquity") = TotalEquity.Text;
        //    //dtamcdata.Rows(0)("Longtermdebt") = Longdebt.Text;
        //    //dtamcdata.Rows(0)("TotalDebt") = TotalDebt.Text;
        //    //dtamcdata.Rows(0)("NumberofFunds") = NumberFunds.Text;
        //    //dtamcdata.Rows(0)("portfolio") = portfolio.Text;
        //    //dtamcdata.Rows(0)("Assets") = TotalAssets.Text;
        //    //dtamcdata.Rows(0)("IndependentDirectors") = IndependentDirectors.Text;
        //    //dtamcdata.Rows(0)("BoardMembers") = BoardMembers.Text;
        //    //dtamcdata.Rows(0)("BoardCommittees") = BoardCommittees.Text;
        //    //dtamcdata.Rows(0)("ManagementCommittees") = ManagementCommittees.Text;
        //    //dtamcdata.Rows(0)("ICComposition") = ICComposition.Text;
        //    //dtamcdata.Rows(0)("SharedFunctions") = SharedFunctions.Text;

        //}

        protected void Save_Click1(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string insert = "Insert into[Vis_Ratio].[dbo].[AMCs](AUMs,AUMinSMAs,NoofSMAs,MarketShare,RetailAUMs,Retail,Associates,NoInvestors,ManagementFees,Corerevenue,Adminexpenses,OperatingProfit,Efficiency,TotalEquity,Longtermdebt,TotalDebt,NumberofFunds,portfolio,Assets,IndependentDirectors,BoardMembers,BoardCommittees,ManagementCommittees,ICComposition,SharedFunctions,amcdate) values('" + AUMs.Text + "','" + AUMinSMAs.Text + "','" + SMAs.Text + "','" + MarketShare.Text + "','" + RetailAUMs.Text + "','" + Retail.Text + "','" + Associates.Text + "','" + NumberofInvestors.Text + "','" + ManagementFees.Text + "','" + Corerevenue.Text + "','" + Adminstrative.Text + "','" + OperatingProfit.Text + "','" + Efficiency.Text + "','" + TotalEquity.Text + "','" + Longdebt.Text + "','" + TotalDebt.Text + "','" + NumberFunds.Text + "','" + portfolio.Text + "','" + TotalAssets.Text + "','" + IndependentDirectors.Text + "','" + BoardMembers.Text + "','" + BoardCommittees.Text + "','" + ManagementCommittees.Text + "','" + ICComposition.Text + "','" + SharedFunctions.Text + "','" + txtMyDate.Text + "')";
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
        //private void Fillamcdata()

        //{

        //    AUMs.Text = Convert.ToDouble(dtamcdata.Rows(0)("AUMs").ToString()).ToString("N");
        //    AUMinSMAs.Text = Convert.ToDouble(dtamcdata.Rows(0)("AUMinSMAs").ToString()).ToString("N");
        //    SMAs.Text = Convert.ToDouble(dtamcdata.Rows(0)("NoofSMAs").ToString()).ToString("N");
        //    MarketShare.Text = Convert.ToDouble(dtamcdata.Rows(0)("MarketShare").ToString()).ToString("N");
        //    RetailAUMs.Text = Convert.ToDouble(dtamcdata.Rows(0)("RetailAUMs").ToString()).ToString("N");
        //    Retail.Text = Convert.ToDouble(dtamcdata.Rows(0)("Retail").ToString()).ToString("N");
        //    Associates.Text = Convert.ToDouble(dtamcdata.Rows(0)("Associates").ToString()).ToString("N");
        //    NumberofInvestors.Text = Convert.ToDouble(dtamcdata.Rows(0)("NoInvestors").ToString()).ToString("N");
        //    ManagementFees.Text = Convert.ToDouble(dtamcdata.Rows(0)("ManagementFees").ToString()).ToString("N");
        //    Corerevenue.Text = Convert.ToDouble(dtamcdata.Rows(0)("Corerevenue").ToString()).ToString("N");
        //    Adminstrative.Text = Convert.ToDouble(dtamcdata.Rows(0)("Adminexpenses").ToString()).ToString("N");
        //    OperatingProfit.Text = Convert.ToDouble(dtamcdata.Rows(0)("OperatingProfit").ToString()).ToString("N");
        //    Efficiency.Text = Convert.ToDouble(dtamcdata.Rows(0)("Efficiency").ToString()).ToString("N");
        //    TotalEquity.Text = Convert.ToDouble(dtamcdata.Rows(0)("TotalEquity").ToString()).ToString("N");
        //    Longdebt.Text = Convert.ToDouble(dtamcdata.Rows(0)("Longtermdebt").ToString()).ToString("N");
        //    TotalDebt.Text = Convert.ToDouble(dtamcdata.Rows(0)("TotalDebt").ToString()).ToString("N"); 
        //    NumberFunds.Text = Convert.ToDouble(dtamcdata.Rows(0)("NumberofFunds").ToString()).ToString("N");
        //    portfolio.Text = Convert.ToDouble(dtamcdata.Rows(0)("portfolio").ToString()).ToString("N");
        //    TotalAssets.Text = Convert.ToDouble(dtamcdata.Rows(0)("Assets").ToString()).ToString("N"); 
        //    IndependentDirectors.Text = Convert.ToDouble(dtamcdata.Rows(0)("IndependentDirectors").ToString()).ToString("N");
        //    BoardMembers.Text = Convert.ToDouble(dtamcdata.Rows(0)("BoardMembers").ToString()).ToString("N");
        //    BoardCommittees.Text = Convert.ToDouble(dtamcdata.Rows(0)("BoardCommittees").ToString()).ToString("N");
        //    ManagementCommittees.Text = Convert.ToDouble(dtamcdata.Rows(0)("ManagementCommittees").ToString()).ToString("N");
        //    ICComposition.Text = Convert.ToDouble(dtamcdata.Rows(0)("ICComposition").ToString()).ToString("N");
        //    SharedFunctions.Text = Convert.ToDouble(dtamcdata.Rows(0)("SharedFunctions").ToString()).ToString("N");

        //}

        //private void insertdata()
        //{
        //    try
        //    {
        //        {
        //            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);


        //             conn.Open();
        //            SqlCommand cmd = new SqlCommand();
        //            // SqlCommand cmd = new SqlCommand("Insert into(Vis_Ratio).(dbo).(AMCs)(AUMs,AUMinSMAs,NoofSMAs,MarketShare,RetailAUMs,Retail,Associates,NoInvestors,ManagementFees,Corerevenue,Adminexpenses,OperatingProfit,Efficiency,TotalEquity,Longtermdebt,TotalDebt,NumberofFunds,portfolio,Assets,IndependentDirectors,BoardMembers,BoardCommittees,ManagementCommittees,ICComposition,SharedFunctions) values ('" + AUMs.Text + "','" + AUMinSMAs.Text + "','" + SMAs.Text + "','" + MarketShare.Text + "','" + RetailAUMs.Text + "','" + Retail.Text + "','" + Associates.Text + "','" + NumberofInvestors.Text + "','" + ManagementFees.Text + "','" + Corerevenue.Text + "','" + Adminstrative.Text + "','" + OperatingProfit.Text + "','" + Efficiency.Text + "','" + TotalEquity.Text + "','" + Longdebt.Text + "','" + TotalDebt.Text + "','" + NumberFunds.Text + "','" + portfolio.Text + "','" + TotalAssets.Text + "','" + IndependentDirectors.Text + "','" + BoardMembers.Text + "','" + BoardCommittees.Text + "','" + ManagementCommittees.Text + "','" + ICComposition.Text + "','" + SharedFunctions.Text + "'
        //            cmd.CommandText = "Insert into(Vis_Ratio).(dbo).(AMCs)(AUMs,AUMinSMAs,NoofSMAs,MarketShare,RetailAUMs,Retail,Associates,NoInvestors,ManagementFees,Corerevenue,Adminexpenses,OperatingProfit,Efficiency,TotalEquity,Longtermdebt,TotalDebt,NumberofFunds,portfolio,Assets,IndependentDirectors,BoardMembers,BoardCommittees,ManagementCommittees,ICComposition,SharedFunctions) values(" + AUMs.Text + "," + AUMinSMAs.Text + "," + SMAs.Text + "," + MarketShare.Text + "," + RetailAUMs.Text + "," + Retail.Text + "," + Associates.Text + "," + NumberofInvestors.Text + "," + ManagementFees.Text + "," + Corerevenue.Text + "," + Adminstrative.Text + "," + OperatingProfit.Text + "," + Efficiency.Text + "," + TotalEquity.Text + "," + Longdebt.Text + "," + TotalDebt.Text + "," + NumberFunds.Text + "," + portfolio.Text + "," + TotalAssets.Text + "," + IndependentDirectors.Text + "," + BoardMembers.Text + "," + BoardCommittees.Text + "," + ManagementCommittees.Text + "," + ICComposition.Text + "," + SharedFunctions.Text + ")";
        //            DataTable dt = new DataTable();
        //            cmd.Fill(dt);


        //        }

        //        Response.Write("Student registeration Successfully!!!thank you");

        //        conn.Close();


        //    }
        //    catch (Exception ex)
        //    {
        //        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + ex.Message.ToString() + "');", true);
        //    }




        //}
    }
}