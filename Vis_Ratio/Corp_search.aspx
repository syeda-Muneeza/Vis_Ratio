﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Corp_search.aspx.cs" Inherits="Vis_Ratio.Corp_search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/master.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style>

       
.GridviewDiv {font-size: 80%; color: #303933;overflow:scroll; width: 98%; margin: 0 auto; height: 600px; }
Table.Gridview{border:solid 1px Black;}
/*.GridviewTable{border:none}*/
.GridviewTable td{margin-top:0;padding: 0; vertical-align:middle }
.GridviewTable tr{color: White; background-color: #df5015; height: 30px; text-align:center}
/*.Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}*/
.Gridview td{border-bottom-color:black;border-right-color:black;padding:0.5em 0.5em 0.5em 0.5em;}
.Gridview tr{color: Black; background-color: White; text-align:left}
.label{font-size:large;}
        .txtbox {background-color: #353835;border: none;color: white;padding: 7px 12px 7px 12px;font-size: 20px;margin: 4px 4px;cursor: pointer;border-radius: 8px;float: right;}
    </style>
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
       
    <div class="search">
         <asp:Label ID="lblid" runat="server" Text="" Visible="false"></asp:Label>
    <asp:TextBox ID="Txtuser" runat="server" style="width: auto;margin: 5px auto;border: none;font-size: larger;font-family: sans-serif;font-weight: 600;"></asp:TextBox>


        <asp:Button ID="btnlogout" runat="server" Text="Logout" CssClass="log" OnClick="btnlogout_Click" />
        <br />
        <table>
                <tr>
     <td><strong>Sectors :</strong></td>
     <td><asp:DropDownList ID="ddlsector" runat="server" AutoPostBack="True" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlsector_SelectedIndexChanged">
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


               </asp:DropDownList></td>
               </tr>
               <tr>
               <td colspan="3"><strong>Range:</strong></td> 
               </tr>

               <tr>
               <td><strong>Min</strong></td>
               <td> <asp:TextBox ID="txtno1" runat="server"></asp:TextBox></td>
               <td><strong>Max</strong></td>
               <td> <asp:TextBox ID="txtno2" runat="server"></asp:TextBox></td>
                 
               </tr>
               <tr>
               <td colspan="3"><strong>Long-Term Rating</strong></td> 
               </tr>
               <tr>

               <td><strong>Min-LtRating:</strong></td>
               <td><asp:DropDownList ID="Ddlrating" runat="server" AutoPostBack="True" AppendDataBoundItems="true">
               </asp:DropDownList></td>
               
               <td><strong>Max-LtRating:</strong></td>
               <td><asp:DropDownList ID="Ddlrating2" runat="server" AutoPostBack="True" AppendDataBoundItems="true">
               </asp:DropDownList>
               <asp:Button ID="btnsave" runat="server" Text="go" cssclass="go" OnClick="btnsave_Click" />
               </td>
               </tr>
   
   </table>
            <br />
        <div class="GridviewDiv">
            <asp:GridView ID="gvc" runat="server" AutoGenerateColumns="false" CellPadding="2" BackColor="#ffffff" BorderColor="#ffffff" BorderWidth="1px" CellSpacing="1" PageIndex="5" CssClass="Gridview">
       
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
        </div>


</asp:Content>
