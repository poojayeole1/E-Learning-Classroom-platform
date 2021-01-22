<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ELearning.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="StyleSheet1.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
        <body>
            <div class="container">
                <h1>Register</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>

	            <label for="name">
                    <b>Name<br />
                </b></label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
		        <asp:RegularExpressionValidator ID="regName" runat="server" 
                   ControlToValidate="TextBox1" ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                   Text="Enter a valid name" ForeColor="Red" /> 
                <asp:RequiredFieldValidator runat="server" id="reqName" 
                    controltovalidate="TextBox1" errormessage="Enter your name!" ForeColor="Red" />
                     <label for="contact no" class="auto-style1">
                <b>
                <br />
                Contact No</b>
            </label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
	        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
                ControlToValidate="TextBox2" ErrorMessage="Enter only numbers"    
                ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator> 
                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" 
                    controltovalidate="TextBox2" errormessage="Enter your Contact No!" ForeColor="Red" />
            <br />
            &nbsp;<label for="email"><b>Email</b>
            </label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
	        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Enter valid Email Id"
                  ValidationGroup="vgSubmit" ControlToValidate="TextBox3"
                  CssClass="requiredFieldValidateStyle"
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" 
                    controltovalidate="TextBox3" errormessage="Enter your Email!" ForeColor="Red" />
                  <br />
                  <label for="address">
                <b>&nbsp;Address</b>
            </label>
             <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" 
                    controltovalidate="TextBox4" errormessage="Enter your Address!" ForeColor="Red" />
            <br />
                
                <label for="psw"><b>Password</b></label>
    <br />
                

    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                <asp:regularexpressionvalidator id="RegularExpressionValidator3" display="Dynamic" 
                errormessage="Password must be 8-10 characters long</br> with at least one numeric character."
                forecolor="Red" validationexpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" 
                controltovalidate="TextBox5" runat="server">
                </asp:regularexpressionvalidator>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" 
                    controltovalidate="TextBox5" errormessage="Enter your Password!" ForeColor="Red" />

	  
                <label for="psw-confirm">
                <b>
                <br />
                Confirm Password</b>
    </label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
	   <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Not match!" ForeColor="Red">
	   </asp:CompareValidator>
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" 
                    controltovalidate="TextBox6" errormessage="Enter your ConfirmPassword!" ForeColor="Red" />
        &nbsp;<br />
            <hr />  
             </div>
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
 
	    <p id="demo">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="1266px"
                BackColor="#4CAF50" Height="47px" Font-Bold="true" 
                OnClientClick = "return confirm('Registration Succcessful');" />
        </p>
	
  
  <%--<div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>--%>
</form>
        </body></html>
</asp:Content>
