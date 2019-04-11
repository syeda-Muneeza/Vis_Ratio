<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Insurance.aspx.cs" Inherits="Vis_Ratio.Insurance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Insurance" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
       
   <caption>Insurance</caption>
   
       <tr>
                <th colspan="2">Capitalization </th>
       
                <th colspan="2">Profitability</th>
              
                <th colspan="2">Underwriting</th>
               
            </tr>
     
       <tr>
              
            
                <td><asp:Label ID="Label1" runat="server" Text=" Adjusted SH's equity"></asp:Label></td>
                <td><asp:TextBox ID="Adjustedequity" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text= "Combined Ratio"></asp:Label></td>
                <td>  <asp:TextBox ID="CombinedRatio" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Motor Premium % Gross Premium"></asp:Label></td>
                <td>  <asp:TextBox ID="MotorPremium" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Net Financial Leverage (Net Technical Reserves / Adj. SHF)"></asp:Label></td>
                <td><asp:TextBox ID="NetFinancial" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="ROAE"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label6" runat="server" Text="Reinsurance Ceded / Gross Premium"></asp:Label></td>
                <td>  <asp:TextBox ID="ReinsuranceCeded" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Operating Leverage (Net Premium Written / Adj. SHF)"></asp:Label></td>
                <td><asp:TextBox ID="OperatingLeverage" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Underwriting Expense Ratio"></asp:Label></td>
                <td><asp:TextBox ID="UnderwritingRatio" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Gross Premium (Rs.000s)"></asp:Label></td>
                <td><asp:TextBox ID="GrossPremium" runat="server"></asp:TextBox></td>
                    
            </tr> 

       <tr>
              
            
                <td colspan="2"></td>
               
                <td><asp:Label ID="Label11" runat="server" Text="Gross Claims Ratio"></asp:Label></td>
                <td><asp:TextBox ID="GrossClaimsRatio" runat="server"></asp:TextBox></td>
           
                 <td><asp:Label ID="Label10" runat="server" Text="Net Premium Revenue (Rs. 000s)"></asp:Label></td>
                <td>  <asp:TextBox ID="NetRevenue" runat="server"></asp:TextBox></td>
                    
       </tr>
       
       <tr>
              
               <th colspan="2">Liquidity </th>
                <td><asp:Label ID="Label14" runat="server" Text="Net Claims Ratio"></asp:Label></td>
                <td><asp:TextBox ID="NetRatio" runat="server"></asp:TextBox></td>
                <td></td>
                  <td></td>
                    
            </tr>

           <tr> 
              
                <td><asp:Label ID="Label12" runat="server" Text="Insurance Debt / Gross Premium"></asp:Label></td>
                <td><asp:TextBox ID="InsurancDebt" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="Underwriting Profit (Rs. 000s)"></asp:Label></td>
                <td><asp:TextBox ID="Underwriting" runat="server"></asp:TextBox></td>
               <td></td>
                <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />
                </td>
          
           </tr> 
        
        <tr>
                              
               <td><asp:Label ID="Label19" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
        
                <td><asp:Label ID="Label20" runat="server" Text="Underwriting Profit/Gross Premium"></asp:Label></td>
                <td><asp:TextBox ID="UnderwritingPremium" runat="server"></asp:TextBox></td>
                <td></td>
                <td></td>
            
        </tr>

        


        <tr>
           
         
                 <td></td>
                  <td></td>
                <td><asp:Label ID="Label23" runat="server" Text="Net Profit (Rs. 000s)"></asp:Label></td>
                <td><asp:TextBox ID="NetProfit" runat="server"></asp:TextBox></td>
                    <td></td>
                  <td></td>
            </tr>
       
    </table>
  


   
</div>
</asp:Content>
