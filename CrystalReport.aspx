<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CrystalReport.aspx.cs" Inherits="ELearning.CrystalReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <h1>Crystal Reports</h1>
            <p>&nbsp;</p>
            <p>Assigned Homework Crystal Report -
                <asp:Button ID="Button1" runat="server" BackColor="#4CAF50" Text="View Report" OnClick="Button1_Click" />
            </p>
            <p>Student Result -
                <asp:Button ID="Button2" runat="server" BackColor="#4CAF50" Text="View Report" OnClick="Button2_Click" />
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
        <body>

        </body>
    </html>
</asp:Content>
