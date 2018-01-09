<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Videogame_Store.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>home</title>
</head>
<body>
    <center>
    <p>LOG-IN</p>
        <form id="form1" runat="server">       
            <div>
                <p>Enter username</p>
            <asp:TextBox ID="usernameTextBox" Text="" runat="server" />
            <p>Enter password</p>
            <asp:TextBox ID="passwordTextBox" Text="" runat="server" TextMode="Password" />
                <br />
                <br />
            <asp:Button ID="submitButton" Text="Login" runat="server" OnClick="submitEventMethod" />
        </div>
    </form>
        </center>
</body>
</html>
