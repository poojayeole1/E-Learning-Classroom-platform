<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminViewHomework.aspx.cs" Inherits="ELearning.AdminViewHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <h1>View Answers</h1>
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
        <body>
            Homework Id - 

            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>

        </body>
    </html>
    <br />
    <br />
    Student Id -
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <br />
    Q1 Ans -
    <br />
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    Q2 Ans -
    <br />
    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Check" BackColor="#4CAF50" OnClick="Button1_Click" />
</asp:Content>
