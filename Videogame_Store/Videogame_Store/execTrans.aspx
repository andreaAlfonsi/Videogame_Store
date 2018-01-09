<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="execTrans.aspx.cs" Inherits="Videogame_Store.execTrans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Make a transaction</h2>
            <p>Firstly choose the type of transaction</p>
            <asp:DropDownList ID="transType" runat="server" Width="200px">
                <asp:ListItem Text="Select type of transaction" Value="0"></asp:ListItem>
                <asp:ListItem Text="Buy" Value="1"></asp:ListItem>
                <asp:ListItem Text="Trade-in" Value="2"></asp:ListItem>
                <asp:ListItem Text="Reserve" Value="3"></asp:ListItem>
             </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <asp:CheckBox ID="SubscriberCb" runat="server" Text="Subscriber :" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="subTextBox" runat="server" Height="21px" Width="129px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="idLabel" runat="server" Text="ID Punto Vendita"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="idTextBox" runat="server" Text="1"></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="ProductType" runat="server" Width="200px"  >
                <asp:ListItem Text="Select type of product" Value="0"></asp:ListItem>
                <asp:ListItem Text="Videogame" Value="1"></asp:ListItem>
                <asp:ListItem Text="Console" Value="2"></asp:ListItem>
                <asp:ListItem Text="Accessory" Value="3"></asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="productLabel" runat="server" Text="Product name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="productTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
            &nbsp;
            <asp:TextBox ID="qntTBox" runat="server" style="margin-bottom: 0px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="addButton" runat="server" Text="Add to List" OnClick="addEvent"/>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Product name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Product Code"></asp:Label>
            <br />
            <br />
            <asp:ListBox ID="nameList" runat="server" Width="129px"></asp:ListBox>
            <asp:ListBox ID="moneyList" runat="server" Width="129px"></asp:ListBox>
            <asp:ListBox ID="qntList" runat="server" Width="129px"></asp:ListBox>
            <asp:ListBox ID="typeList" runat="server" Width="129px" ></asp:ListBox>
            <asp:ListBox ID="codList" runat="server" Width="129px"></asp:ListBox>
            <br />
            <br />
            <br />
            <asp:Button ID="insButton" runat="server" Text="Insert Transaction" onClick="insertEvent" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="idBackButton" runat="server" Text="Back" onClick="BackEvent"/>
  </div>
    </form>
</body>
</html>
