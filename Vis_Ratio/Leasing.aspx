<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Leasing.aspx.cs" Inherits="Vis_Ratio.Leasing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Leasing" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
       
   <caption>Leasing Companies</caption> 
   
       <tr>
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>
    <tr>
           
                   
             
                <td><asp:label ID="label17" runat="server" Text="Company Name"></asp:label></td>
                <td><asp:DropDownList ID="Drpcompany" runat="server" AppendDataBoundItems="true" DataTextField="Company_name" DataValueField="Company_code">
                    <asp:ListItem Value="0">-- select company--</asp:ListItem>
                    </asp:DropDownList></td>
                <td></td>
             <td></td>
                    <td></td>
             <td></td>
            </tr>
       <tr>
                          
                <td><asp:Label ID="Label1" runat="server" Text="Total Investments"></asp:Label></td>
                <td><asp:TextBox ID="TotalInvestments" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Net Mark-up Income"></asp:Label></td>
                <td>  <asp:TextBox ID="NetMark" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label3" runat="server" Text="Gross Infection (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="GrossInfection" runat="server"></asp:TextBox></td>
                    
            </tr>

       <tr>
              
            
                <td><asp:Label ID="Label4" runat="server" Text="Net Investment in Leases"></asp:Label></td>
                <td><asp:TextBox ID="NetInvestment" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label5" runat="server" Text="Operating Expenses"></asp:Label></td>
                <td>  <asp:TextBox ID="Operating" runat="server"></asp:TextBox></td>
             <td><asp:Label ID="Label6" runat="server" Text="Provisioning Coverage (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Provisioning" runat="server"></asp:TextBox></td>
                    
            </tr>
    
       <tr>
              
            
                <td><asp:Label ID="Label7" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Profit (Loss) Before Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitTax" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label9" runat="server" Text="Net Infection (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="NetInfection" runat="server"></asp:TextBox></td>
                    
        </tr> 

        <tr>
              
                <td><asp:Label ID="Label10" runat="server" Text="Lease Key money"></asp:Label></td>
                <td><asp:TextBox ID="Leasemoney" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label11" runat="server" Text="Profit (Loss)  After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitAfter" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label12" runat="server" Text="Efficiency (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="Efficiency" runat="server"></asp:TextBox></td>
                    
          </tr>
       
          <tr>
              
                <td><asp:Label ID="Label13" runat="server" Text="Borrowings"></asp:Label></td>
                <td><asp:TextBox ID="Borrowings" runat="server"></asp:TextBox></td>  
               <td><asp:Label ID="Label20" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
          
                <td><asp:Label ID="Label15" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server"></asp:TextBox></td>
                    
          </tr>

          <tr>
              
                <td><asp:Label ID="Label16" runat="server" Text="COIs"></asp:Label></td> 
                <td><asp:TextBox ID="coi" runat="server"></asp:TextBox></td> 
              
                <td>

           
                </td>
                <td></td>   
               <td><asp:Label ID="Label14" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server"></asp:TextBox></td>
               
                    
            </tr>
            <tr>
              
            <td><asp:Label ID="Label19" runat="server" Text="Tier-1 Equity"></asp:Label></td>
            <td><asp:TextBox ID="Tier1" runat="server"></asp:TextBox></td>  

            <td></td>
                <td></td>   
            
                <td><asp:Label ID="Label18" runat="server" Text="Current Ratio (x)"></asp:Label></td>
                <td><asp:TextBox ID="Current" runat="server"></asp:TextBox></td>
                    
                </tr>

                <tr>
              
                <td><asp:Label ID="Label22" runat="server" Text="Net Worth"></asp:Label></td>
                <td><asp:TextBox ID="networth" runat="server"></asp:TextBox></td>  
                <td></td>
                <td></td>   
                <td></td>
               <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass="button"/>

                    
               </tr>
       
      
    </table>
  


   
</div>










</asp:Content>
