<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Banks.aspx.cs" Inherits="Vis_Ratio.Banks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Banks" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>
   <table     style=" border: 1px solid #1C6EA4;
  background-color: #EEEEEE;
  width: 100%;
  text-align: left;">
       
   <caption>Banks/DFIs</caption>
   
            <tr>
                <th></th>
                <th></th>
                <th>Asset Quality</th>
                <th></th>
                       <th>Funding & Liquidity</th>
               <th></th>
                       
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
                <td>  <asp:TextBox ID="TotalCoverage" runat="server"></asp:TextBox></td>
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
  
       </table>
  


   
</div>

</asp:Content>
