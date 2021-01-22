<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminFeatures.aspx.cs" Inherits="ELearning.AdminFeatures" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            margin-left: 228px;
        }
    .auto-style2 {
        margin-left: 228px;
        margin-top: 5px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
        &nbsp;</p>
      <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
            <body>
                <center><h1>Welcome to E Learning Classroom!!!</h1>
                    <div class="container">
   <%-- <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/crystalreport.jpg" OnClick="ImageButton3_Click" Width="258px" Height="283px" />--%>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="212px" ImageUrl="~/Images/crystalreport.jpg" Width="171px" OnClick="ImageButton3_Click1" />
    <asp:ImageButton ID="ImageButton2" runat="server" Height="212px" OnClick="ImageButton1_Click" ImageUrl="~/Images/HomeWork.jpg" Width="171px" CssClass="auto-style1" />
     <asp:ImageButton ID="ImageButton1" runat="server" Height="212px" OnClick="ImageButton2_Click" ImageUrl="~/Images/Result.jpg" Width="171px" CssClass="auto-style2" />
                      <%--  height 283 width 258--%>
                     </div>
                 </center>
            </body>
</asp:Content>
