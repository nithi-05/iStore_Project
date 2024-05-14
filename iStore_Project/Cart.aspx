<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="iStore_Project.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 27px;
    }
    .auto-style2 {
        height: 27px;
        width: 61px;
    }
    .auto-style3 {
        height: 27px;
        width: 17px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Cart" Font-Italic="True"></asp:Label>
            </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cart_id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Cart_id" HeaderText="Cart ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product" />
                    <asp:ImageField DataImageUrlField="Product_Photo" HeaderText="Photo">
                        <ControlStyle Height="125px" Width="125px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Cart_Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Cart_Total" HeaderText="Total Price" />
                    <asp:CommandField DeleteText="Remove" EditText="Edit items" ShowEditButton="True">
                    <ControlStyle ForeColor="Blue" />
                    </asp:CommandField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Cart_id") %>' ForeColor="Red" OnCommand="LinkButton1_Command">Remove item</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Place Order" Width="143px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
