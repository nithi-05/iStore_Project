<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Admin_Registration.aspx.cs" Inherits="iStore_Project.Admin_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
            width: 155px;
        }
        .auto-style4 {
            width: 323px;
        }
        .auto-style5 {
            height: 27px;
            width: 323px;
        }
        .auto-style6 {
            width: 155px;
        }
        .auto-style7 {
            height: 45px;
            width: 323px;
        }
        .auto-style8 {
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td colspan="2" class="auto-style8">
                </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Admin Registration"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="352px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="352px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter age" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server" Height="43px" TextMode="MultiLine" Width="352px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox5" runat="server" Width="352px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter a valid phone number" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="352px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="352px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="352px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="352px" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Password mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="75px" />
                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
