<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="loginsystem.login" %>

<!DOCTYPE html>

<html>
    <head runat="server">
        <link rel="stylesheet" href="LoginStylesheet.css"/>
        <title>Login System</title>
    </head>
    <body>
        <form id="form1" runat="server">
            <div class="container">
                <h1 class="headline" > T H E _ A W E S O M E _ S I T E </h1>
            </div>
               <%--places everything in an "container" where everything else is relevant acording to the box. --%>
            <div class="centerLoginField">
                 <%-- Wrights to the screen with the class's prefixes. --%>
                 <h1 class="largerFont">Login System</h1>
                 <%-- Wrights on a label with the text and the detales from the class. --%>
                 <label style="color: red;" for="labUser">Username:</label><br/>
                 <%-- Makes a text field where the user can enter his or hers username. --%>
                 <input runat="server" type="text" id="username" name="username"/><br/>
                 <%-- Wrights on a label with the text and the detales from the class. --%>
                 <label style="color:red;" for="labPass">Password:</label><br/>
                 <%-- Makes a text field where the user can enter the passweord for the given user. --%>
                 <input runat="server" type="password" id="password" name="password"/><br/><br/>
                 <%-- Creates the button that is used to submit the information and trigger the OnClick method. --%>
                 <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="Clicked"></asp:Button><br/><br/>
                 <%-- Display information if the username or the password were wrong. --%>
                 <label runat="server" id="errorfield"> Incorect Username or Password</label><br/> 
            </div>
        </form>
    </body>
</html>
