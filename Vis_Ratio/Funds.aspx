<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Funds.aspx.cs" Inherits="Vis_Ratio.Funds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Funds" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
       
   <caption>Funds</caption>
   
       <tr>
                <th colspan="2">Type of fund</th>
       
                
               
            </tr>
    <tr><td><asp:label ID="label22" runat="server" Text="Company Name"></asp:label></td>
                <td><asp:DropDownList ID="Drpcompany" runat="server" Visible="false"></asp:DropDownList></td>
</tr>
             
       <tr>
          <td><asp:Label ID="Label1" runat="server" Text="Return (%)" ></asp:Label></td>
                <td><asp:TextBox ID="Return1" runat="server"></asp:TextBox></td>
       
         </tr>
        <tr>
          <td><asp:Label ID="Label2" runat="server" Text="Benchmark (%)"></asp:Label></td>
                <td><asp:TextBox ID="Benchmark" runat="server"></asp:TextBox></td>
       </tr>
           <tr>
          <td><asp:Label ID="Label3" runat="server" Text=" Peer Average (%)"></asp:Label></td>
                <td><asp:TextBox ID="PeerAverage" runat="server"></asp:TextBox></td>
      </tr>
       
        <tr>  <td><asp:Label ID="Label4" runat="server" Text="Relative Ranking"></asp:Label></td>
                <td><asp:TextBox ID="RelativeRanking" runat="server"></asp:TextBox></td>
       </tr>
         <tr>
          <td><asp:Label ID="Label5" runat="server" Text="Fund Size (in Rs. m)"></asp:Label></td>
                <td><asp:TextBox ID="FundSize" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td><asp:Label ID="Label6" runat="server" Text="Retail (%)"></asp:Label></td>
                <td><asp:TextBox ID="Retail" runat="server"></asp:TextBox></td>
      </tr>
        <tr>
          <td><asp:Label ID="Label7" runat="server" Text="Associates (%)"></asp:Label></td>
                <td><asp:TextBox ID="Associates" runat="server"></asp:TextBox></td>
       
          
       </tr>
        <tr><td><asp:Label ID="Label8" runat="server" Text="Number of Investors"></asp:Label></td>
                <td><asp:TextBox ID="NumberInvestors" runat="server"></asp:TextBox></td></tr>
         <tr>
          <td><asp:Label ID="Label9" runat="server" Text="Top 10 Investors / AUMs"></asp:Label></td>
                <td><asp:TextBox ID="TopInvestors" runat="server"></asp:TextBox></td>

         
       </tr>
        <tr> <td><asp:Label ID="Label10" runat="server" Text="Fund Stability Rating"></asp:Label></td>
                <td><asp:TextBox ID="FundRating" runat="server"></asp:TextBox></td></tr>
        
         <tr>  <td><asp:Label ID="Label19" runat="server" Text="Date"></asp:Label></td>
             <td>   <asp:TextBox ID="txtMyDate" CssClass="datepicker" runat="server"></asp:TextBox></td>
            </tr>

      <tr>
          <td></td>
        
            
            
          <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass="button" />


           
                 </td>         
      </tr>
    </table>
  


   
</div>


</asp:Content>
