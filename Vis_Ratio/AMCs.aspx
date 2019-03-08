<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="AMCs.aspx.cs" Inherits="Vis_Ratio.AMCs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="AMC" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div>
   <table   style="width:100%; border: 1px solid black">
       
   <caption>AMCs</caption>
   
            <tr>
                <th colspan="2">AUMs and Market position</th>
                       <th colspan="2">AUM Profile</th>
               
                           
            </tr>
         
         
         <tr>
             
            
                <td><asp:Label ID="Label1" runat="server" Text="AUMs  (Rs. in billions)"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label2" runat="server" Text="Retail AUMs (Rs. in millions)"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    
            </tr>
     <tr>
                <td><asp:Label ID="Label3" runat="server" Text="AUM in SMAs (Rs. in billions)"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label4" runat="server" Text="Retail (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    
            </tr>

         <tr>
                <td><asp:Label ID="Label5" runat="server" Text="No. of SMAs"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label6" runat="server" Text="Associates (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label7" runat="server" Text="Market Share"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label8" runat="server" Text="Number of Investors"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                    
            </tr>
       <tr>
  <th colspan="2">Financials</th>
 <th colspan="2">Qualitative Factors</th>
 </tr>


         <tr>
                <td><asp:Label ID="Label9" runat="server" Text="Management Fees"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label10" runat="server" Text="Number of Independent Directors"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label11" runat="server" Text="Core revenue"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label12" runat="server" Text="Number of Board Members"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label13" runat="server" Text="Adminstrative expenses"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label14" runat="server" Text="Board Committees"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label15" runat="server" Text="Operating Profit"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label16" runat="server" Text="Management Committees"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label17" runat="server" Text="Efficiency"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label18" runat="server" Text="IC Composition"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Total Equity"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
                <td><asp:Label ID="Label20" runat="server" Text="Shared Functions"></asp:Label></td>
                <td>  <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label21" runat="server" Text="Long term debt"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>
                                    
            </tr>
         <tr>
                <td><asp:Label ID="Label23" runat="server" Text="Total Debt"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></td>
               
                    
            </tr>
         <tr>
                <td><asp:Label ID="Label25" runat="server" Text="Number of Funds"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>
                
                    
            </tr>
       <tr>
                <td><asp:Label ID="Label22" runat="server" Text="Types of Funds not covered in portfolio"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></td>
                
                    
            </tr>
       <tr>
                <td><asp:Label ID="Label24" runat="server" Text="Total Assets"></asp:Label></td>
                <td>
                <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
                
                    
            </tr>

    
   
   </table>
  


   
</div>


</asp:Content>
