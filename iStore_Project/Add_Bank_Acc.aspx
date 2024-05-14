<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Bank_Acc.aspx.cs" Inherits="iStore_Project.Add_Bank_Acc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 27px;
    }
    .auto-style4 {
        width: 166px;
    }
    .auto-style5 {
        height: 27px;
        width: 166px;
    }
    .auto-style6 {
        width: 149px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
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
        <td class="auto-style5"></td>
        <td class="auto-style1" colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Add Bank Details"></asp:Label>
            </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text="Account Number:"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="289px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">
                <asp:Label ID="Label11" runat="server" Text="Account Type"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="289px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">
                <asp:Label ID="Label12" runat="server" Text="Balance Amount:"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="289px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Bank Account" />
                <asp:Label ID="Label13" runat="server" Text="Status" Visible="False"></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click" Visible="False">Go to Home</asp:LinkButton>
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
        <td colspan="2">
            <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue" OnClick="LinkButton2_Click">View Linked Accounts</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">
                <asp:Label ID="Label14" runat="server" Text="Status" Visible="False"></asp:Label>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Acc_No" HeaderText="Account Number" />
                    <asp:BoundField DataField="Acc_Type" HeaderText="Account Type" />
                    <asp:BoundField DataField="Balance_Amount" HeaderText="Balance Amount" />
                </Columns>
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
