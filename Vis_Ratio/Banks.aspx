<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Banks.aspx.cs" Inherits="Vis_Ratio.Banks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Banks" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div>
  
    <table style=" border: 1px solid #1C6EA4;
    background-color: #EEEEEE;
    width: 100%;
    text-align: left;">
       
   <caption>Banks/DFIs</caption>
   
       <tr>
                <th colspan="2"></th>
                
                <th colspan="2">Asset Quality</th>
                
                <th colspan="2">Funding & Liquidity</th>
               
            </tr>
         
       <tr>
              
            
                <td><asp:Label ID="Label1" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="NPLs"></asp:Label></td>
                <td>  <asp:TextBox ID="NPLs" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Deposits"></asp:Label></td>
                <td>  <asp:TextBox ID="Deposits" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Gross Advances"></asp:Label></td>
                <td><asp:TextBox ID="GrossAdv" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Gross Infection"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossInfection" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Market - Deposits"></asp:Label></td>
                <td>  <asp:TextBox ID="MarketDepo" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Total Investments"></asp:Label></td>
                <td><asp:TextBox ID="TotalInvest" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Specific Provisioning Coverage"></asp:Label></td>
                <td>  <asp:TextBox ID="Specific" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Gross Advances to Deposit Ratio"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossDeposit" runat="server"></asp:TextBox></td>
                    
            </tr> 

       <tr>
              
            
                <td><asp:Label ID="Label10" runat="server" Text="PIBs"></asp:Label></td>
                <td><asp:TextBox ID="PIBs" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Total Provisioning Coverage"></asp:Label></td>
                <td><asp:TextBox ID="TotalCoverage" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label12" runat="server" Text="Cost of Deposits"></asp:Label></td>
                <td>  <asp:TextBox ID="CostDeposits" runat="server"></asp:TextBox></td>
                    
            </tr>
       
       <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="PIBs as a % of Deposits"></asp:Label></td>
                <td><asp:TextBox ID="PIBsDeposits" runat="server"></asp:TextBox></td>  
                <td><asp:Label ID="Label14" runat="server" Text="Net Infection"></asp:Label></td>
                <td><asp:TextBox ID="NetInfection" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label15" runat="server" Text="Cost of Funding"></asp:Label></td>
                <td><asp:TextBox ID="CostFunding" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr> 
              
            
                <td><asp:Label ID="Label16" runat="server" Text="PIBs % of Total Investments"></asp:Label></td>
                <td><asp:TextBox ID="PIBsInvest" runat="server"></asp:TextBox></td>
                <td></td>
                <td></td>
                <td><asp:Label ID="Label18" runat="server" Text="LCR"></asp:Label></td>
                <td><asp:TextBox ID="LCR" runat="server"></asp:TextBox></td>
                </tr> 

        <tr> 
              
            <td></td>
            <td></td>   
            <th colspan="2">Capitalization</th>

                <td><asp:Label ID="Label19" runat="server" Text="NSFR"></asp:Label></td>
                <td><asp:TextBox ID="NSFR" runat="server"></asp:TextBox></td>
                </tr>

        <tr> 
              
            <th colspan="2">Profitability </th>
                <td><asp:Label ID="Label17" runat="server" Text="Tier-1 Equity"></asp:Label></td>
                <td><asp:TextBox ID="TierEquity" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label20" runat="server" Text="Liquid Assets to Total Deposits & Borrowings"></asp:Label></td>
                <td><asp:TextBox ID="LiquidBorrowings" runat="server"></asp:TextBox></td>
                </tr>
  <tr> 
              
            
                <td><asp:Label ID="Label21" runat="server" Text="Net Interest Income"></asp:Label></td>
                <td><asp:TextBox ID="Net" runat="server"></asp:TextBox></td>
                 <td><asp:Label ID="Label23" runat="server" Text="Shareholder's Equity"></asp:Label></td>
                <td><asp:TextBox ID="Shareholder" runat="server"></asp:TextBox></td>
               <td></td>
                
      <td></td>
      
    <%--  <th colspan="2">Others</th>--%>
                </tr>
      <tr> 
              
           
                <td><asp:Label ID="Label22" runat="server" Text="Return on Earning Assets"></asp:Label></td>
                <td><asp:TextBox ID="Return" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label24" runat="server" Text="Revaluation Surplus on Investments"></asp:Label></td>
                <td><asp:TextBox ID="Revalnvestments" runat="server"></asp:TextBox></td>
                 <th colspan="2">Others </th>
      </tr>
        
            


            <tr>
              
            
                <td><asp:Label ID="Label25" runat="server" Text="Spreads"></asp:Label></td>
                <td><asp:TextBox ID="Spreads" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label26" runat="server" Text="Net NPLs to Tier 1 capital"></asp:Label></td>
                <td><asp:TextBox ID="Netcapital" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label27" runat="server" Text="Staff Strength (including outsourced)"></asp:Label></td>
                <td>  <asp:TextBox ID="Staffoutsourced" runat="server"></asp:TextBox></td>
                    
            </tr>
    
    <tr>
              
            
                <td><asp:Label ID="Label28" runat="server" Text="Administrative Expenses"></asp:Label></td>
                <td><asp:TextBox ID="Adminexpenses" runat="server"></asp:TextBox></td>
        <td><asp:Label ID="Label30" runat="server" Text="Branches"></asp:Label></td>
                <td>  <asp:TextBox ID="Branches" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label29" runat="server" Text="Tier-1 CAR"></asp:Label></td>
                <td><asp:TextBox ID="TTierCAR" runat="server"></asp:TextBox></td>
               
                    
            </tr>
    <tr>
              
            
                <td><asp:Label ID="Label31" runat="server" Text="Efficiency"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label32" runat="server" Text="CAR"></asp:Label></td>
                <td><asp:TextBox ID="CAR" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label33" runat="server" Text="Employee related costs"></asp:Label></td>
                <td>  <asp:TextBox ID="Employeecosts" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
            
                <td><asp:Label ID="Label34" runat="server" Text="Overheads"></asp:Label></td>
                <td><asp:TextBox ID="Overheads" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label35" runat="server" Text="Leverage"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label36" runat="server" Text="Per branch deposit"></asp:Label></td>
                <td>  <asp:TextBox ID="Perdeposit" runat="server"></asp:TextBox></td>
                    
            </tr>
    <tr>
              
            
                <td><asp:Label ID="Label37" runat="server" Text="Pre tax economic ROAA"></asp:Label></td>
                <td><asp:TextBox ID="PrROAA" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label38" runat="server" Text="Total Shareholders' Equity/ Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalSharehol" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label39" runat="server" Text="Per employee cost"></asp:Label></td>
                <td>  <asp:TextBox ID="Percost" runat="server"></asp:TextBox></td>
                    
            </tr>
        <tr>
              
   

                <td><asp:Label ID="Label41" runat="server" Text="ROAA"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
            <td></td>
            <td></td>
               <td><asp:Label ID="Label42" runat="server" Text="Employees per branch"></asp:Label></td>
                <td>  <asp:TextBox ID="Emplobranch" runat="server"></asp:TextBox></td>
                    
            </tr>
    
    <tr>
              


                <td><asp:Label ID="Label40" runat="server" Text="ROAE"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                       <td></td>     
    <td></td>   
       <td><asp:Button ID="Save" runat="server" Text="Save" />
                 <asp:Button ID="Edit" runat="server" Text="Edit" />
<asp:Button ID="Delete" runat="server" Text="Delete" />
                     <asp:Button ID="Add" runat="server" Text="Add" />

           
                 </td>
        <td></td>
    </tr>
    <tr>
              
       
          
                <td><asp:Label ID="Label43" runat="server" Text="Operating Profit / (Loss)"></asp:Label></td>
                <td><asp:TextBox ID="OperaLoss" runat="server"></asp:TextBox></td>
                <td></td>     
    <td></td> 
        <td></td>
        <td></td>
    </tr>
        <tr>
              
        
                <td><asp:Label ID="Label44" runat="server" Text="Profit/ (loss) after Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
                
          <td></td>     
    <td></td>
        <td></td>
        <td></td>
    </tr>
    </table>
  


   
</div>

</asp:Content>
