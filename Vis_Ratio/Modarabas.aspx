<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Modarabas.aspx.cs" Inherits="Vis_Ratio.Modarabas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Modarabas" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                          
                <td><asp:Label ID="Label1" runat="server" Text="Ijarah Rentals Receivable"></asp:Label></td>
                <td><asp:TextBox ID="IjarahRentals" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Net Mark-up Income"></asp:Label></td>
                <td>  <asp:TextBox ID="NetMark" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Gross Infection (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossInfection" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Ijarah Assets"></asp:Label></td>
                <td><asp:TextBox ID="IjarahAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Operating Expenses"></asp:Label></td>
                <td>  <asp:TextBox ID="Operating" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Provisioning Coverage (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Provisioning" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Current portion of Diminishing Musharaka"></asp:Label></td>
                <td><asp:TextBox ID="Currentportion" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Profit (Loss) Before Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Net Infection (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="NetInfection" runat="server"></asp:TextBox></td>
                    
        </tr> 

        <tr>
              
                <td><asp:Label ID="Label10" runat="server" Text="Long term portion of Diminishing Musharaka"></asp:Label></td>
                <td><asp:TextBox ID="Longtermportion" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Profit (Loss)  After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitAfter" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label12" runat="server" Text="Efficiency (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
                    
          </tr>
       




          <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>  
                <td></td>
                <td></td>     
                <td><asp:Label ID="Label15" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                    
          </tr>

          <tr>
              
                <td><asp:Label ID="Label16" runat="server" Text="Creditors, Accrued & Other Liabilities"></asp:Label></td> 
                <td><asp:TextBox ID="CreditorsAccrued" runat="server"></asp:TextBox></td> 
              
                <td></td>
                <td></td>   
               <td><asp:Label ID="Label14" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
               
                     
            </tr> 
            <tr>
              
            <td><asp:Label ID="Label19" runat="server" Text="Borrowings"></asp:Label></td>
            <td><asp:TextBox ID="Borrowings" runat="server"></asp:TextBox></td>  

            <td></td>
                <td></td>   
              <td><asp:Label ID="Label17" runat="server" Text="Lease Key Money"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
              
                    
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
              <td><asp:Label ID="Label21" runat="server" Text="Lease Key Money"></asp:Label></td>
                <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
              
                    
                </tr>
       <tr>
              
            <td><asp:Label ID="Label22" runat="server" Text="Equity"></asp:Label></td>
            <td><asp:TextBox ID="Equity" runat="server"></asp:TextBox></td>  

            <td></td>
                <td></td>   
              <td><asp:Label ID="Label23" runat="server" Text="Lease Key Money"></asp:Label></td>
                <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
              
                    
                </tr>
      
    </table>
  


   
</div>


</asp:Content>
