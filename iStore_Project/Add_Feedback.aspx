<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Feedback.aspx.cs" Inherits="iStore_Project.Add_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 97px;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            height: 97px;
            width: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Feedback"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Enter your feedback:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="325px"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
