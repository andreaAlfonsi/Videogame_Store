<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showData.aspx.cs" Inherits="Videogame_Store.showData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="viewButton" runat="server" Text="Search" onClick="viewMethod"/>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Developer : "></asp:Label>      <asp:Label ID="sviluppatoreLabel" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Publisher : "></asp:Label>      <asp:Label ID="produttoreLabel" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Age : "></asp:Label>      <asp:Label ID="ageLabel" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Console : "></asp:Label>      <asp:Label ID="consoleLabel" runat="server"></asp:Label>      
                <br />
                <br />
                <asp:ListBox ID="genreList" runat="server"></asp:ListBox>
                <asp:Button ID="backButton" Text="Back" runat="server" OnClick="backMethod" />
        </div>
    </form>
</body>
</html>
