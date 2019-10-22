<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Vis_Ratio.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <link href="css/Login.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

          <div class="formclass">
              <h2>
                  Login Page
              </h2>
              <asp:Label ID="lbluser" runat="server" Text="User Name"></asp:Label>
              <asp:TextBox ID="txtuser" placeholder="Type UserName" CssClass="txtbox" runat="server"></asp:TextBox>
              <br />
              <br />

          
              <asp:Label ID="lblpassword" runat="server" Text="Passowrd"></asp:Label>
              <asp:TextBox ID="txtpassword" placeholder="Type Password" CssClass="txtbox" textmode="Password" runat="server"></asp:TextBox>
              <br />
              <br />
         
           
           <asp:Button ID="btnsave" runat="server" Width="100%" CssClass="txtbox" Text="Login" OnClick="btnsave_Click" />
         </div>
    </form>
</body>
</html>
