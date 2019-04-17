<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Companyprofile.aspx.cs" Inherits="Vis_Ratio.Companyprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Companyprofile" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/master.css" rel="stylesheet" />

    <div class="center">
        <label>Company Name</label>
        <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>

         <label>Sector Name</label>
        <asp:DropDownList ID="Drpsector" runat="server"></asp:DropDownList>
        <%-- <asp:TextBox ID="txtsector" runat="server"></asp:TextBox>--%>


        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click"/>
    </div>

</asp:Content>








