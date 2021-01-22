<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ELearning.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="StyleSheet1.css" rel="stylesheet" />
        </head>
            <body>
                <h2>Login Form</h2>
                    <form action="/action_page.php" method="post">
                 <div class="container">
                        <label for="uname"><b>Username</b></label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="reqName" 
                                controltovalidate="TextBox1" errormessage="Enter your name!" ForeColor="Red" />
                            <br />
                            <br />&nbsp;
                        <label for="psw"><b>Password</b></label>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" 
                                controltovalidate="TextBox2" errormessage="Enter your password!" ForeColor="Red" />
                            <br />&nbsp;
	                <p id="demo">
                        <asp:Button ID="Button1" runat="server" Height="47px" Text="Login" Width="1225px" BackColor="#4CAF50" Font-Bold="true" OnClick="Button1_Click"/>
                    </p>
                     <label>
                        <br />
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                     </label>
              </div>

                  <%--  <div class="container" style="background-color:#f1f1f1">
                        <button type="button" class="cancelbtn">Cancel</button>
                        <span class="psw">Forgot <a href="#">password?</a></span>
                    </div>--%>
                </form>
            </body>
    </html>
</asp:Content>


