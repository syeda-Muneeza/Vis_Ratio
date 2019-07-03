<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Vis_Ratio.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%--  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">--%>
  <%--<link rel="stylesheet" href="/resources/demos/style.css">--%>
 <%-- <link href="css/table.css" rel="stylesheet" /> --%>

    <style>

       
.GridviewDiv {font-size: 80%; color: #303933;overflow:scroll; width: 96%; margin: 0 auto; }
Table.Gridview{border:solid 1px Black;}
/*.GridviewTable{border:none}*/
.GridviewTable td{margin-top:0;padding: 0; vertical-align:middle }
.GridviewTable tr{color: White; background-color: #df5015; height: 30px; text-align:center}
/*.Gridview th{color:#FFFFFF;border-right-color:#abb079;border-bottom-color:#abb079;padding:0.5em 0.5em 0.5em 0.5em;text-align:center}*/
.Gridview td{border-bottom-color:black;border-right-color:black;padding:0.5em 0.5em 0.5em 0.5em;}
.Gridview tr{color: Black; background-color: White; text-align:left}
.label{font-size:large;}
    </style>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
   
         
        
         <%--  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" Style="height: 26px" />  --%>
          <br />
    <div class="GridviewDiv">
        
           <asp:DropDownList ID="ddlc" runat="server" AppendDataBoundItems="true" AutoPostBack="true" Font-Size="10pt" Height="17px" 
            onselectedindexchanged="ddlc_SelectedIndexChanged" Width="162px">  
        </asp:DropDownList>  &nbsp;&nbsp;
        <asp:Label ID="lblcom" runat="server" Text="" CssClass="label"></asp:Label>
          <br />
          <br />

         <asp:GridView ID="gvc" runat="server" AutoGenerateColumns="false" DataKeyNames="CorID" OnPageIndexChanging="gvc_PageIndexChanging" OnRowCancelingEdit="gvc_RowCancelingEdit" OnRowDeleting="gvc_RowDeleting" OnRowEditing="gvc_RowEditing" OnRowUpdating="gvc_RowUpdating"
            AllowPaging="True" CellPadding="2" PageSize="5" BackColor="#ffffff" BorderColor="#ffffff"
BorderWidth="1px" CellSpacing="1" PageIndex="5" CssClass="Gridview">
       
             <Columns> 
                  
                        <asp:BoundField DataField="FixedAssets" HeaderText="FixedAssets" />  
                        <asp:BoundField DataField="Longterm" HeaderText="Longterm" /> 
                 
                 <asp:BoundField DataField="CorID" HeaderText="S.No." />  
                        <asp:BoundField DataField="Com_code" HeaderText="Compnay_code" />  
                        <asp:BoundField DataField="FixedAssets" HeaderText="asset" />  
                        <asp:BoundField DataField="Longterm" HeaderText="longterm" /> 

                 <asp:BoundField DataField="StockTrade" HeaderText="StockTrade" />  
                        <asp:BoundField DataField="TradeDebts" HeaderText="TradeDebts" />  
                        <asp:BoundField DataField="CashBank" HeaderText="CashBank" />  
                        <asp:BoundField DataField="TotalAssets" HeaderText="TotalAssets" /> 

                 <asp:BoundField DataField="TradePayables" HeaderText="TradePayables" />  
                        <asp:BoundField DataField="LongTermDebt" HeaderText="LongTermDebt" />  
                        <asp:BoundField DataField="ShortTermDebt" HeaderText="ShortTermDebt" />  
                        <asp:BoundField DataField="TotalDebt" HeaderText="TotalDebt" /> 

                 <asp:BoundField DataField="TotalLiabilities" HeaderText="TotalLiabilities" />  
                        <asp:BoundField DataField="TotalEquity" HeaderText="TotalEquity" />  
                        <asp:BoundField DataField="INCOMECASHFLOW" HeaderText="INCOMECASHFLOW" />  
                        <asp:BoundField DataField="NetSales" HeaderText="NetSales" /> 

                 <asp:BoundField DataField="GrossProfit" HeaderText="GrossProfit" />  
                        <asp:BoundField DataField="ProfitBeforeTax" HeaderText="ProfitBeforeTax" />  
                        <asp:BoundField DataField="ProfitafterTax" HeaderText="ProfitafterTax" />  
                        <asp:BoundField DataField="FFO" HeaderText="FFO" /> 

                 
                 <asp:BoundField DataField="RATIOANALYSIS" HeaderText="RATIOANALYSIS" />  
                        <asp:BoundField DataField="GrossMargin" HeaderText="GrossMargin" />  
                        <asp:BoundField DataField="NetMargin" HeaderText="NetMargin" />  
                        <asp:BoundField DataField="FFOTotalDebt" HeaderText="FFOTotalDebt" /> 

                 <asp:BoundField DataField="FFOtoLongDebt" HeaderText="FFOtoLongDebt" />  
                        <asp:BoundField DataField="ServicingCoverage" HeaderText="ServicingCoverage" />  
                        <asp:BoundField DataField="ROAA" HeaderText="ROAA" />  
                        <asp:BoundField DataField="ROAE" HeaderText="ROAE" /> 

                   
                 <asp:BoundField DataField="Gearing" HeaderText="Gearing" />  
                        <asp:BoundField DataField="Leverage" HeaderText="Leverage" />  
                        <asp:BoundField DataField="ShortTermBorrowings" HeaderText="ShortTermBorrowings" />  
                        <asp:BoundField DataField="CurrentRatio" HeaderText="CurrentRatio" /> 

                 <asp:BoundField DataField="cordate" HeaderText="Year" />  
                        <asp:BoundField DataField="rating_type" HeaderText="rating_type" />  
                        <asp:BoundField DataField="Lt_rating" HeaderText="Lt_rating" />  
                        <asp:BoundField DataField="st_rating" HeaderText="st_rating" /> 

                  <asp:BoundField DataField="sub_sector" HeaderText="sub_sector" />  
                        <asp:BoundField DataField="outlook" HeaderText="outlook" />  
                        <asp:BoundField DataField="accounttype" HeaderText="accounttype" /> 
              
                 <asp:CommandField ShowEditButton="true" />  
                        <asp:CommandField ShowDeleteButton="true" />
                 </Columns>
             <RowStyle BackColor="#FFF7E7" ForeColor="Black" />

<FooterStyle BackColor="#F7DFB5" ForeColor="black" />

<PagerStyle ForeColor="Black" HorizontalAlign="Center" />

<HeaderStyle BackColor="#222229" Font-Bold="True" ForeColor="White" />
         </asp:GridView>
         
     
    </div>


</asp:Content>
