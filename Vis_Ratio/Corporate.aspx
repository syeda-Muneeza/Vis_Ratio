<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Corporate.aspx.cs" Inherits="Vis_Ratio.Corporate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Corporates" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link href="css/table.css" rel="stylesheet" /> 
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
    <script type="text/javascript" language="javascript">
    $(function () {
        //initialise the datepicker with the date format specified
        $(".datepicker").datepicker();
    });
</script>
    <div>
  
    <table style=" border: 1px solid #1C6EA4;
    background-color: #EEEEEE;
    width: 100%;
    text-align: left;">
       
   <caption>Corporates</caption>
   
       <tr>
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT AND CASH FLOW</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>
     

       <tr>
              
            
                <td><asp:Label ID="Label1" runat="server" Text="Fixed Assets"></asp:Label></td>
                <td><asp:TextBox ID="FixedAssets" runat="server"></asp:TextBox></td>
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
              <td><asp:Label ID="Label19" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                </tr> 
        <tr>
              
                <td><asp:Label ID="Label17" runat="server" Text="Trade and Other Payables"></asp:Label></td>
                <td colspan="3"><asp:TextBox ID="Trade" runat="server"></asp:TextBox></td>  
                
                <td><asp:Label ID="Label20" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                    
            </tr>

        


        <tr>
              
                <td><asp:Label ID="Label21" runat="server" Text="Long Term Debt"></asp:Label></td>
                <td colspan="3"><asp:TextBox ID="LongDebt" runat="server"></asp:TextBox></td>  
                
                <td><asp:Label ID="Label23" runat="server" Text="Gearing"></asp:Label></td>
                <td><asp:TextBox ID="Gearing" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
                <td><asp:Label ID="Label24" runat="server" Text="Short Term Debt"></asp:Label></td>
                <td colspan="3"><asp:TextBox ID="ShortDebt" runat="server"></asp:TextBox></td>  
                
                <td><asp:Label ID="Label26" runat="server" Text="Leverage"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
                <td><asp:Label ID="Label27" runat="server" Text="Total Debt"></asp:Label></td>
                <td colspan="3"><asp:TextBox ID="TotalDebt" runat="server"></asp:TextBox></td>  
                 
                <td><asp:Label ID="Label29" runat="server" Text="(Stock in Trade + Trade Debts)/ Short Term Borrowings"></asp:Label></td>
                <td><asp:TextBox ID="Stock" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
                <td><asp:Label ID="Label30" runat="server" Text="Total Liabilities"></asp:Label></td>
                <td colspan="3"><asp:TextBox ID="TotalLiabilities" runat="server"></asp:TextBox></td>  
                
                <td><asp:Label ID="Label32" runat="server" Text="Current Ratio"></asp:Label></td>
                <td><asp:TextBox ID="CurrentRatio" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
                <td><asp:Label ID="Label33" runat="server" Text="Total Equity"></asp:Label></td>
                <td colspan="4"><asp:TextBox ID="TotalEquity" runat="server"></asp:TextBox></td>  
                
         
                  
                     <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" /></td>
            </tr>
      
    </table>
  


   
</div>


</asp:Content>
