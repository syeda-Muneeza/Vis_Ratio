﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Modarabas.aspx.cs" Inherits="Vis_Ratio.Modarabas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Modarabas" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
       
   <caption>Modarabas</caption> 
   
       <tr>
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>



<tr>
           
                   
             
                <td><asp:label ID="label14" runat="server" Text="Company Name"></asp:label></td>
                <td><asp:DropDownList ID="Drpcompany" runat="server" Visible="false"></asp:DropDownList></td>
                <td></td>
             <td></td>
                    <td></td>
             <td></td>
            </tr>


       <tr>
                          
                <td><asp:Label ID="Label1" runat="server" Text="Ijarah Rentals Receivable"></asp:Label></td>
                <td><asp:TextBox ID="IjarahRentals" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Income from Diminishing Musharaka"></asp:Label></td>
                <td>  <asp:TextBox ID="IncomeDiminishing" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Efficiency (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Efficiency1" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Ijarah Assets"></asp:Label></td>
                <td><asp:TextBox ID="IjarahAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Income from Ijarah rental"></asp:Label></td>
                <td>  <asp:TextBox ID="IncomeIjarah" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Gearing (x)"></asp:Label></td>
                <td>  <asp:TextBox ID="Gearing" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Current portion of Diminishing Musharaka"></asp:Label></td>
                <td><asp:TextBox ID="Currentportion" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Income from Bank deposits"></asp:Label></td>
                <td>  <asp:TextBox ID="IncomeBank" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Leverage (x)"></asp:Label></td>
                <td>  <asp:TextBox ID="Leverage" runat="server"></asp:TextBox></td>
                    
        </tr> 

        <tr>
              
                <td><asp:Label ID="Label10" runat="server" Text="Long term portion of Diminishing Musharaka"></asp:Label></td>
                <td><asp:TextBox ID="Longtermportion" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Operating Expenses"></asp:Label></td>
                <td><asp:TextBox ID="OperatingExpenses" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label12" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                    
          </tr>
       




          <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>  
               <td><asp:Label ID="Label23" runat="server" Text="Other income"></asp:Label></td>
                <td><asp:TextBox ID="Otherincome" runat="server"></asp:TextBox></td>  
            
                <td><asp:Label ID="Label15" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
                    
          </tr>

          <tr>
              
                <td><asp:Label ID="Label16" runat="server" Text="Creditors, Accrued & Other Liabilities"></asp:Label></td> 
                <td><asp:TextBox ID="CreditorsAccrued" runat="server"></asp:TextBox></td> 
             
                       
               <td><asp:Label ID="Label24" runat="server" Text=" Profit (Loss) Before & After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
             <td></td>
              <td></td>
               
                     
            </tr> 
            <tr>
              
            <td><asp:Label ID="Label19" runat="server" Text="Borrowings"></asp:Label></td>
            <td><asp:TextBox ID="Borrowings" runat="server"></asp:TextBox></td>  

           <td><asp:Label ID="Label30" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
            
              <td></td>
                <td></td>   
              
                     
                </tr>

                <tr>
              
                <td><asp:Label ID="Label18" runat="server" Text="Lease Key Money"></asp:Label></td>
                <td><asp:TextBox ID="LeaseKeyMoney" runat="server"></asp:TextBox></td>
                <td></td>
                <td></td>   
                <td></td>
                <td></td>   
                    
               </tr>

        <tr>
              
            <td><asp:Label ID="Label20" runat="server" Text="Total liabilities"></asp:Label></td>
            <td><asp:TextBox ID="Totalliabilities" runat="server"></asp:TextBox></td>  

            <td></td>
                <td></td>   
       
                <td></td>   
               <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass="button"/>
                             
                </td>
                    
                </tr>
       <tr>
              
            <td><asp:Label ID="Label22" runat="server" Text="Equity"></asp:Label></td>
            <td><asp:TextBox ID="Equity" runat="server"></asp:TextBox></td>  

            <td></td>
                <td></td>   
             <td></td>
           <td></td>
              
                    
                </tr>
      
    </table>
  


   
</div>

</asp:Content>
