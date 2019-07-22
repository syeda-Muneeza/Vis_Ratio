<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="AMCedit.aspx.cs" Inherits="Vis_Ratio.AMCedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
          
                  <asp:BoundField DataField="AUMs" HeaderText="AUMs  (Rs. in billions)" />  
                  <asp:BoundField DataField="AUMinSMAs" HeaderText="AUM in SMAs (Rs. in billions)" /> 
                  <asp:BoundField DataField="NoofSMAs" HeaderText="No. of SMAs" />  
                
                  <asp:BoundField DataField="MarketShare" HeaderText="Market Share (ex Fund of Funds)" />  
                  <asp:BoundField DataField="RetailAUMs" HeaderText="Retail AUMs (Rs. in millions)" />  
                  <asp:BoundField DataField="Retail" HeaderText="Retail (%)" /> 

                  <asp:BoundField DataField="Associates" HeaderText="Associates (%)" />  
                  <asp:BoundField DataField="NoInvestors" HeaderText="Number of Investors" />  
                  <asp:BoundField DataField="ManagementFees" HeaderText="Management Fees" />
                 
                  <asp:BoundField DataField="Corerevenue" HeaderText="Core revenue" /> 
                  <asp:BoundField DataField="Adminexpenses" HeaderText="Adminstrative expenses" />  
                  <asp:BoundField DataField="OperatingProfit" HeaderText="Operating Profit" />  
                 
                  <asp:BoundField DataField="Efficiency" HeaderText="Efficiency" /> 
                  <asp:BoundField DataField="TotalEquity" HeaderText="Total Equity" />  
                  <asp:BoundField DataField="Longtermdebt" HeaderText="Long term debt" />  
                        
                  <asp:BoundField DataField="TotalDebt" HeaderText="Total Debt" />
                  <asp:BoundField DataField="NumberofFunds" HeaderText="Number of Funds" /> 
                  <asp:BoundField DataField="portfolio" HeaderText="Types of Funds not covered in portfolio" />  
                 
                 <asp:BoundField DataField="Assets" HeaderText="Total Assets" />  
                 <asp:BoundField DataField="IndependentDirectors" HeaderText="Number of Independent Directors" /> 
                 <asp:BoundField DataField="BoardMembers" HeaderText="Number of Board Members" /> 
                 
                 <asp:BoundField DataField="BoardCommittees" HeaderText="Board Committees" />  
                 <asp:BoundField DataField="ManagementCommittees" HeaderText="Management Committees" />  
                 <asp:BoundField DataField="ICComposition" HeaderText="IC Composition" /> 
                
                 <asp:BoundField DataField="SharedFunctions" HeaderText="Shared Functions" />  
                 <asp:BoundField DataField="amcdate" HeaderText="Year" />  
                 <asp:BoundField DataField="rating_type" HeaderText="rating_type" />  
                
                 <asp:BoundField DataField="Lt_rating" HeaderText="Lt_rating" />  
                 <asp:BoundField DataField="st_rating" HeaderText="st_rating" /> 
                 <asp:BoundField DataField="acctype" HeaderText="accounttype" /> 
               
                 <asp:BoundField DataField="outlook" HeaderText="outlook" />  
                 <asp:BoundField DataField="sub_sector" HeaderText="sub_sector" />  
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
