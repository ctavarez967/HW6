<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>

<body>
    <form id="form1" runat="server">
    <div class="content">
        <div class="tittle">
            <h1>Wicked Easy Recipes</h1>
         </div>
         <ul>
             <li><a href="Default.aspx"style="color:black">Home</a>&nbsp;&nbsp; |</li>
             <li><a href="New Recipe.aspx"style="color:black">New Recipe</a>&nbsp;&nbsp; |</li>
             <li><a href="About Us.aspx"style="color:black">About Us</a>&nbsp;&nbsp; |</li>
             <li><a href="Contact.aspx"style="color:black">Contact</a></li>
            </ul>
        <br />
        <br />
        <br />
        <br />
        
        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>
    </div>
    </form>
        <br />
    <br />
    <br />

    <div class="footer"> 
          @ Site Developed for Software Design and Development MSCI3300, Univeristy of Iowa 2014, All rights Reserved.
    </div>
</body>
</html>
