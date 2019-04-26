<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="AMCs.aspx.cs" Inherits="Vis_Ratio.AMCs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AMC" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
   <table>

 
       
   <caption>AMCs</caption>
   
            <tr>
                
                <th colspan="2">AUMs and Market position</th> 
                <th colspan="2">AUM Profile</th>
                                          
            </tr>
       
         <tr>
           
                   
             
                <td><asp:label ID="label27" runat="server" Text="Company Name"></asp:label></td>
                <td><asp:DropDownList ID="Drpcompany" runat="server" Visible="false"></asp:DropDownList></td>
                <td></td>
             <td></td>
                    
            </tr>
         <tr>
           
                   
             
                <td><asp:label ID="label1" runat="server" Text="AUMs  (Rs. in billions)"></asp:label></td>
                <td><asp:TextBox ID="AUMs" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label2" runat="server" Text="Retail AUMs (Rs. in millions)"></asp:label></td>
                <td>  <asp:TextBox ID="RetailAUMs" runat="server"></asp:TextBox></td>
                    
            </tr>
     <tr>
                <td><asp:label ID="label3" runat="server" Text="AUM in SMAs (Rs. in billions)"></asp:label></td>
                <td>
                <asp:TextBox ID="AUMinSMAs" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label4" runat="server" Text="Retail (%)"></asp:label></td>
                <td>  <asp:TextBox ID="Retail" runat="server"></asp:TextBox></td>
                    
            </tr>

         <tr>
                <td><asp:label ID="label5" runat="server" Text="No. of SMAs"></asp:label></td>
                <td>
                <asp:TextBox ID="SMAs" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label6" runat="server" Text="Associates (%)"></asp:label></td>
                <td>  <asp:TextBox ID="Associates" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:label ID="label7" runat="server" Text="Market Share"></asp:label></td>
                <td>
                <asp:TextBox ID="MarketShare" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label8" runat="server" Text="Number of Investors"></asp:label></td>
                <td>  <asp:TextBox ID="NumberofInvestors" runat="server"></asp:TextBox></td>
                    
            </tr>
       <tr>
  <th colspan="2">Financials</th>
 <th colspan="2">Qualitative Factors</th>
 </tr>


         <tr>
                <td><asp:label ID="label9" runat="server" Text="Management Fees"></asp:label></td>
                <td>
                <asp:TextBox ID="ManagementFees" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label10" runat="server" Text="Number of Independent Directors"></asp:label></td>
                <td>  <asp:TextBox ID="IndependentDirectors" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:label ID="label11" runat="server" Text="Core revenue"></asp:label></td>
                <td>
                <asp:TextBox ID="Corerevenue" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label12" runat="server" Text="Number of Board Members"></asp:label></td>
                <td>  <asp:TextBox ID="BoardMembers" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:label ID="label13" runat="server" Text="Adminstrative expenses"></asp:label></td>
                <td>
                <asp:TextBox ID="Adminstrative" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label14" runat="server" Text="Board Committees"></asp:label></td>
                <td>  <asp:TextBox ID="BoardCommittees" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                <td><asp:label ID="label15" runat="server" Text="Operating Profit"></asp:label></td>
                <td>
                <asp:TextBox ID="OperatingProfit" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label16" runat="server" Text="Management Committees"></asp:label></td>
                <td>  <asp:TextBox ID="ManagementCommittees" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                <td><asp:label ID="label17" runat="server" Text="Efficiency"></asp:label></td>
                <td><asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label18" runat="server" Text="IC Composition"></asp:label></td>
                <td><asp:TextBox ID="ICComposition" runat="server"></asp:TextBox></td>
                    
            </tr>
            <tr>
                <td><asp:label ID="label19" runat="server" Text="Total Equity"></asp:label></td>
                <td>
                <asp:TextBox ID="TotalEquity" runat="server"></asp:TextBox></td>
                <td><asp:label ID="label20" runat="server" Text="Shared Functions"></asp:label></td>
                <td>  <asp:TextBox ID="SharedFunctions" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
         
                <td><asp:label ID="label21" runat="server" Text="Long term debt"></asp:label></td>
                <td><asp:TextBox ID="Longdebt" runat="server"></asp:TextBox></td>
               <td><asp:label ID="label26" runat="server" Text="Date"></asp:label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
                <td><asp:label ID="label23" runat="server" Text="Total Debt"></asp:label></td>
                <td>

                 <asp:TextBox ID="TotalDebt" runat="server"></asp:TextBox></td>
            <td></td>
             <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click1" />
                
                                  
           
                 </td>
                                    

                    
            </tr>
         <tr>
                <td><asp:label ID="label25" runat="server" Text="Number of Funds"></asp:label></td>
                <td>
                <asp:TextBox ID="NumberFunds" runat="server"></asp:TextBox></td>
             <td></td>
            
                
                    
            </tr>
       <tr>
                <td><asp:label ID="label22" runat="server" Text="Types of Funds not covered in portfolio"></asp:label></td>
                <td>
                <asp:TextBox ID="portfolio" runat="server"></asp:TextBox></td>
                
                    
            </tr>
       <tr>
                <td><asp:label ID="label24" runat="server" Text="Total Assets"></asp:label></td>
                <td>
                <asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                
                    
            </tr>

    
   
   </table>

   
</div>


</asp:Content>
