<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="loginsystem.UserInfo" %>

<!DOCTYPE html>

<head runat="server" >
    <link rel="stylesheet" type="text/css" href="MainStylesheet.css"/>
    <title>User Infomation</title>
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
        <%-- Shows the user information.æ --%>
        <div class="MainPage">
            <div class="MainLabels">
                <h1 class="largerFont">User information </h1>
                <asp:Label ID="LFirstName" runat="server" Text="First name: "></asp:Label><br/>
                <asp:Label ID="LLastName" runat="server" Text="Last name: "></asp:Label><br/>
                <asp:Label ID="LAge" runat="server" Text="Age: "></asp:Label><br/>
                <asp:Label ID="LEmail" runat="server" Text="Email: "></asp:Label><br/>
                <asp:Label ID="LPhone" runat="server" Text="Phone: "></asp:Label><br/>
                <asp:Label ID="LCity" runat="server" Text="City: "></asp:Label><br/>
                <asp:Label ID="LStreet" runat="server" Text="Street: "></asp:Label><br/><br/>
                <asp:Button ID="Edit" runat="server" Text="Edit Information" OnClick="EditInformaiton" />
                <asp:Button ID="ChangePass" runat="server" Text="Change Password" OnClick="ShownPNbuttom" />
            </div>
        </div>
        <%-- this block is hidden until the edit button is pressed. --%>
        <div class="EditPage" id="EditPage" runat="server">
            <div class="Edit">
                <asp:Label ID="LebelFN" runat="server" Text="First name: "></asp:Label>
                <asp:TextBox ID="EditFirstName" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelLN" runat="server" Text="Last name: "></asp:Label>
                <asp:TextBox ID="EditLastName" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelAge" runat="server" Text="Age: "></asp:Label>
                <asp:TextBox ID="EditAge" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelEmail" runat="server" Text="Email: "></asp:Label>
                <asp:TextBox ID="EditEmail" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelPhone" runat="server" Text="Phone: "></asp:Label>
                <asp:TextBox ID="EditPhone" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelCity" runat="server" Text="City: "></asp:Label>
                <asp:TextBox ID="EditCity" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Label ID="LabelStreet" runat="server" Text="Street: "></asp:Label>
                <asp:TextBox ID="EditStreet" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/><br/>
                <asp:Button ID="EditThis" runat="server" Text="Edit" OnClick="EditClick"/><br/>
            </div>
        </div>
        <div class ="EditPage" id ="ChangeP" runat ="server">
            <div class ="Edit">
                <asp:Label ID="NPLable" runat="server" Text="Password: "></asp:Label>
                <asp:TextBox ID="NPTextBox" runat="server" style="position:absolute; right:40px;"></asp:TextBox><br/>
                <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="ChangePassword"/><br/>
            </div>
        </div>
    </form>
</body>
