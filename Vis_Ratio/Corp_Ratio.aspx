<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Corp_Ratio.aspx.cs" Inherits="Vis_Ratio.Corp_Ratio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
     <td><strong>Sectors :</strong></td>
     <td><asp:DropDownList ID="ddlsector" runat="server" AutoPostBack="True" AppendDataBoundItems="true">
        </asp:DropDownList>
    </td>
     
    <td><strong>Coloumn name:</strong></td>
       <td><asp:DropDownList ID="Ddlfix" runat="server" TabIndex="3">
       <asp:ListItem Value="0">0</asp:ListItem>
            <asp:ListItem Value="1">FixedAssets</asp:ListItem>
            <asp:ListItem Value="2">Longterm</asp:ListItem>
            <asp:ListItem Value="3">StockTrade</asp:ListItem>
            <asp:ListItem Value="4">TradeDebts</asp:ListItem>
            <asp:ListItem Value="5">CashBank</asp:ListItem>
            <asp:ListItem Value="6">TotalAssets</asp:ListItem>
            <asp:ListItem Value="7">TradePayables</asp:ListItem>
            <asp:ListItem Value="8">LongTermDebt</asp:ListItem>
            <asp:ListItem Value="9">ShortTermDebt</asp:ListItem>
<asp:ListItem Value="10">TotalDebt</asp:ListItem>
<asp:ListItem Value="11">TotalLiabilities</asp:ListItem>
<asp:ListItem Value="12">TotalEquity</asp:ListItem>
<asp:ListItem Value="13">INCOMECASHFLOW</asp:ListItem>
<asp:ListItem Value="14">NetSales</asp:ListItem>
<asp:ListItem Value="15">GrossProfit</asp:ListItem>
<asp:ListItem Value="16">ProfitBeforeTax</asp:ListItem>
<asp:ListItem Value="17">ProfitafterTax</asp:ListItem>
<asp:ListItem Value="18">FFO</asp:ListItem>
<asp:ListItem Value="19">RATIOANALYSIS</asp:ListItem>
<asp:ListItem Value="20">GrossMargin</asp:ListItem>
<asp:ListItem Value="21">NetMargin</asp:ListItem>
<asp:ListItem Value="22">FFOTotalDebt</asp:ListItem>
<asp:ListItem Value="23">FFOtoLongDebt</asp:ListItem>
<asp:ListItem Value="24">ServicingCoverage</asp:ListItem>
<asp:ListItem Value="25">ROAA</asp:ListItem>
<asp:ListItem Value="26">ROAE</asp:ListItem>
<asp:ListItem Value="27">Gearing</asp:ListItem>
<asp:ListItem Value="28">Leverage</asp:ListItem>
<asp:ListItem Value="29">ShortTermBorrowings</asp:ListItem>
<asp:ListItem Value="30">CurrentRatio</asp:ListItem>
<%--<asp:ListItem Value="31">cordate</asp:ListItem>
<asp:ListItem Value="32">rating_type</asp:ListItem>
<asp:ListItem Value="33">Lt_rating</asp:ListItem>
<asp:ListItem Value="34">st_rating</asp:ListItem>
<asp:ListItem Value="35">sub_sector</asp:ListItem>
<asp:ListItem Value="36">outlook</asp:ListItem>
<asp:ListItem Value="37">accounttype</asp:ListItem>--%>

              </asp:DropDownList></td>
