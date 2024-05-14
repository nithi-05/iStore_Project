<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Feedback.aspx.cs" Inherits="iStore_Project.View_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 97px;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style4 {
            width: 122px;
        }
        .auto-style5 {
            height: 97px;
            width: 122px;
        }
        .auto-style6 {
            height: 27px;
        }
        .auto-style7 {
            width: 145px;
        }
        .auto-style8 {
            height: 27px;
            width: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Feedback"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="User_id" HeaderText="User ID" />
                        <asp:BoundField DataField="fb_Msg" HeaderText="Feedback" />
                        <asp:BoundField DataField="Reply" HeaderText="Reply" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("fb_id") %>' ForeColor="Blue" OnCommand="LinkButton1_Command">Reply</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">
                <asp:Panel ID="Panel1" runat="server" Height="229px" Visible="False" Width="836px">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label11" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style8">
                                <asp:Label ID="Label12" runat="server" Text="Subject"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:Label ID="Label16" runat="server" Text="Response to Feedback"></asp:Label>
                            </td>
                            <td class="auto-style6"></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label13" runat="server" Text="Reply Message"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="267px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter the Reply Message" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Label ID="Label14" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
