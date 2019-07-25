<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Bankedit.aspx.cs" Inherits="Vis_Ratio.Bankedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>

       
.GridviewDiv {font-size: 80%; color: #303933;overflow:scroll; width: 96%; margin: 0 auto; }
Table.Gridview{border:solid 1px Black;}
/*.GridviewTable{border:none}*/
.GridviewTable td{margin-top:0;padding: 0; vertical-align:middle }
.GridviewTable tr{color: White; background-color: #df5015; height: 30px; text-align:center}
/*.Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}*/
.Gridview td{border-bottom-color:black;border-right-color:black;padding:0.5em 0.5em 0.5em 0.5em;}
.Gridview tr{color: Black; background-color: White; text-align:left}
.label{font-size:large;}
    </style>


    
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
   
         
        
         <%--  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" Style="height: 26px" />  --%>
          <br />
    <div class="GridviewDiv">
        
           <asp:DropDownList ID="ddlc" runat="server" AppendDataBoundItems="true" AutoPostBack="true" Font-Size="10pt" Height="17px" 
            onselectedindexchanged="ddlc_SelectedIndexChanged" Width="162px">  
        </asp:DropDownList>  &nbsp;&nbsp;
        <asp:Label ID="lblcom" runat="server" Text="" CssClass="label"></asp:Label>
          <br />
          <br />

         <asp:GridView ID="gvc" runat="server" AutoGenerateColumns="false" DataKeyNames="BankID" OnPageIndexChanging="gvc_PageIndexChanging" OnRowCancelingEdit="gvc_RowCancelingEdit" OnRowDeleting="gvc_RowDeleting" OnRowEditing="gvc_RowEditing" OnRowUpdating="gvc_RowUpdating"
         AllowPaging="True" CellPadding="2" PageSize="5" BackColor="#ffffff" BorderColor="#ffffff"
   BorderWidth="1px" CellSpacing="1" PageIndex="5" CssClass="Gridview">
       
             <Columns> 
                 
                 <%--6--%>
                        <asp:BoundField DataField="TotalAssets" HeaderText="Total Assets" />  
                        <asp:BoundField DataField="GrossAdvances" HeaderText="Gross Advances" /> 
                        <asp:BoundField DataField="TotalInvestments" HeaderText="Total Investments" />  
                
                        <asp:BoundField DataField="PIBs" HeaderText="PIBs" />  
                        <asp:BoundField DataField="PIBDeposits" HeaderText="PIBs as a % of Deposits" />  
                        <asp:BoundField DataField="PIBTotalInvestments" HeaderText="PIBs as a % of Total Investments" /> 



<%--5--%>                 

                        <asp:BoundField DataField="NPLs" HeaderText="NPLs" />  
                        <asp:BoundField DataField="GrossInfection" HeaderText="Gross Infection" />  
                        <asp:BoundField DataField="SpecificProvisioning" HeaderText="Specific Provisioning Coverage" />  
                        <asp:BoundField DataField="TotalProvisioning" HeaderText="Total Provisioning Coverage" /> 
                       <asp:BoundField DataField="NetInfection" HeaderText="Net Infection" />  
                    <%--8--%>  

                                                                                                                                
                 
                 <asp:BoundField DataField="Deposits" HeaderText="Deposits" />  
                        <asp:BoundField DataField="DomesticDeposits" HeaderText="Market Share-Domestic Deposits" /> 
                  <asp:BoundField DataField="GrossAdvDepositRatio" HeaderText="Gross Advances to Deposit Ratio" />  
                        <asp:BoundField DataField="CostofDeposits" HeaderText="Cost of Deposits" />  
                        <asp:BoundField DataField="CostofFunding" HeaderText="Cost of Funding" />
                 
                        <asp:BoundField DataField="LCR" HeaderText="LCR" /> 
                        <asp:BoundField DataField="NSFR" HeaderText="NSFR" />  
                        <asp:BoundField DataField="LiquidAssets" HeaderText="Liquid Assets to Total Deposits & Borrowings" />  
                               <%--8--%>  
                 <asp:BoundField DataField="TierEquity" HeaderText="Tier-1 Equity" /> 
                        <asp:BoundField DataField="ShareholdersEquity" HeaderText="Shareholder's Equity" />  
                        <asp:BoundField DataField="RevaluationInvestments" HeaderText="Revaluation Surplus on Investments" /> 
                     <asp:BoundField DataField="NetNPLs" HeaderText="Net NPLs to Tier 1 capital" />  
                 <asp:BoundField DataField="TierCAR" HeaderText="Tier-1 CAR" /> 
                 <asp:BoundField DataField="CAR" HeaderText="CAR" />  
                  <asp:BoundField DataField="Leverage" HeaderText="Leverage" />  
                 <asp:BoundField DataField="TotalShareholde" HeaderText="Total Shareholders' Equity/Total Assets" />  

               

                 <asp:BoundField DataField="NetInterestIncome" HeaderText="Net Interest Income" /> 
                
                 <asp:BoundField DataField="EarningAssets" HeaderText="Return on Earning Assets" />  

                  <asp:BoundField DataField="Spreads" HeaderText="Spreads" />  
                        <asp:BoundField DataField="Expenses" HeaderText="Administrative Expenses" />  
                        <asp:BoundField DataField="Efficiency" HeaderText="Efficiency" />
                 
                        <asp:BoundField DataField="Overheads" HeaderText="Overheads" /> 
                        <asp:BoundField DataField="economROAA" HeaderText="Market Share-advances(Domestic only)" />  
                        <asp:BoundField DataField="ROAA" HeaderText="ROAA" />  

                  <asp:BoundField DataField="ROAE" HeaderText="ROAE" /> 
                        <asp:BoundField DataField="OperatingProfit" HeaderText="Operating Profit/(Loss)" />  
                        <asp:BoundField DataField="ProfitTax" HeaderText="Profit/(loss) after Tax" /> 

               
                     <asp:BoundField DataField="StaffStrength" HeaderText="Staff Strength" />  
                 <asp:BoundField DataField="Branches" HeaderText="Branches" /> 
                 <asp:BoundField DataField="Employeerelated" HeaderText="Employee related costs" />  
                 
                 <asp:BoundField DataField="Perbranch" HeaderText="Per branch deposit" />  
                 <asp:BoundField DataField="Peremployee" HeaderText="Per employee cost" />  
                 <asp:BoundField DataField="Employeesper" HeaderText="Employees per branch" /> 
            <asp:BoundField DataField="bankdate" HeaderText="Year" /> 
                 <asp:BoundField DataField="rating_type" HeaderText="rating_type" />  
                 <asp:BoundField DataField="Lt_rating" HeaderText="Lt_rating" />  
                 
                 <asp:BoundField DataField="st_rating" HeaderText="st_rating" /> 
                 <asp:BoundField DataField="sub_sector" HeaderText="sub_sector" />  
                 <asp:BoundField DataField="outlook" HeaderText="outlook" />  
                        
                 <asp:BoundField DataField="accounttype" HeaderText="accounttype" /> 
                 <asp:CommandField ShowEditButton="true" />  
                 <asp:CommandField ShowDeleteButton="true" />
              
                 </Columns>
             <RowStyle BackColor="#FFF7E7" ForeColor="Black" />

<FooterStyle BackColor="#F7DFB5" ForeColor="black" />

<PagerStyle ForeColor="Black" HorizontalAlign="Center" />

<HeaderStyle BackColor="#222229" Font-Bold="True" ForeColor="White" />
         </asp:GridView>
         
     
    </div>



</asp:Content>
