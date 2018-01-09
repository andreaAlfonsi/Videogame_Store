<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Videogame_Store.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>registration</title>
</head>
<body>
    <p>Registration Page</p>
    <a href="LoggedIn.aspx">Home</a>
    <form id="form1" runat="server">
        <div>
            <p>Enter first name</p>
            <asp:TextBox ID="nameTextBox" Text="" runat="server" />
            <p>Enter surname</p>
            <asp:TextBox ID="surnameTextBox" Text="" runat="server" />
            <p>Enter birthdate(yyyy-mm-dd)</p>
            <asp:TextBox ID="birthDateTextBox" Text="" runat="server" />
            <p>Enter place of birth </p>
            <asp:TextBox ID="birthPlaceTextBox" Text="" runat="server" />
            <p>Enter telephone number</p>
            <asp:TextBox ID="telephoneTextBox" Text="" runat="server" />
            <p>Enter address</p>
            <asp:TextBox ID="addressTextBox" Text="" runat="server" />
            <p>Enter first day of work(yyyy-mm-dd)</p>
            <asp:TextBox ID="firstDateOfWorkTextBox" Text="" runat="server" />
            <p>Enter id of workplace</p>
            <asp:TextBox ID="workplaceIDTextBox" Text="" runat="server" />
             <p>Enter password</p>
            <asp:TextBox ID="passwordTextBox" Text="" runat="server" />
            <br />
            <br />
            <asp:Button ID="registerButton" Text="REGISTER" runat="server" OnClick="registerEventMethod" />
        </div>
    </form>
</body>
</html>
