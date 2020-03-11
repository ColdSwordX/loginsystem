<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="loginsystem.CreateUser" %>

<!DOCTYPE html>

<head runat="server">
    <link rel="stylesheet" type="text/css" href="MainStylesheet.css"/>
    <title>Create User</title>
</head>
<body>
    <form id="form1" runat="server" method="post" >
        <%-- Navigation menu --%>
        <div class="topnav">
            <a class="active" href="Home.aspx">Home</a>
            <a href="login.aspx">Logout</a>
            <a href="UserInfo.aspx">User Info</a>
            <a style="position:absolute; right:160px;" id ="CreateNew" runat="server" visible="false" href="CreateUser.aspx">Create User</a>
            <a style="position:absolute; right:280px;" id ="Delete" runat="server" visible="false" href="DeleteUser.aspx">Delete User</a>
            <b style="position:absolute; right:0;">Create New User</b>
        </div>
        <%-- Left Field --%>
        <div class="LeftScreen">
            <div class="CreateUser">
                <fieldset>
                <label>Login information</label><br /><br />
                <label>User name</label>
                <input style="position:absolute; right: 40px;" type="text" id="UserName" required runat="server" name="UserName" /><br/><br/>
                <label>Password</label>
                <input style="position:absolute; right: 40px;" type="text" id ="Password" required runat="server" name="Password"/><br/><br/>
                </fieldset>
            </div>
        </div>
        <%-- Right Field --%>
        <div class="RightScreen">
            <div class="CreateUser">
                <fieldset>
                <label>somthing</label><br/>
                <label>somthing</label><br/>
                <label>somthing</label><br/>
                <label>somthing</label><br/>
                <label>somthing</label><br/>
                </fieldset>
            </div>
        </div>
        <%-- Top center field --%>
            <div class="CreateUser">
                <fieldset>
                    <label>Personal information</label><br/><br/>
                    <label>First Name</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreateFN" required runat="server" name="UserInfo"/><br/><br/>
                    <label>Last Name</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreateLN" required runat="server" name="UserInfo"/><br/><br/>
                    <label>Age</label>
                    <input style="position: absolute; right: 30px;" type="text" id ="CreateAge" runat="server" name="UserInfo"/><br/><br/>
                    <label>Email</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreateEmail" runat="server" name="UserInfo"/><br/><br/>
                    <label>TLF.</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreatePN" runat="server" name="UserInfo"/><br/><br/>
                    <label>City</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreateCity" runat="server" name="UserInfo"/><br/><br/>
                    <label>Steet</label>
                    <input style="position:absolute; right: 30px;" type="text" id ="CreateSteet" runat="server" name="UserInfo"/><br/><br/>
                </fieldset> 
            </div>
        <div class="CreateButton">
            <asp:Button style="position: relative; background-color: black; border-color:darkred; left: -50%; 
                width: 200%; height: 50px; color: deepskyblue; font-size:large" ID="CreateButton" runat="server"
                OnClick="MakeUser" Text="Create User with all the information needed"/>
        </div>
    </form>
</body>
