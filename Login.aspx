<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Div1" runat="server" style="margin-top:100px">
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
    <form action="javascript:void(0);" method="get">
        <fieldset>
           <p><asp:Label ID="lblUserName" Text="User Name" runat="server"></asp:Label></p>
            <p><asp:Textbox ID="txtUserName" runat="server"></asp:Textbox></p>          
            <p><asp:Label ID="lblPassword" Text="Password" runat="server" /></p>
            <p><asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox></p>
            <asp:TextBox runat="server" ID="txtauthenticity"></asp:TextBox>
            <p><a href="#">Forgot Password?</a></p>
            <p>
                <asp:Button type="submit" runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" />
            </p>
             <p><span class="btn-round">or</span></p>
        <p>
            <asp:Button type="submit" runat="server" Text="SignUp" ID="btnSignUp" OnClick="btnSignUp_Click"/>
        </p>
        </fieldset>
    </form>
       
        </div> <!-- end login -->

     </div>
</asp:Content>

