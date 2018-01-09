<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkDisp.aspx.cs" Inherits="Videogame_Store.checkDisp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <div>
                &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ProductType" runat="server" Width="200px" >
                <asp:ListItem Text="Select type of product" Value="0"></asp:ListItem>
                <asp:ListItem Text="Videogame" Value="1"></asp:ListItem>
                <asp:ListItem Text="Console" Value="2"></asp:ListItem>
                <asp:ListItem Text="Accessory" Value="3"></asp:ListItem>
            </asp:DropDownList>
                &nbsp;&nbsp;
                 <br />
                &nbsp;&nbsp;
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="viewButton" runat="server" Text="Search" onClick="viewMethod"/>
                <br />
                <br />
              &nbsp;&nbsp;
                <asp:Label ID="labelQNT" runat="server" Text="Quantity : "></asp:Label>      &nbsp;&nbsp;&nbsp;      <asp:Label ID="labelData" runat="server"></asp:Label>      
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
          <p>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="backButton" Text="Back" runat="server" OnClick="backMethod" />
          </p>
    </form>
</body>
</html>
