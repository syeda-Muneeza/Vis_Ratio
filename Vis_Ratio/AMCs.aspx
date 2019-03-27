<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="AMCs.aspx.cs" Inherits="Vis_Ratio.AMCs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AMC" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div>
   <table   style=" border: 1px solid #1C6EA4;
  background-color: #EEEEEE;
  width: 100%;
  text-align: left;
  /*border-collapse: collapse;*/">
       
   <caption>AMCs</caption>
   
            <tr>
                <th colspan="2">AUMs and Market position</th>
                <th colspan="2">AUM Profile</th>
               
                           
            </tr>
         
         
         <tr>
             
            
                <td><asp:Label ID="Label1" runat="server" Text="AUMs  (Rs. in billions)"></asp:Label></td>
                <td><asp:TextBox ID="AUMs" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Retail AUMs (Rs. in millions)"></asp:Label></td>
                <td>  <asp:TextBox ID="RetailAUMs" runat="server"></asp:TextBox></td>
                    
            </tr>
     <tr>
                <td><asp:Label ID="Label3" runat="server" Text="AUM in SMAs (Rs. in billions)"></asp:Label></td>
                <td>
                <asp:TextBox ID="AUMinSMAs" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label4" runat="server" Text="Retail (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Retail" runat="server"></asp:TextBox></td>
                    
            </tr>

         <tr>
                <td><asp:Label ID="Label5" runat="server" Text="No. of SMAs"></asp:Label></td>
                <td>
                <asp:TextBox ID="SMAs" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label6" runat="server" Text="Associates (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Associates" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Market Share"></asp:Label></td>
                <td>
                <asp:TextBox ID="MarketShare" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Number of Investors"></asp:Label></td>
                <td>  <asp:TextBox ID="NumberofInvestors" runat="server"></asp:TextBox></td>
                    
            </tr>
       <tr>
  <th colspan="2">Financials</th>
 <th colspan="2">Qualitative Factors</th>
 </tr>


         <tr>
                <td><asp:Label ID="Label9" runat="server" Text="Management Fees"></asp:Label></td>
                <td>
                <asp:TextBox ID="ManagementFees" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label10" runat="server" Text="Number of Independent Directors"></asp:Label></td>
                <td>  <asp:TextBox ID="IndependentDirectors" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label11" runat="server" Text="Core revenue"></asp:Label></td>
                <td>
                <asp:TextBox ID="Corerevenue" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label12" runat="server" Text="Number of Board Members"></asp:Label></td>
                <td>  <asp:TextBox ID="BoardMembers" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label13" runat="server" Text="Adminstrative expenses"></asp:Label></td>
                <td>
                <asp:TextBox ID="Adminstrative" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label14" runat="server" Text="Board Committees"></asp:Label></td>
                <td>  <asp:TextBox ID="BoardCommittees" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label15" runat="server" Text="Operating Profit"></asp:Label></td>
                <td>
                <asp:TextBox ID="OperatingProfit" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label16" runat="server" Text="Management Committees"></asp:Label></td>
                <td>  <asp:TextBox ID="ManagementCommittees" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label17" runat="server" Text="Efficiency"></asp:Label></td>
                <td>
                <asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="IC Composition"></asp:Label></td>
                <td>  <asp:TextBox ID="ICComposition" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Total Equity"></asp:Label></td>
                <td>
                <asp:TextBox ID="TotalEquity" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label20" runat="server" Text="Shared Functions"></asp:Label></td>
                <td>  <asp:TextBox ID="SharedFunctions" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label21" runat="server" Text="Long term debt"></asp:Label></td>
                <td><asp:TextBox ID="Longdebt" runat="server"></asp:TextBox></td>
            </tr>
         <tr>
                <td><asp:Label ID="Label23" runat="server" Text="Total Debt"></asp:Label></td>
                <td>
                <asp:TextBox ID="TotalDebt" runat="server"></asp:TextBox></td>
                            <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
                 <asp:Button ID="Edit" runat="server" Text="Edit" OnClick="Edit_Click" />
<asp:Button ID="Delete" runat="server" Text="Delete" />
                     <asp:Button ID="Add" runat="server" Text="Add" />

           
                 </td>                   

                    
            </tr>
         <tr>
                <td><asp:Label ID="Label25" runat="server" Text="Number of Funds"></asp:Label></td>
                <td>
                <asp:TextBox ID="NumberFunds" runat="server"></asp:TextBox></td>
                
                    
            </tr>
       <tr>
                <td><asp:Label ID="Label22" runat="server" Text="Types of Funds not covered in portfolio"></asp:Label></td>
                <td>
                <asp:TextBox ID="portfolio" runat="server"></asp:TextBox></td>
                
                    
            </tr>
       <tr>
                <td><asp:Label ID="Label24" runat="server" Text="Total Assets"></asp:Label></td>
                <td>
                <asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                
                    
            </tr>

    
   
   </table>
  


   
</div>


</asp:Content>
