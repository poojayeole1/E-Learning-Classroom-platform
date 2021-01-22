<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewResult.aspx.cs" Inherits="ELearning.ViewResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <h1>View Result</h1>
            <p>&nbsp;</p>
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
        <body>
            Homework ID - 

            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>

        </body>
    </html>
    <br />
    <br />
    Student Id -
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <br />
    Q1 Grade -
    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    Q2 Grade -
    <br />
    <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" />
    <br />
</asp:Content>
