<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Div1" runat="server" style="margin-top:70px; margin-left:20px">      
      <form action="javascript:void(0);" method="get">
           <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>

          <div style="left:auto"><asp:Label runat="server" ID="lblloginSession"></asp:Label></div>
          <div style="left:auto"><asp:Label runat="server" ID="lblAuthenticiy"></asp:Label></div>
          <div style="left:auto"><asp:Button runat="server" ID="btnSignOut" Text="Sign Out" OnClick="btnSignOut_Click" BorderStyle="None"></asp:Button></div>
          <div id="div_buttons" style="text-align:center; margin-bottom:10px;">
             <ul>
                 <li><asp:Button type="submit" runat="server" Text="DashBoard" ID="btnDashboard" Height="40px" Width="150px" OnClick="btnDashboard_Click"/></li>
                <li><asp:Button type="submit" runat="server" Text="Item" ID="btnItem" Height="40px" Width="150px" OnClick="btnItem_Click"/></li>
                <li><asp:Button type="submit" runat="server" Text="Order" ID="btnPurchase" Height="40px" Width="150px" OnClick="btnPurchase_Click" /></li>              
              </ul>
            </div>
            <div style="text-align:center; margin-bottom:10px;">
               <asp:Label ID="lblUserRegistration" runat="server" Text="User Registeration"></asp:Label>    

              </div>
             <table style="width:50%; flex-align:center;" border="0" align="center">
                
                  <tr style="text-align:center;">
                        <td style="width:12%"> <asp:Label ID="lblUserN" Width="100px" runat="server" Text="User Name"></asp:Label></td>                       
                        <td style="margin-left:auto; width:10%;"><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                        <td style="margin-left:auto; width:12%;"><asp:Label ID="lblpswd" runat="server" Text="Password"></asp:Label> </td>
                        <td style="margin-left:auto; width:10%"><asp:TextBox ID="txtPassword"   runat="server"></asp:TextBox></td>
                    </tr>     
                 <tr style="text-align:center;">
                        <td style="width:12%"> <asp:Label ID="lblAuthentication" Width="100px" runat="server" Text="User Authentication"></asp:Label></td>                       
                        <td style="margin-left:auto; width:10%;"><asp:DropDownList ID="ddbxAuthenticity" runat="server" Width="149px">
                            <asp:ListItem>Client</asp:ListItem>
                            <asp:ListItem>SaleMan</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            </asp:DropDownList></td>
                        <td style="margin-left:auto; width:12%;"><asp:Label ID="lblEmail" runat="server" Text="E-Mail"></asp:Label> </td>
                        <td style="margin-left:auto; width:10%"><asp:TextBox ID="txtEmail"  runat="server"></asp:TextBox></td>
                    </tr>  
                 <tr>
                     <td style="margin-left:auto; width:12%;"><asp:Label ID="lblUserExist" runat="server" Text="User Already Exist Please Enter Unique"></asp:Label> </td>
                 </tr>                                                                
              </table>
           <div id="submitbutton" style="margin-top:10px; text-align:center;">
                <asp:Button type="submit" runat="server" Text="New" ID="btnNew" Height="30px" Width="120px" BackColor="#0dc3ff" OnClick="btnNew_Click"/>
                <asp:Button type="submit" runat="server" Text="Save" ID="btnSave" Height="30px" Width="120px" BackColor="#0dc3ff" OnClick="btnSave_Click"/>            
                </div>
          <div id="Gride" class="Div1" style="margin-left:auto; margin-right:auto; margin-top:10px;">
              <asp:GridView ID="dgvUserList" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">                 
                  <FooterStyle BackColor="White" ForeColor="#000066" />
                  <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                  <RowStyle ForeColor="#000066" />
                  <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                  <SortedAscendingCellStyle BackColor="#F1F1F1" />
                  <SortedAscendingHeaderStyle BackColor="#007DBB" />
                  <SortedDescendingCellStyle BackColor="#CAC9C9" />
                  <SortedDescendingHeaderStyle BackColor="#00547E" />
              </asp:GridView>
          </div>
                  
              </ContentTemplate>

          </asp:UpdatePanel>
      </form>
  </div>               
</asp:Content>

