<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StudentViewHomework.aspx.cs" Inherits="ELearning.StudentViewHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <link href="StyleSheet1.css" rel="stylesheet" />
            <h1> Homework Questions - </h1>
        </head>
        <body>
            Homework ID - <asp:TextBox ID="TextBox1" runat="server" Width="1367px" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="1367px"  ReadOnly="True"></asp:TextBox><br />
            <asp:TextBox ID="TextBox3" runat="server" Width="1367px" ReadOnly="True"></asp:TextBox>
            <br />
            <br />
          
        </body>
    </html>
    Assigned Date - <asp:TextBox ID="TextBox4" runat="server" TextMode="DateTime" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    Due Date -
    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" TextMode="DateTime"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="View" BackColor="#4CAF50" />
    <br />
    <br />
    </asp:Content>
