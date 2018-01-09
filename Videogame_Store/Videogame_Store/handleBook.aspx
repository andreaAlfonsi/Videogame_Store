<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="handleBook.aspx.cs" Inherits="Videogame_Store.handleBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            GESTIONE PRENOTAZIONI<br />
            <br />
            Nome videogioco:&nbsp;&nbsp;
            <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="manageButton" runat="server" Text="Manage" OnClick="manageEvent"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="idBackButton" runat="server" Text="Back" onClick="BackEvent"/>
        </div>
    </form>
</body>
</html>
