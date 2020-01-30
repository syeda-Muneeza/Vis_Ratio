<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rough.aspx.cs" Inherits="Vis_Ratio.rough" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="ddlsector" runat="server" AutoPostBack="True" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlsector_SelectedIndexChanged">
        </asp:DropDownList>
    
            <br />
            <asp:GridView ID="gvc" runat="server" AutoGenerateColumns="false" CellPadding="2" BackColor="#ffffff" BorderColor="#ffffff" BorderWidth="1px" CellSpacing="1" PageIndex="5" CssClass="Gridview" >
       
             <Columns> 
                         
                        <asp:BoundField DataField="Company_name" HeaderText="Company Name" />  
                        <asp:BoundField DataField="Sub_Secname" HeaderText="Sector Name" /> 
                        <asp:BoundField DataField="cordate" HeaderText="Year" /> 
                        <asp:BoundField DataField="accounttype" HeaderText="accounttype" />
                        <asp:BoundField DataField="rating_type" HeaderText="rating_type" />
                        <asp:BoundField DataField="FixedAssets" HeaderText="Fixed Assets" />  
                        <asp:BoundField DataField="Longterm" HeaderText="Long term Deposits" /> 
                        <asp:BoundField DataField="StockTrade" HeaderText="Stock-in-Trade" />  
                        <asp:BoundField DataField="TradeDebts" HeaderText="Trade Debts" />  
                        <asp:BoundField DataField="CashBank" HeaderText="Cash & Bank Balances" />  
                        <asp:BoundField DataField="TotalAssets" HeaderText="Total Assets" /> 
                        <asp:BoundField DataField="TradePayables" HeaderText="Trade and Other Payables" />   
                        <asp:BoundField DataField="LongTermDebt" HeaderText="Long Term Debt" />  
                        <asp:BoundField DataField="ShortTermDebt" HeaderText="Short Term Debt" />  
                        <asp:BoundField DataField="TotalDebt" HeaderText="Total Debt" /> 
                        <asp:BoundField DataField="TotalLiabilities" HeaderText="Total Liabilities" />  
                        <asp:BoundField DataField="TotalEquity" HeaderText="Total Equity" />  
                        <asp:BoundField DataField="NetSales" HeaderText="Net Sales" /> 
                        <asp:BoundField DataField="GrossProfit" HeaderText="Gross Profit" />  
                        <asp:BoundField DataField="ProfitBeforeTax" HeaderText="Profit Before Tax" />  
                        <asp:BoundField DataField="ProfitafterTax" HeaderText="Profit after Tax" />
                        <asp:BoundField DataField="FFO" HeaderText="FFO" /> 
                        <asp:BoundField DataField="GrossMargin" HeaderText="Gross Margin" />  
                        <asp:BoundField DataField="NetMargin" HeaderText="Net Margin" />  
                        <asp:BoundField DataField="FFOTotalDebt" HeaderText="FFO Total Debt" /> 
                        <asp:BoundField DataField="FFOtoLongDebt" HeaderText="FFO to Long Debt" />  
                        <asp:BoundField DataField="ServicingCoverage" HeaderText="Debt Servicing Coverage" />  
                        <asp:BoundField DataField="ROAA" HeaderText="ROAA" />  
                        <asp:BoundField DataField="ROAE" HeaderText="ROAE" /> 
                        <asp:BoundField DataField="Gearing" HeaderText="Gearing" />  
                        <asp:BoundField DataField="Leverage" HeaderText="Leverage" />  
                        <asp:BoundField DataField="ShortTermBorrowings" HeaderText="Short Term Borrowings" />  
                        <asp:BoundField DataField="CurrentRatio" HeaderText="Current Ratio" /> 
                
                  
                  
                   <asp:BoundField DataField="outlook" HeaderText="outlook" /> 
                      
                   <asp:BoundField DataField="st_rating" HeaderText="st_rating" /> 
                 <asp:BoundField DataField="Lt_ratingName" HeaderText="Lt_rating" />  
                 
               
                 <asp:BoundField DataField="Sub_sectorid" HeaderText="sub_sector" />
                
              
                 </Columns>
             <RowStyle BackColor="#FFF7E7" ForeColor="Black" />

<FooterStyle BackColor="#F7DFB5" ForeColor="black" />

<PagerStyle ForeColor="Black" HorizontalAlign="Center" />

<HeaderStyle BackColor="#222229" Font-Bold="True" ForeColor="White" />
         </asp:GridView>

        </div>
    </form>
</body>
</html>
