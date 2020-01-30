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
            if (!Page.IsPostBack)
            {
                SqlConnection db1 = new SqlConnection(con);
                string com = "Select * from [Vis_Ratio].[dbo].[Company] where Sec_code='9'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, db1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Drpcompany.DataSource = dt;
                Drpcompany.DataBind();
            }
        }
        private void Emptybox()

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
            Drpratingtype.SelectedIndex = 0;
            Drpltrating.SelectedIndex = 0;
            Drpst.SelectedIndex = 0;

          }

        protected void Save_Click(object sender, EventArgs e)

        {

            {

                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert into[Vis_Ratio].[dbo].[Modarabas](Com_code,rating_type,Lt_rating,st_rating,IjarahRental,IjarahAssets,DiminishingMusharaka,LongtermPortion,TotalAssets,OtherLiabilities,Borrowings,LeaseKeyMoney,Totalliabilities,Equity,IncomeDiminMusharaka,IncomeIjarahrental,IncomeBankdep,OperatingExpenses,Otherincome,ProfitBeforeAfter,Efficiency,Gearing,Leverage,ROAA,ROAE,modarbadate) values('" + Drpcompany.SelectedItem.Value + "','" + Drpratingtype.SelectedItem + "','" + Drpltrating.SelectedItem + "','" + Drpst.SelectedItem + "','" + IjarahRentals.Text + "','" + IjarahAssets.Text + "','" + Currentportion.Text + "','" + Longtermportion.Text + "','" + TotalAssets.Text + "','" + CreditorsAccrued.Text + "','" + Borrowings.Text + "','" + LeaseKeyMoney.Text + "','" + Totalliabilities.Text + "','" + Equity.Text + "','" + IncomeDiminishing.Text + "','" + IncomeIjarah.Text + "','" + IncomeBank.Text + "','" + OperatingExpenses.Text + "','" + Otherincome.Text + "','" + ProfitTax.Text + "','" + Efficiency1.Text + "','" + Gearing.Text + "','" + Leverage.Text + "','" + ROAA.Text + "','" + ROAE.Text + "','" + txtMyDate.Text + "')";
                SqlCommand cmd = new SqlCommand(insert, db);
                cmd.ExecuteNonQuery();
                //if (m != 0)
                //{
                //Response.Write("<script language=javascript>alert('ERROR');</script>");
                //}
                //else
                //{
                //Response.Write("<script language=javascript>alert('ERROR');</script>");
                //}
                db.Close();
                Emptybox();
            }
        }
    }
}