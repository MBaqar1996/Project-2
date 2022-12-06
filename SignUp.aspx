<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <div id="Div1" runat="server" style="margin-top:100px">
<div id="login">
<h1><strong>Register</strong></h1>
    <form action="javascript:void(0);" method="get">
        <fieldset>
            <asp:Label ID="lblMsg" Text="Registered Successfuly!" runat="server"></asp:Label>
            <p><asp:Label ID="lblUserName" Text="User Name" runat="server"></asp:Label></p>
            <p><asp:Textbox ID="txtUserName" runat="server"></asp:Textbox></p>          
            <p><asp:Label ID="lblPassword" Text="Password" runat="server" /></p>
            <p><asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></p>
            <p><asp:Label ID="lblEmail" Text="Email" runat="server" /></p>
            <p><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></p>
            <p><a href="#">Forgot Password?</a></p>
            <p><asp:Button type="submit" runat="server" Text="Sign Up" ID="btnSignUp" OnClick="btnSignUp_Click"/></p>
             <p><span class="btn-round">or</span></p>
            <p><asp:Button type="submit" runat="server" Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click"/></p>
        
        </fieldset>
    </form>
       
        </div> <!-- end login -->

     </div>
   
    </strong></asp:Content>

