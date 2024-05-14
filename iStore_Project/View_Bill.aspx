<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Bill.aspx.cs" Inherits="iStore_Project.View_Bill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 67px;
    }
    .auto-style3 {
        width: 67px;
        height: 27px;
    }
    .auto-style5 {
        height: 27px;
    }
    .auto-style6 {
        width: 140px;
    }
    .auto-style7 {
        width: 140px;
        height: 27px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Bill No.:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td colspan="3">
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td colspan="4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Cart_Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                    <asp:BoundField DataField="Cart_Total" HeaderText="Total Amount" />
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style7"></td>
        <td class="auto-style5" colspan="2"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style7">
            <asp:Label ID="Label4" runat="server" Text="Account Number:"></asp:Label>
        </td>
        <td class="auto-style5" colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" Width="282px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="Label5" runat="server" Text="Grand Total:"></asp:Label>
        </td>
        <td colspan="2">
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Pay Now" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">
            <asp:Label ID="Label7" runat="server" Text="Status" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
