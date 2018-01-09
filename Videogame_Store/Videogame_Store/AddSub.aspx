<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSub.aspx.cs" Inherits="Videogame_Store.AddSub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <p>Enter first name</p>
            <asp:TextBox ID="nameTextBox" Text="" runat="server" />
            <p>Enter surname</p>
            <asp:TextBox ID="surnameTextBox" Text="" runat="server" />
            <p>Enter birthdate(yyyy-mm-dd)</p>
            <asp:TextBox ID="birthDateTextBox" Text="" runat="server" />
            <p>Enter telephone number </p>
            <asp:TextBox ID="telephoneTextBox" Text="" runat="server" />
            <p>Enter address</p>
            <asp:TextBox ID="addressTextBox" Text="" runat="server" />   
            <br />
            <br />
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="registerEventMethod" />
            <asp:Button ID="backButton" Text="Back" runat="server" OnClick="backMethod" />
        </div>
    </form>
</body>
</html>
