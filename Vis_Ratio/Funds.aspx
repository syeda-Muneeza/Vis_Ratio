﻿<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Funds.aspx.cs" Inherits="Vis_Ratio.Funds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Funds" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
  
    <table style=" border: 1px solid #1C6EA4;
    background-color: #EEEEEE;
    width: 100%;
    text-align: left;">
       
   <caption>Funds</caption>
   
       <tr>
                <th colspan="2">Type of fund</th>
       
                
               
            </tr>
    
             
       <tr>
          <td><asp:Label ID="Label1" runat="server" Text="Return (%)" ></asp:Label></td>
                <td><asp:TextBox ID="Return" runat="server"></asp:TextBox></td>
       
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
        
      <tr>
          <td></td>
        
            
            
          <td><asp:Button ID="Save" runat="server" Text="Save" />
                 <asp:Button ID="Edit" runat="server" Text="Edit" />
<asp:Button ID="Delete" runat="server" Text="Delete" />
                     <asp:Button ID="Add" runat="server" Text="Add" />

           
                 </td>         
      </tr>
    </table>
  


   
</div>


</asp:Content>
