<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ELearning.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html>
    <head>
        <style>
            body {
              background-image: url('Images/img1.jpg');
              background-repeat: no-repeat;
              background-attachment: fixed;
              background-size: 100% 100%;
            }
       </style>
    </head>
    <body>
        <h1> 
            <center>
                <b>E Learning Classroom Platform</b>
            </center>
          
        </h1> <br /> <br />
        
        <h2>
            <center>
                <a href="Registration.aspx">Registration</a>
            </center>
        </h2>

        <h2>
            <center>
                <a href="Login.aspx">Login</a>
            </center>
           <%-- <p align="center">   
                <asp:Button ID="Button1" runat="server" Text="Logout"  Width="116px" BackColor="Green"/>
            </p>--%>
        </h2>
    </body>
</html>   
</asp:Content>
