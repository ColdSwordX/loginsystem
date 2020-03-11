<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="loginsystem.Default" %>

<!DOCTYPE html>

<head runat="server">
    <link rel="stylesheet" type="text/css" href="MainStylesheet.css"/>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <%-- Navigation menu --%>
        <div class="topnav">
            <a class="active" href="Home.aspx">Home</a>
            <a href="login.aspx">Logout</a>
            <a href="UserInfo.aspx">User Info</a>
            <a style="position:absolute; right:160px;" id ="CreateNew" runat="server" visible="false" href="CreateUser.aspx">Create User</a>
            <a style="position:absolute; right:280px;" id ="Delete" runat="server" visible="false" href="DeleteUser.aspx">Delete User</a>
            <b style="position:absolute; right:0;">Create New User</b>
        </div>
    </form>
</body>
