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
    public partial class Modarabas : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void emptybox()
        {
            IjarahRentals.Text = "";
        IjarahAssets.Text = "";
        Currentportion.Text = "";
        Longtermportion.Text = "";
        TotalAssets.Text = "";
        CreditorsAccrued.Text = "";
        Borrowings.Text = "";
        LeaseKeyMoney.Text = "";
        Totalliabilities.Text = "";
        Equity.Text = "";
        IncomeDiminishing.Text = "";
        IncomeIjarah.Text = "";
        IncomeBank.Text = "";
        OperatingExpenses.Text = "";
        Otherincome.Text = "";
        ProfitTax.Text = "";
        Efficiency1.Text = "";
        Gearing.Text = "";
        Leverage.Text = "";

        ROAA.Text = "";
        ROAE.Text = "";
        txtMyDate.Text = "";
                }

        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Modarabas](IjarahRental,IjarahAssets,DiminishingMusharaka,LongtermPortion,TotalAssets,OtherLiabilities,Borrowings,LeaseKeyMoney,Totalliabilities,Equity,IncomeDiminMusharaka,IncomeIjarahrental,IncomeBankdep,OperatingExpenses,Otherincome,ProfitBeforeAfter,Efficiency,Gearing,Leverage,ROAA,ROAE,modarbadate) values('" + IjarahRentals.Text + "','" + IjarahAssets.Text + "','" + Currentportion.Text + "','" + Longtermportion.Text + "','" + TotalAssets.Text + "','" + CreditorsAccrued.Text + "','" + Borrowings.Text + "','" + LeaseKeyMoney.Text + "','" + Totalliabilities.Text + "','" + Equity.Text + "','" + IncomeDiminishing.Text + "','" + IncomeIjarah.Text + "','" + IncomeBank.Text + "','" + OperatingExpenses.Text + "','" + Otherincome.Text + "','" + ProfitTax.Text + "','" + Efficiency1.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + txtMyDate.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                int m  = cmd.ExecuteNonQuery();
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