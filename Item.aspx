<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div id="Div1" runat="server" style="margin-top:100px; margin-left:20px">
      <form action="javascript:void(0);" method="get">
           <div style="left:auto"><asp:Button runat="server" ID="btnSignOut" Text="Sign Out" BorderStyle="None" OnClick="btnSignOut_Click"></asp:Button></div>
         <div id="div_buttons" style="text-align:center; margin-bottom:10px;">
             <ul>
                 <li><asp:Button type="submit" runat="server" Text="DashBoard" ID="btnDashboard" Height="40px" Width="150px" OnClick="btnDashboard_Click"/></li>
                <li><asp:Button type="submit" runat="server" Text="Item" ID="btnItem" Height="40px" Width="150px" OnClick="btnItem_Click"/></li>
                <li><asp:Button type="submit" runat="server" Text="Order" ID="btnSupplier" Height="40px" Width="150px" OnClick="btnSupplier_Click"/></li>               
              </ul>
              <div style="text-align:center; margin-bottom:10px;">
               <asp:Label runat="server" Text="Item Registeration"></asp:Label>    

              </div>
             <table style="width:50%; flex-align:center;" border="0" align="center">
                
                  <tr style="text-align:center;">
                        <td style="width:12%"> <asp:Label ID="Label1" Width="100px" runat="server" Text="Item Code"></asp:Label></td>                       
                        <td style="margin-left:auto; width:10%;"><asp:TextBox ID="txtItmC" runat="server"></asp:TextBox></td>
                        <td style="margin-left:auto; width:12%;"><asp:Label ID="Label4" runat="server" Text="Item"></asp:Label> </td>
                        <td style="margin-left:auto; width:10%"><asp:TextBox ID="txtItem"   runat="server"></asp:TextBox></td>
                        <td style="margin-left:auto; width:12%;"><asp:Label ID="Label8" runat="server" Text="Generic"></asp:Label> </td>
                        <td style="margin-left:auto; width:10%"><asp:TextBox ID="txtGeneric"  runat="server"></asp:TextBox></td>
                    </tr>
                    <tr style="text-align:center;">
                        <td style="width:12%"><asp:Label ID="Label5" CssClass="label" runat="server" Text="Category"></asp:Label></td>
                       <td style="margin-left:auto; width:10%;"> <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox></td>
                        <td style="margin-left:auto; width:12%;"> <asp:Label ID="Label6" CssClass="label" runat="server" Text="Company"></asp:Label></td>
                        <td style="margin-left:auto; width:10%;"> <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox> </td>
                        <td style="margin-left:auto; width:12%;"><asp:Label ID="Label12" runat="server" Text="Item Date"></asp:Label> </td>
                        <td style="margin-left:auto; width:10%"><asp:TextBox ID="txtDate"  runat="server" type="date"></asp:TextBox></td>
                     </tr>
                 <tr style="text-align:center;">
                        <td style="width:12%"><asp:Label ID="Label3" CssClass="label" runat="server" Text="Price"></asp:Label></td>
                       <td style="margin-left:auto; width:10%;"> <asp:TextBox ID="txtPurchaseP" runat="server"></asp:TextBox></td>
                     </tr>
                 
              </table>
         
                <div id="submitbutton" style="margin-top:10px;">
                                    <asp:Button type="submit" runat="server" Text="Search" ID="btnSearch" Height="30px" Width="120px" BackColor="#0dc3ff" OnClick="btnSearch_Click"/>
                <asp:Button type="submit" runat="server" Text="New" ID="btnNew" Height="30px" Width="120px" BackColor="#0dc3ff" OnClick="btnNew_Click"/>
                <asp:Button type="submit" runat="server" Text="Save" ID="btnSave" Height="30px" Width="120px" BackColor="#0dc3ff" OnClick="btnSave_Click"/>            
                </div>
             
             <div id="Gride" class="Div1" style="margin-top:10px;">

                 <asp:GridView ID="dgvItem" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                 
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
            </div>

      </form>
  </div>        
      

</asp:Content>

