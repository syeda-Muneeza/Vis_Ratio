using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Vis_Ratio
{
    public partial class Bankedit : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conStr"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindDrp();
            }
        }

        protected void BindDrp()
        {
            DataTable dt = new DataTable();
            //  using (SqlConnection con = new SqlConnection(conn))
            SqlCommand cmd = new SqlCommand();
            SqlDataAdapter adp = new SqlDataAdapter();

            try
            {
                // con.Open();

                cmd = new SqlCommand("Select * from Company where Sec_code='3'", conn);
                adp = new SqlDataAdapter(cmd);

                adp.Fill(dt);
                // con.Close();
                ddlc.DataSource = dt;
                ddlc.DataTextField = "Company_name";
                ddlc.DataValueField = "Company_code";
                ddlc.DataBind();
                ddlc.Items.Insert(0, new ListItem("All", ""));

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }
            finally
            {
                cmd.Dispose();
                adp.Dispose();
                dt.Clear();
                dt.Dispose();
            }
        }


        protected void BindGridview(int empid)

        {
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter();
            try

            {
                SqlCommand cmd = new SqlCommand("select * from Banks where Com_code = '" + empid + "'", conn);
                adp.SelectCommand = cmd;
                adp.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    gvc.DataSource = dt;
                    gvc.DataBind();
                }
            }

            catch (Exception ex)

            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }

            finally
            {
                dt.Clear();
                dt.Dispose();
                adp.Dispose();
            }
        }

        protected void ddlc_SelectedIndexChanged(object sender, EventArgs e)

        {
            try
            {
                int empId = Convert.ToInt32(ddlc.SelectedValue);
                BindGridview(empId);
                lblcom.Text = ddlc.SelectedItem.Text;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Error occured : " + ex.Message.ToString() + "');", true);
            }

        }

        protected void gvc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.EditIndex = e.NewEditIndex;
            BindGridview(empId);
        }

        protected void gvc_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           
            {
                int empId = Convert.ToInt32(ddlc.SelectedValue);
                int userid = Convert.ToInt32(gvc.DataKeys[e.RowIndex].Value.ToString());
                GridViewRow row = (GridViewRow)gvc.Rows[e.RowIndex];
                TextBox TotalAssets = (TextBox)row.Cells[0].Controls[0];
                TextBox GrossAdvances = (TextBox)row.Cells[1].Controls[0];
                TextBox TotalInvestments = (TextBox)row.Cells[2].Controls[0];
                TextBox PIBs = (TextBox)row.Cells[3].Controls[0];
                TextBox PIBDeposits = (TextBox)row.Cells[4].Controls[0];
                TextBox PIBTotalInvestments = (TextBox)row.Cells[5].Controls[0];
                TextBox NPLs = (TextBox)row.Cells[6].Controls[0];
                TextBox GrossInfection = (TextBox)row.Cells[7].Controls[0];
                TextBox SpecificProvisioning = (TextBox)row.Cells[8].Controls[0];
                TextBox TotalProvisioning = (TextBox)row.Cells[9].Controls[0];
                TextBox NetInfection = (TextBox)row.Cells[10].Controls[0];
                TextBox Deposits = (TextBox)row.Cells[11].Controls[0];
                TextBox DomesticDeposits = (TextBox)row.Cells[12].Controls[0];
                TextBox GrossAdvDepositRatio = (TextBox)row.Cells[13].Controls[0];
                TextBox CostofDeposits = (TextBox)row.Cells[14].Controls[0];
                TextBox CostofFunding = (TextBox)row.Cells[15].Controls[0];
                TextBox LCR = (TextBox)row.Cells[16].Controls[0];
                TextBox NSFR = (TextBox)row.Cells[17].Controls[0];
                TextBox LiquidAssets = (TextBox)row.Cells[18].Controls[0];
                TextBox TierEquity = (TextBox)row.Cells[19].Controls[0];
                TextBox ShareholdersEquity = (TextBox)row.Cells[20].Controls[0];
                TextBox RevaluationInvestments = (TextBox)row.Cells[21].Controls[0];
                TextBox NetNPLs = (TextBox)row.Cells[22].Controls[0];
                TextBox TierCAR = (TextBox)row.Cells[23].Controls[0];
                TextBox CAR = (TextBox)row.Cells[24].Controls[0];
                TextBox Leverage = (TextBox)row.Cells[25].Controls[0];
                TextBox TotalShareholde = (TextBox)row.Cells[26].Controls[0];
                TextBox NetInterestIncome = (TextBox)row.Cells[27].Controls[0];
                TextBox EarningAssets = (TextBox)row.Cells[28].Controls[0];
                TextBox Spreads = (TextBox)row.Cells[29].Controls[0];
                TextBox Expenses = (TextBox)row.Cells[30].Controls[0];
                TextBox Efficiency = (TextBox)row.Cells[31].Controls[0];
                TextBox Overheads = (TextBox)row.Cells[32].Controls[0];
                TextBox economROAA = (TextBox)row.Cells[33].Controls[0];
                TextBox ROAA = (TextBox)row.Cells[34].Controls[0];
                TextBox ROAE = (TextBox)row.Cells[35].Controls[0];
                TextBox OperatingProfit = (TextBox)row.Cells[36].Controls[0];
                TextBox ProfitTax = (TextBox)row.Cells[37].Controls[0];
                TextBox StaffStrength = (TextBox)row.Cells[38].Controls[0];
                TextBox Branches = (TextBox)row.Cells[39].Controls[0];
                TextBox Employeerelated = (TextBox)row.Cells[40].Controls[0];
                TextBox Perbranch = (TextBox)row.Cells[41].Controls[0];
                TextBox Peremployee = (TextBox)row.Cells[42].Controls[0];
                TextBox Employeesper = (TextBox)row.Cells[43].Controls[0];
                TextBox bankdate = (TextBox)row.Cells[44].Controls[0];
                TextBox rating_type = (TextBox)row.Cells[45].Controls[0];
                TextBox Lt_rating = (TextBox)row.Cells[46].Controls[0];
                TextBox st_rating = (TextBox)row.Cells[47].Controls[0];
                TextBox sub_sector = (TextBox)row.Cells[48].Controls[0];
                TextBox outlook = (TextBox)row.Cells[49].Controls[0];
                TextBox accounttype = (TextBox)row.Cells[50].Controls[0];



                gvc.EditIndex = -1;
                conn.Open();


                SqlCommand cmd = new SqlCommand("Update Banks set TotalAssets='" + TotalAssets.Text + "'" +
                    ",GrossAdvances='" + GrossAdvances.Text + "',TotalInvestments='" + TotalInvestments.Text + "'," +
                    "PIBs='" + PIBs.Text + "',PIBDeposits='" + PIBDeposits.Text + "'" +
                    ",PIBTotalInvestments='" + PIBTotalInvestments.Text + "',NPLs='" + NPLs.Text + "'," +
                    "GrossInfection='" + GrossInfection.Text + "',SpecificProvisioning='" + SpecificProvisioning.Text + "'," +
                    "TotalProvisioning='" + TotalProvisioning.Text + "',NetInfection='" + NetInfection.Text + "'," +
                    "Deposits='" + Deposits.Text + "',DomesticDeposits='" + DomesticDeposits.Text + "'" +
                    ",GrossAdvDepositRatio='" + GrossAdvDepositRatio.Text + "',CostofDeposits='" + CostofDeposits.Text + "'," +
                    "CostofFunding='" + CostofFunding.Text + "',LCR='" + LCR.Text + "'," +
                    "NSFR='" + NSFR.Text + "',LiquidAssets='" + LiquidAssets.Text + "'," +
                    "TierEquity='" + TierEquity.Text + "',ShareholdersEquity='" + ShareholdersEquity.Text + "'," +
                    "RevaluationInvestments='" + RevaluationInvestments.Text + "',NetNPLs='" + NetNPLs.Text + "'," +
                    "TierCAR='" + TierCAR.Text + "',CAR='" + CAR.Text + "',Leverage='" + Leverage.Text + "'," +
                    "TotalShareholde='" + TotalShareholde.Text + "'," +
                    "NetInterestIncome='" + NetInterestIncome.Text + "',EarningAssets='" + EarningAssets.Text + "'," +
                    "Spreads='" + Spreads.Text + "',Expenses='" + Expenses.Text + "'," +
                    "Efficiency='" + Efficiency.Text + "',Overheads='" + Overheads.Text + "'," +
                    "economROAA='"+economROAA.Text+"',ROAA='" + ROAA.Text + "',"+
                    "ROAE='" + ROAE.Text + "',OperatingProfit='" + OperatingProfit.Text + "'," +
                    "ProfitTax='" + ProfitTax.Text + "',StaffStrength='" + StaffStrength.Text + "',Branches='" + Branches.Text + "'," +
                    "Employeerelated='" + Employeerelated.Text + "'," +
                    "Perbranch='" + Perbranch.Text + "',Peremployee='" + Peremployee.Text + "'," +
                    "Employeesper='" + Employeesper.Text + "',bankdate='" + bankdate.Text + "'," +
                    "rating_type='" + rating_type.Text + "',Lt_rating='" + Lt_rating.Text + "'," +
                    "st_rating='" + st_rating.Text + "',sub_sector='" + sub_sector.Text + "'," +
                    "outlook='" + outlook.Text + "',accounttype='" + accounttype.Text + "'" +
                    "where BankID='" + userid + "'", conn);



                

                cmd.ExecuteNonQuery();
                conn.Close();
                BindGridview(empId);
            }

        }

        protected void gvc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.PageIndex = e.NewPageIndex;
            BindGridview(empId);
        }

        protected void gvc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            gvc.EditIndex = -1;
            BindGridview(empId);
        }

        protected void gvc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int empId = Convert.ToInt32(ddlc.SelectedValue);
            GridViewRow row = (GridViewRow)gvc.Rows[e.RowIndex];
            // Label lbldeleteid = (Label)row.FindControl("lblID");
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete FROM Banks where BankID='" + Convert.ToInt32(gvc.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            BindGridview(empId);
        }
    }
}