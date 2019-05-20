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
    public partial class Funds : System.Web.UI.Page
    {
        string con = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection db1 = new SqlConnection(con);
                string com = "Select * from [Vis_Ratio].[dbo].[Company] where Sec_code='7'";
                SqlDataAdapter adpt = new SqlDataAdapter(com, db1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                Drpcompany.DataSource = dt;

                Drpcompany.DataBind();
            }
        }

        private void Emptybox()
        {
            Return1.Text = "";
            Benchmark.Text = "";
            PeerAverage.Text = "";
            RelativeRanking.Text = "";
            FundSize.Text = "";
            Retail.Text = "";
            Associates.Text = "";
            NumberInvestors.Text = "";
            TopInvestors.Text = "";
            FundRating.Text = "";
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
                string insert = "Insert  into[Vis_Ratio].[dbo].[Funds](Com_code,rating_type,Lt_rating,st_rating, Return1,Benchmark,PeerAverage,RelativeRanking,FundSize,Retail,Associates,Numbernvestors,Investors,FundStability,funddate) values('" + Drpcompany.SelectedItem.Value + "','" + Drpratingtype.SelectedItem + "','" + Drpltrating.SelectedItem + "','" + Drpst.SelectedItem + "','" + Return1.Text + "','" + Benchmark.Text + "','" +PeerAverage.Text + "','" + RelativeRanking.Text + "','" + FundSize.Text + "','" + Retail.Text + "','" + Associates.Text + "','" + NumberInvestors.Text + "','" + TopInvestors.Text + "','" + FundRating.Text + "','" + txtMyDate.Text + "')";
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