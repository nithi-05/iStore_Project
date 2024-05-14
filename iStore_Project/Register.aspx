<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="iStore_Project.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 380px;
        }
        .auto-style5 {
            width: 156px;
            height: 34px;
        }
        .auto-style6 {
            width: 159px;
            height: 34px;
        }
        .auto-style7 {
            width: 380px;
            height: 54px;
        }
        .auto-style8 {
            width: 154px;
            height: 54px;
        }
        .auto-style9 {
            height: 54px;
        }
        .auto-style10 {
            height: 34px;
        }
    .auto-style11 {
        width: 380px;
        height: 27px;
    }
    .auto-style12 {
        width: 154px;
        height: 27px;
    }
    .auto-style13 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style10" colspan="2">
                &nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
            <td class="auto-style10" colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="User Registration"></asp:Label>
            </td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter age" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2"></td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox3" runat="server" Height="46px" TextMode="MultiLine" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="301px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a valid phone number" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style12">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox5" runat="server" Width="301px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="301px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="301px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="301px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="96px" />
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
