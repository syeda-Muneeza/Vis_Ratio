<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Brokerage.aspx.cs" Inherits="Vis_Ratio.Brokerage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Brokerage" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table   style="width:100%; border: 1px solid black">
       
   <caption>Brokerage</caption>
         <tr>
                  <th></th>
             <th></th>
             <th></th>
             <th></th>
           </tr>       
        
   


























                                   
              
       <tr>
          <td><asp:Label ID="Label1" runat="server" Text="Brokerage Income"></asp:Label></td>
                <td><asp:TextBox ID="BrokerIncome" runat="server"></asp:TextBox></td>
       
         
          <td><asp:Label ID="Label2" runat="server" Text="Corporate Finance Income"></asp:Label></td>
                <td><asp:TextBox ID="Corpinance" runat="server"></asp:TextBox></td>
       </tr>
           <tr>
          <td><asp:Label ID="Label3" runat="server" Text="MTS & MFS Income"></asp:Label></td>
                <td><asp:TextBox ID="MTSIncome" runat="server"></asp:TextBox></td>
      
       
          <td><asp:Label ID="Label4" runat="server" Text="Leverage Financing Income"></asp:Label></td>
                <td><asp:TextBox ID="LeverIncome" runat="server"></asp:TextBox></td>
       </tr>
         <tr>
          <td><asp:Label ID="Label5" runat="server" Text="Other Recurring Income"></asp:Label></td>
                <td><asp:TextBox ID="OtherIncome" runat="server"></asp:TextBox></td>
       
          <td><asp:Label ID="Label6" runat="server" Text="Dividend Income"></asp:Label></td>
                <td><asp:TextBox ID="DividendIncome" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
          <td><asp:Label ID="Label7" runat="server" Text="Recurring Revenue"></asp:Label></td>
                <td><asp:TextBox ID="RecurringRevenue" runat="server"></asp:TextBox></td>
       
          <td><asp:Label ID="Label8" runat="server" Text="Capital gain/(loss) on Investment"></asp:Label></td>
                <td><asp:TextBox ID="Capitalnvest" runat="server"></asp:TextBox></td>
       </tr>

         <tr>
          <td><asp:Label ID="Label9" runat="server" Text="Fair value gain on remeasurement on Inv."></asp:Label></td>
                <td><asp:TextBox ID="Fair" runat="server"></asp:TextBox></td>
       
          <td><asp:Label ID="Label10" runat="server" Text="Net Profit"></asp:Label></td>
                <td><asp:TextBox ID="NetProfit" runat="server"></asp:TextBox></td>
       </tr>

         <tr>
          <td><asp:Label ID="Label11" runat="server" Text="Administrative expenses"></asp:Label></td>
                <td><asp:TextBox ID="Administrativeexpenses" runat="server"></asp:TextBox></td>
       
          <td><asp:Label ID="Label12" runat="server" Text="Finance Cost"></asp:Label></td>
                <td><asp:TextBox ID="FinanceCost" runat="server"></asp:TextBox></td>
       </tr>
        <tr>
          <td><asp:Label ID="Label13" runat="server" Text="Short Term Investments"></asp:Label></td>
                <td><asp:TextBox ID="ShortTerm" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label14" runat="server" Text="Long Term Investments"></asp:Label></td>
                <td><asp:TextBox ID="Long" runat="server"></asp:TextBox></td>
       </tr>
           <tr>

  <td><asp:Label ID="Label15" runat="server" Text="Trade Debts"></asp:Label></td>
                <td><asp:TextBox ID="TradeDebts" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label16" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>

           </tr> 
         

        <tr>

  <td><asp:Label ID="Label17" runat="server" Text="Total liabilities"></asp:Label></td>
                <td><asp:TextBox ID="Totalliabil" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label18" runat="server" Text="Total Equity INCL Surplus/(loss)"></asp:Label></td>
                <td><asp:TextBox ID="TotalEquity" runat="server"></asp:TextBox></td>

           </tr>
        <tr>

  <td><asp:Label ID="Label19" runat="server" Text="Surplus/(Loss)"></asp:Label></td>
                <td><asp:TextBox ID="Surplus" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label20" runat="server" Text="Equity less Surplus/(Loss)"></asp:Label></td>
                <td><asp:TextBox ID="Equityless" runat="server"></asp:TextBox></td>

           </tr>
        <tr>

  <td><asp:Label ID="Label21" runat="server" Text="Liquid Assets"></asp:Label></td>
                <td><asp:TextBox ID="LiquidAssets" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label22" runat="server" Text="Interest Bearing Debt"></asp:Label></td>
                <td><asp:TextBox ID="InterestBearing" runat="server"></asp:TextBox></td>

           </tr>

        <tr>

  <td><asp:Label ID="Label23" runat="server" Text="Market Share"></asp:Label></td>
                <td><asp:TextBox ID="MarketShare" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label24" runat="server" Text="Market Share (based on value)"></asp:Label></td>
                <td><asp:TextBox ID="Marketvalue" runat="server"></asp:TextBox></td>

           </tr>
        <tr>

  <td><asp:Label ID="Label25" runat="server" Text="ROAA"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label26" runat="server" Text="ROAE"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>

           </tr>
        <tr>

  <td><asp:Label ID="Label27" runat="server" Text="Efficiency"></asp:Label></td>
                <td><asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label28" runat="server" Text="Liquid Assets % Liabilities"></asp:Label></td>
                <td><asp:TextBox ID="Liquidiabil" runat="server"></asp:TextBox></td>

           </tr>
        <tr>

  <td><asp:Label ID="Label29" runat="server" Text="Liquid Assets % Assets"></asp:Label></td>
                <td><asp:TextBox ID="LiquidAss" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label30" runat="server" Text="Leverage"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>

           </tr>

        <tr>

  <td><asp:Label ID="Label31" runat="server" Text="Gearing"></asp:Label></td>
                <td><asp:TextBox ID="Gearing" runat="server"></asp:TextBox></td>
      
          <td><asp:Label ID="Label32" runat="server" Text="(Short Term investment +Long Term investment) / Equity"></asp:Label></td>
                <td><asp:TextBox ID="Short" runat="server"></asp:TextBox></td>

           </tr>
        <tr>
              <td></td>
                  <td>

                  </td>
            
            
            <td><asp:Button ID="Button1" runat="server" Text="Button" />
                           <asp:Button ID="Button2" runat="server" Text="Button" />
                          <asp:Button ID="Button3" runat="server" Text="Button" />
                     <asp:Button ID="Button4" runat="server" Text="Button" />

           
                 </td>                   

                    
            </tr>

   </table>





</asp:Content>
