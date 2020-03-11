<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="loginsystem.DeleteUser" %>

<!DOCTYPE html>

<head runat="server">
    <link rel="stylesheet" type="text/css" href="MainStylesheet.css"/>
    <title>Delete User</title>
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
            <b style="position:absolute; right:0;">Delete User</b>
        </div>
        <%-- Top center field --%>
            <div class="deleteUser">
                <fieldset>
                    <label>Personal information</label><br/><br/>
                    <label>User Name</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="DeteleUserName" required runat="server" name="UserInfo"/><br/><br/>
               </fieldset> 
            </div>
        <div class="CreateButton">
            <asp:Button style="position: relative; background-color: black; border-color:darkred; left: -50%; 
                width: 200%; height: 50px; color: deepskyblue; font-size:large" ID="CreateButton" runat="server"
                OnClick="DelU" Text="Delete the Selected User from existence"/>
        </div>
    </form>
</body>
