<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="iStore_Project.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 555px;
        }
        .auto-style2 {
            width: 35px;
        }
        .auto-style3 {
            height: 38px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            width: 619px;
        }
        .auto-style6 {
        height: 46px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style1"></td>
            <td colspan="2"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Products"></asp:Label>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <a href="Cart.aspx" class="btn btn-success">My Cart</a>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" rowspan="17">&nbsp;</td>
            <td class="auto-style1" rowspan="17">
                <asp:Image ID="Image1" runat="server" Height="493px" Width="517px" />
            </td>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ProductName"></asp:Label>
            </td>
            <td rowspan="17">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Price"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label5" runat="server" Text="Stock available"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style4"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button4_Click" Text="-" Width="35px" />
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Size="Small" Width="45px">1</asp:TextBox>
                <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button3_Click" Text="+" Width="35px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6">
                <asp:Button ID="Button1" runat="server" BackColor="Indigo" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Light" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Height="44px" Text="Add to Cart" Width="207px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="Button2" runat="server" BackColor="Indigo" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift Light" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Height="44px" Text="Continue" Width="207px" OnClick="Button2_Click" Visible="False" />
                </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"></td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style4"></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
