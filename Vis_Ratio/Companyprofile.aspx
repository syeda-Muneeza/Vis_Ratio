<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Companyprofile.aspx.cs" Inherits="Vis_Ratio.Companyprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Companyprofile" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/master.css" rel="stylesheet" />

        
    
        <div class="center">
        <label>Company Name</label>
        <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>

        
        
        <label>Sector Name</label>
        <asp:DropDownList ID="Drpsector" runat="server" >
            <asp:ListItem Value="0">Select Sector</asp:ListItem>
            
            <asp:ListItem Value="1">Corporates</asp:ListItem>
            <asp:ListItem Value="2">Insurance</asp:ListItem>
            <asp:ListItem Value="3">Banks/DFIs</asp:ListItem>
            <asp:ListItem Value="4">Brokerages</asp:ListItem>
            <asp:ListItem Value="5">Microfinance</asp:ListItem>
            <asp:ListItem Value="6">AMCs</asp:ListItem>
            <asp:ListItem Value="7">Funds</asp:ListItem>
            <asp:ListItem Value="8">Leasing Companies</asp:ListItem>
            <asp:ListItem Value="9">Modarabas</asp:ListItem>
            <asp:ListItem Value="10">Investment Companies</asp:ListItem>
            </asp:DropDownList>
        <%-- <asp:TextBox ID="txtsector" runat="server"></asp:TextBox>--%>
            <p><asp:Literal ID="Lit1" runat="server"></asp:Literal></p>
            
       <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click"/>
       </div>
     
</asp:Content>




























