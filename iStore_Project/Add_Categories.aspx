<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Categories.aspx.cs" Inherits="iStore_Project.Add_Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 771px;
        }
        .auto-style2 {
            width: 29px;
        }
        .auto-style3 {
            width: 29px;
            height: 130px;
        }
        .auto-style4 {
            width: 771px;
            height: 130px;
        }
        .auto-style11 {
            height: 32px;
        }
        .auto-style12 {
            width: 187px;
        }
        .auto-style13 {
            width: 29px;
            height: 26px;
        }
        .auto-style14 {
            width: 771px;
            height: 26px;
        }
        .auto-style16 {
            width: 8px;
        }
        .auto-style17 {
            width: 105%;
            height: 325px;
        }
        .auto-style18 {
            width: 122px;
        }
        .auto-style19 {
            width: 155px;
        }
        .auto-style20 {
            width: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Categories"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Add New Category"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="5"></td>
            <td class="auto-style4" rowspan="5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Category_id">
                    <Columns>
                        <asp:BoundField DataField="Category_id" HeaderText="ID" />
                        <asp:BoundField DataField="Category_Name" HeaderText="Name" />
                        <asp:ImageField DataImageUrlField="Category_Photo" HeaderText="Photo">
                            <ControlStyle Height="125px" Width="125px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Category_Description" HeaderText="Description" />
                        <asp:BoundField DataField="Category_Status" HeaderText="Status" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Category_id") %>' ForeColor="#3333CC" OnCommand="LinkButton1_Command">Edit</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Category_id") %>' ForeColor="#3333CC" OnCommand="LinkButton2_Command">Change Status</asp:LinkButton>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="721px">
                    <table class="auto-style17">
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Width="375px"></asp:TextBox>
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18" rowspan="2">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="120px" Width="145px" />
                            </td>
                            <td class="auto-style16" rowspan="2">&nbsp;</td>
                            <td rowspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:FileUpload ID="FileUpload2" runat="server" Width="198px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="375px"></asp:TextBox>
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Save Changes" Width="137px" />
                            </td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style12" rowspan="3">
                <asp:Panel ID="Panel2" runat="server" Width="640px">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Width="243px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Category Name" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Text="Choose a Photo"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="198px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*Choose a photo" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Description"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="246px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Category Description" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">
                                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Text="Category Status"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Unavailable</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="86px" />
                                <asp:Label ID="Label11" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style11" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td colspan="3" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td colspan="3" rowspan="4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
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
