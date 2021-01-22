<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AssignHomework.aspx.cs" Inherits="ELearning.AssignHomework" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <head>
             <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>  
            <link href="StyleSheet1.css" rel="stylesheet" />
            <body>
                <h1>Questions</h1>
                Homework ID<asp:TextBox ID="TextBox3" runat="server" Width="1367px" TextMode="Number"></asp:TextBox>
                <br />
                <br />
                <label>Q.1</label>
                     <br />
                     <asp:TextBox ID="TextBox1" runat="server" Width="1367px">Explain the concept of photosynthesis.</asp:TextBox><br />
                <label>Q.2<br />
                </label>
                <asp:TextBox ID="TextBox2" runat="server" Width="1376px">Explain cell structure and functions.</asp:TextBox>
                <br />
                <br />
            <div>
                <asp:Panel ID="pnlTextBoxes" runat="server">
</asp:Panel>
                <asp:Button ID="Button2" runat="server" Text="Add (+)" Width="165px" BackColor="#4CAF50" OnClick="Button2_Click" />
                <br />
                <br />
               Assigned Date 
                <%--  <div>  
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server">  
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />  
                    </asp:PlaceHolder>  
                       
                 </div>   --%>
                -
                <asp:TextBox ID="TextBox4" runat="server" TextMode="DateTime"></asp:TextBox>
                <br />
                <br />
                Due Date -
                <asp:TextBox ID="TextBox5" runat="server" TextMode="DateTime"></asp:TextBox>
            </div>
                <br />
                
               <p id="demo">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Assign" Width="1266px"
                BackColor="#4CAF50" Height="47px" Font-Bold="true" />

        </p>
                <p>

             <%--<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Crystal Report" Width="1266px"
                BackColor="#4CAF50" Height="47px" Font-Bold="true" />
 --%>
        </p>
            </body>
        </head>
    </html>
</asp:Content>