</tr>
               <tr>
               <td><strong>Range:</strong></td>
               <td> <asp:TextBox ID="txtno1" runat="server"></asp:TextBox></td>
               <td><strong>Between:</strong></td>
               <td> <asp:TextBox ID="txtno2" runat="server"></asp:TextBox></td>
                 
               
           
            
            </tr>

               <tr>
                    <td><strong>Lt Rating:</strong></td>
                   <td><asp:DropDownList ID="Ddlrating" runat="server" AutoPostBack="True" AppendDataBoundItems="true">
        </asp:DropDownList>
    </td>
                   <td><strong>Between:</strong></td>
                   <td><asp:DropDownList ID="Ddlrating2" runat="server" AutoPostBack="True" AppendDataBoundItems="true">
        </asp:DropDownList>
    </td>

                    <td><asp:Button ID="btnsave" runat="server" Text="go" OnClick="btnsave_Click" /></td>
                </tr>
   
   </table>
            <br />
            <asp:GridView ID="gvc" runat="server" AutoGenerateColumns="false" CellPadding="2" BackColor="#ffffff" BorderColor="#ffffff"
   BorderWidth="1px" CellSpacing="1" PageIndex="5" CssClass="Gridview">
       
             <Columns> 
                  
               
                  <asp:BoundField DataField="Company_name" HeaderText="Company Name" />  
                        <asp:BoundField DataField="Sub_Secname" HeaderText="Sector Name" /> 
                 <asp:BoundField DataField="cordate" HeaderText="Year" /> 
                 <asp:BoundField DataField="accounttype" HeaderText="accounttype" />
                  <asp:BoundField DataField="rating_type" HeaderText="rating_type" />
                        <asp:BoundField DataField="FixedAssets" HeaderText="Fixed Assets" />  
                        <asp:BoundField DataField="Longterm" HeaderText="Long term Deposits" /> 
                        <asp:BoundField DataField="StockTrade" HeaderText="Stock-in-Trade" />  
                        <asp:BoundField DataField="TradeDebts" HeaderText="Trade Debts" />  
                        <asp:BoundField DataField="CashBank" HeaderText="Cash & Bank Balances" />  
                        <asp:BoundField DataField="TotalAssets" HeaderText="Total Assets" /> 
                        <asp:BoundField DataField="TradePayables" HeaderText="Trade and Other Payables" />   
                        <asp:BoundField DataField="LongTermDebt" HeaderText="Long Term Debt" />  
                        <asp:BoundField DataField="ShortTermDebt" HeaderText="Short Term Debt" />  
                        <asp:BoundField DataField="TotalDebt" HeaderText="Total Debt" /> 
                        <asp:BoundField DataField="TotalLiabilities" HeaderText="Total Liabilities" />  
                        <asp:BoundField DataField="TotalEquity" HeaderText="Total Equity" />  
                        <asp:BoundField DataField="NetSales" HeaderText="Net Sales" /> 
                        <asp:BoundField DataField="GrossProfit" HeaderText="Gross Profit" />  
                        <asp:BoundField DataField="ProfitBeforeTax" HeaderText="Profit Before Tax" />  
                        <asp:BoundField DataField="ProfitafterTax" HeaderText="Profit after Tax" />
                        <asp:BoundField DataField="FFO" HeaderText="FFO" /> 
                        <asp:BoundField DataField="GrossMargin" HeaderText="Gross Margin" />  
                        <asp:BoundField DataField="NetMargin" HeaderText="Net Margin" />  
                        <asp:BoundField DataField="FFOTotalDebt" HeaderText="FFO Total Debt" /> 
                        <asp:BoundField DataField="FFOtoLongDebt" HeaderText="FFO to Long Debt" />  
                        <asp:BoundField DataField="ServicingCoverage" HeaderText="Debt Servicing Coverage" />  
                     
                 <asp:BoundField DataField="ROAA" HeaderText="ROAA" />  
                 <asp:BoundField DataField="ROAE" HeaderText="ROAE" /> 
                 <asp:BoundField DataField="Gearing" HeaderText="Gearing" />  
                 
                 <asp:BoundField DataField="Leverage" HeaderText="Leverage" />  
                 <asp:BoundField DataField="ShortTermBorrowings" HeaderText="Short Term Borrowings" />  
                 <asp:BoundField DataField="CurrentRatio" HeaderText="Current Ratio" /> 
                
                  
                  
                   <asp:BoundField DataField="outlook" HeaderText="outlook" /> 
                      
                   <asp:BoundField DataField="st_rating" HeaderText="st_rating" /> 
                 <asp:BoundField DataField="Lt_ratingName" HeaderText="Lt_rating" />  
                 
               
                 <asp:BoundField DataField="Sub_sectorid" HeaderText="sub_sector" />  
                
              
                 </Columns>
             <RowStyle BackColor="#FFF7E7" ForeColor="Black" />

<FooterStyle BackColor="#F7DFB5" ForeColor="black" />

<PagerStyle ForeColor="Black" HorizontalAlign="Center" />

<HeaderStyle BackColor="#222229" Font-Bold="True" ForeColor="White" />
         </asp:GridView>

        </div>
    </form>
</body>
</html>
