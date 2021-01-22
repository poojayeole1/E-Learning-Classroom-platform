<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadResult.aspx.cs" Inherits="ELearning.UploadResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <link href="StyleSheet1.css" rel="stylesheet" />
            <h1>Upload Result</h1>
            <p>&nbsp;</p>
        </head>
        <body>
            Homework ID - 
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        </body>
    </html>&nbsp;<br />
    <br />
    Student ID - <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
    <br />
    <br />
    Q1 -
    <br />
    Grade -
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>O</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>B</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Q2 -
    <br />
    Grade - 
     <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>O+</asp:ListItem>
        <asp:ListItem>O</asp:ListItem>
        <asp:ListItem>A+</asp:ListItem>
        <asp:ListItem>A</asp:ListItem>
        <asp:ListItem>B+</asp:ListItem>
        <asp:ListItem>B</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" Width="1266px"
                BackColor="#4CAF50" Height="47px" Font-Bold="true" />
</asp:Content>
