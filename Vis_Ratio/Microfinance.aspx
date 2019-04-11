<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Microfinance.aspx.cs" Inherits="Vis_Ratio.Microfinance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Microfinance" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
       
   <caption>Microfinance</caption>
   
       <tr>
                <th colspan="2"></th>
                
                <th colspan="2">Capitalization</th>
                
                <th colspan="2">Profitability</th>
               
            </tr>
        
        





       <tr>
              
            
                <td><asp:Label ID="Label1" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Net worth"></asp:Label></td>
                <td>  <asp:TextBox ID="Networth" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Spreads"></asp:Label></td>
                <td>  <asp:TextBox ID="Spreads" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Gross Advances"></asp:Label></td>
                <td><asp:TextBox ID="GrossAdv" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Capital Adequacy Ratio"></asp:Label></td>
                <td>  <asp:TextBox ID="CapitalAdequacy" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Overheads"></asp:Label></td>
                <td>  <asp:TextBox ID="Overheads" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Market share in terms of gross advances"></asp:Label></td>
                <td><asp:TextBox ID="Marketshare" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Coverage Ratio"></asp:Label></td>
                <td>  <asp:TextBox ID="CoverageRatio" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Profit/ (loss) after Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitafterTax" runat="server"></asp:TextBox></td>
                    
            </tr> 

       <tr>
              
            
                <td><asp:Label ID="Label10" runat="server" Text="Gross Infection (PAR-30)"></asp:Label></td>
                <td><asp:TextBox ID="GrossInfectionPAR30" runat="server"></asp:TextBox></td>
            <td><asp:Label ID="Label19" runat="server" Text="Equity as a % of Total Assets (Leverage Rato Basel III)"></asp:Label></td>
                <td>  <asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
                
               <td><asp:Label ID="Label12" runat="server" Text="OSS"></asp:Label></td>
                <td>  <asp:TextBox ID="OSS" runat="server"></asp:TextBox></td>
                    
            </tr>
       



       <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Incremental infection"></asp:Label></td>
                <td><asp:TextBox ID="Incremental" runat="server"></asp:TextBox></td>  
           <td><asp:Label ID="Label11" runat="server" Text="Equity as a % of GLP"></asp:Label></td>
                <td><asp:TextBox ID="EquityGLP" runat="server"></asp:TextBox></td>
               
                <td><asp:Label ID="Label15" runat="server" Text="FSS"></asp:Label></td>
                <td><asp:TextBox ID="FSS" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr> 
              
            
                <td><asp:Label ID="Label16" runat="server" Text="Net Infection (adjusted for specific provisioning only and includes rescheduled loans)"></asp:Label></td>
                <td><asp:TextBox ID="NetInfection" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label14" runat="server" Text="GLP as a % of total assets"></asp:Label></td>
                <td><asp:TextBox ID="GLPtotalassets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="Internal Capital Generation Ratio"></asp:Label></td>
                <td><asp:TextBox ID="InternalRatio" runat="server"></asp:TextBox></td>
                </tr> 

        

        
  <tr> 
              
            
                <td><asp:Label ID="Label21" runat="server" Text="Deposits"></asp:Label></td>
                <td><asp:TextBox ID="Deposits" runat="server"></asp:TextBox></td>
                 <td></td>
                
      <td></td>
      <td><asp:Label ID="Label23" runat="server" Text="Equity Growth %"></asp:Label></td>
                <td><asp:TextBox ID="EquityGrowth" runat="server"></asp:TextBox></td>
               
      
                </tr>
        



      <tr> 
              




           
                <td><asp:Label ID="Label22" runat="server" Text="Gross Advances to Deposit Ratio"></asp:Label></td>
                <td><asp:TextBox ID="GrossAdvancesto" runat="server"></asp:TextBox></td>
                <th colspan="2">Productivity Indicators</th>
               <td><asp:Label ID="Label17" runat="server" Text="Grant Income"></asp:Label></td>
                <td><asp:TextBox ID="GrantIncome" runat="server"></asp:TextBox></td>
            
      </tr>
        
            


            <tr>
              
            
                <td><asp:Label ID="Label25" runat="server" Text="Net Advances to Deposit Ratio"></asp:Label></td>
                <td><asp:TextBox ID="NetAdvancesto" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label20" runat="server" Text="Number of Branches"></asp:Label></td>
                <td>  <asp:TextBox ID="NumberofBranches" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label27" runat="server" Text="ROAA"></asp:Label></td>
                <td>  <asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                    
           </tr>
           <tr>
              
            
                <td><asp:Label ID="Label28" runat="server" Text="Cost of Funds%"></asp:Label></td>
                <td><asp:TextBox ID="CostofFunds" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label24" runat="server" Text="Number of loan officers"></asp:Label></td>
                <td>  <asp:TextBox ID="Numberofficers" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label29" runat="server" Text="ROAE"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
               
                    
       </tr>
       <tr>
                   
                <td><asp:Label ID="Label31" runat="server" Text="Liquid Assets to Total Borrowings"></asp:Label></td>
                <td><asp:TextBox ID="LiquidAssets" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label26" runat="server" Text="Total Number of active clients"></asp:Label></td>
                <td>  <asp:TextBox ID="Totalactiveclients" runat="server"></asp:TextBox></td>
              <td></td>
           <td></td>
                    
        </tr>


        


      <tr>
                   
               <td><asp:Label ID="Label30" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
          
               <td><asp:Label ID="Label32" runat="server" Text="Average loan size  (In Rs.)"></asp:Label></td>
                <td>  <asp:TextBox ID="Averageloansize" runat="server"></asp:TextBox></td>
              <td></td>
           <td></td>
                    
        </tr>

        <tr>
               <td></td>
          <td></td>
               <td><asp:Label ID="Label34" runat="server" Text="Active clients per loan officer"></asp:Label></td>
                <td>  <asp:TextBox ID="Activeclients" runat="server"></asp:TextBox></td>
              <td></td>
           <td></td>
                    
        </tr>
        <tr>
                   
                <td></td>
          <td></td>
               <td><asp:Label ID="Label36" runat="server" Text="Average loan amount/loan officer"></asp:Label></td>
                <td>  <asp:TextBox ID="Averageloanamount" runat="server"></asp:TextBox></td>
              
           <td></td>
            <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
                 
           
                 </td>
                    
        </tr>
    </table>
  


   
</div>



</asp:Content>
