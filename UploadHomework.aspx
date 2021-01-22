<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UploadHomework.aspx.cs" Inherits="ELearning.UploadHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <h1>Homework Answers</h1>
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
        <body>
            Homework Id
            - <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Student Id -
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Q1 Ans - <br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Q2 Ans - <br />
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="1266px"
                BackColor="#4CAF50" Height="47px" Font-Bold="true" />
            <br />
            <br />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UnSubmit" Width="1266px"
                BackColor="red" Height="47px" Font-Bold="true" /><br />
        </body>
    </html>
</asp:Content>
