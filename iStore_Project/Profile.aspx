<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="iStore_Project.Profile" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 27px;
            width: 108px;
        }
        .auto-style4 {
            width: 108px;
        }
    .auto-style5 {
        width: 1162px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Categories" Font-Italic="True"></asp:Label>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click">+ Add Bank Accounts</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5">
                    <ItemTemplate>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style4">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="199px" ImageAlign="Middle" ImageUrl='<%# Eval("Category_Photo") %>' Width="228px" CommandArgument='<%# Eval("Category_id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("Category_Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category_Description") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">+ Add Feedback</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
