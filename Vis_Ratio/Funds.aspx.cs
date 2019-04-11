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

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            {
                SqlConnection db = new SqlConnection(con);
                db.Open();
                string insert = "Insert  into[Vis_Ratio].[dbo].[Funds](Return1,Benchmark,PeerAverage,RelativeRanking,FundSize,Retail,Associates,Numbernvestors,Investors,FundStability,funddate) values('" + Return1.Text + "','" + Benchmark.Text + "','" +PeerAverage.Text + "','" + RelativeRanking.Text + "','" + FundSize.Text + "','" + Retail.Text + "','" + Associates.Text + "','" + NumberInvestors.Text + "','" + TopInvestors.Text + "','" + FundRating.Text + "','" + txtMyDate.Text + "')";
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