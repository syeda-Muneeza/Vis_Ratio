<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Investment.aspx.cs" Inherits="Vis_Ratio.Investment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Investment" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
       
   <caption>Investment</caption> 
   
       <tr>
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>
    


       <tr>
                          
                <td><asp:Label ID="Label1" runat="server" Text=" Cash and Bank Balances"></asp:Label></td>
                <td><asp:TextBox ID="CashbBalances" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Revenue from Operations"></asp:Label></td>

                <td>  <asp:TextBox ID="Revenueop" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text=" Average Return on Equity Portfolio "></asp:Label></td>
                <td>  <asp:TextBox ID="Average" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Total Investments"></asp:Label></td>
                <td><asp:TextBox ID="TotalInvestments" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Operating Expenses"></asp:Label></td>
                <td>  <asp:TextBox ID="Operating" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Dividend Payout"></asp:Label></td>
                <td>  <asp:TextBox ID="DividendPayout" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Profit Before Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Efficiency (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
                    
            </tr> 

       <tr>
              
            
                <td><asp:Label ID="Label10" runat="server" Text="Tier-1 Equity"></asp:Label></td>
                <td><asp:TextBox ID="Tier" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Profit After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitAfter" runat="server"></asp:TextBox></td>
               <td><asp:Label ID="Label12" runat="server" Text="Gearing"></asp:Label></td>
                <td>  <asp:TextBox ID="Gearing" runat="server"></asp:TextBox></td>
                    
            </tr>
       
       <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Net Worth"></asp:Label></td>
                <td><asp:TextBox ID="networth" runat="server"></asp:TextBox></td>  
                <td><asp:Label ID="Label14" runat="server" Text="FFO"></asp:Label></td>
                <td><asp:TextBox ID="FFO" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label15" runat="server" Text="Leverage"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
                    
            </tr>

        <tr> 
              
            <td></td>
                <td></td>
              
                                  
               <td><asp:Label ID="Label20" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
        
                <td><asp:Label ID="Label19" runat="server" Text="Current Ratio"></asp:Label></td>
                <td><asp:TextBox ID="currentratio" runat="server"></asp:TextBox></td>
                </tr>
       <tr> 
              
            <td></td>
                <td></td>
              
                <td></td>
                <td>


                </td>
                <td><asp:Label ID="Label18" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                </tr> 
       

       <tr> 
              
            <td></td>
                <td></td>
              
                <td></td>
                <td></td>
                <td><asp:Label ID="Label16" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                </tr>
       <tr> 
              
            <td></td>
                <td></td>
              
                <td></td>
                <td></td>
                <td><asp:Label ID="Label17" runat="server" Text="Liquid Assets to Total Liabilities (x)"></asp:Label></td>
                <td><asp:TextBox ID="Liquid" runat="server"></asp:TextBox></td>
                </tr>
       <tr> 
              
            <td></td>
                <td></td>
              
                <td></td>
                <td></td>
               <td></td>
           <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" />


           
                 </td>             </tr>
      
    </table>
  


   
</div>


</asp:Content>
