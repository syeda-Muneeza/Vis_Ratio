<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Investment.aspx.cs" Inherits="Vis_Ratio.Investment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Investment" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
  
    <table style=" border: 1px solid #1C6EA4;
    background-color: #EEEEEE;
    width: 100%;
    text-align: left;">
       
   <caption>Investment</caption> 
   
       <tr>
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>
    
Total Investments
Total Assets
Tier-1 Equity
Net Worth


       <tr>
                          
                <td><asp:Label ID="Label1" runat="server" Text=" Cash and Bank Balances"></asp:Label></td>
                <td><asp:TextBox ID=" CashBalances" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Net Sales"></asp:Label></td>
                <td>  <asp:TextBox ID="NeSales" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Gross Margin (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossMargin" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Long term Deposits"></asp:Label></td>
                <td><asp:TextBox ID="LongDeposits" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Gross Profit"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossProfit" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Net Margin"></asp:Label></td>
                <td>  <asp:TextBox ID="NetMargin" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Stock-in-Trade"></asp:Label></td>
                <td><asp:TextBox ID="Stocktrade" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Profit Before Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="FFO to Total Debt (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="FFODebt" runat="server"></asp:TextBox></td>
                    
            </tr> 

       <tr>
              
            
                <td><asp:Label ID="Label10" runat="server" Text="Trade Debts"></asp:Label></td>
                <td><asp:TextBox ID="TradeDebts" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Profit After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitAfter" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label12" runat="server" Text="FFO to Long Term Debt (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="FFOTermDebt" runat="server"></asp:TextBox></td>
                    
            </tr>
       
       <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Cash & Bank Balances"></asp:Label></td>
                <td><asp:TextBox ID="CashBalances" runat="server"></asp:TextBox></td>  
                <td><asp:Label ID="Label14" runat="server" Text="FFO"></asp:Label></td>
                <td><asp:TextBox ID="FFO" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label15" runat="server" Text="Debt Servicing Coverage Ratio (x)"></asp:Label></td>
                <td><asp:TextBox ID="Debtoverage" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr> 
              
            
                <td><asp:Label ID="Label16" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                <td></td>
                <td></td>
                <td><asp:Label ID="Label18" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                </tr> 
       <tr>
              
                <td><asp:Label ID="Label17" runat="server" Text="Trade and Other Payables"></asp:Label></td>
                <td><asp:TextBox ID="Trade" runat="server"></asp:TextBox></td>  
                 <td></td>
                  <td></td>
                <td><asp:Label ID="Label20" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
                <td><asp:Label ID="Label21" runat="server" Text="Long Term Debt"></asp:Label></td>
                <td><asp:TextBox ID="LongDebt" runat="server"></asp:TextBox></td>  
                 <td></td>
                  <td></td>
                <td><asp:Label ID="Label23" runat="server" Text="Gearing"></asp:Label></td>
                <td><asp:TextBox ID="Gearing" runat="server"></asp:TextBox></td>
                    
            </tr>
       <tr>
              
                <td><asp:Label ID="Label24" runat="server" Text="Short Term Debt"></asp:Label></td>
                <td><asp:TextBox ID="ShortDebt" runat="server"></asp:TextBox></td>  
                <td></td>
                  <td></td>
                <td><asp:Label ID="Label26" runat="server" Text="Leverage"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
                    
            </tr>
       
      
    </table>
  


   
</div>



</asp:Content>
