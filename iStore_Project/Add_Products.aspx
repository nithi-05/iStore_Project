<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="Add_Products.aspx.cs" Inherits="iStore_Project.Add_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            width: 53px;
        }
        .auto-style3 {
            height: 27px;
            width: 53px;
        }
        .auto-style4 {
            width: 711px;
        }
        .auto-style5 {
            height: 27px;
            width: 821px;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            height: 27px;
            width: 156px;
        }
        .auto-style8 {
            width: 821px;
        }
        .auto-style9 {
            width: 145px;
        }
        .auto-style10 {
            width: 330px;
        }
        .auto-style11 {
            width: 145px;
            height: 27px;
        }
        .auto-style12 {
            width: 330px;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Products"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Text="Add Products"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3" rowspan="6"></td>
            <td class="auto-style8" rowspan="12">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Product_id" HeaderText="ID" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
                        <asp:BoundField DataField="Product_Details" HeaderText="Product Details" />
                        <asp:ImageField DataImageUrlField="Product_Photo" HeaderText="Photo">
                            <ControlStyle Height="125px" Width="120px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Product_Price" HeaderText="Price" />
                        <asp:BoundField DataField="Product_Stock" HeaderText="Stock" />
                        <asp:BoundField DataField="Product_Status" HeaderText="Status" />
                        <asp:BoundField DataField="Category_Name" HeaderText="Category" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table class="w-100">
                                    <tr>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Product_id") %>' ForeColor="#0000CC" OnCommand="LinkButton1_Command">Edit</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" ForeColor="#CC0000">Delete</asp:LinkButton>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Product_id") %>' ForeColor="#0000CC" OnCommand="LinkButton3_Command">Change Status</asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="w-100">
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Name"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox5" runat="server" Width="244px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Details"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox6" runat="server" Height="47px" TextMode="MultiLine" Width="244px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Photo"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:Image ID="Image1" runat="server" Height="99px" Width="113px" />
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Price"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:TextBox ID="TextBox7" runat="server" Width="244px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Stock"></asp:Label>
                            </td>
                            <td class="auto-style12">
                                <asp:TextBox ID="TextBox8" runat="server" Width="244px"></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Category"></asp:Label>
                            </td>
                            <td class="auto-style10">
                                <asp:DropDownList ID="DropDownList4" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">
                                <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Save Changes" Width="149px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style6">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Name"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Details"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Height="47px" TextMode="MultiLine" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Enter Product Details" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Photo"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*Add Product Photo" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Price"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Enter Product Price" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Stock"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server" Width="244px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Enter Product Stock" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Status"></asp:Label>
                            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Available</asp:ListItem>
                    <asp:ListItem>Unavailable</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Product Status hasn't chosen" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Text="Product Category"></asp:Label>
                            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*Product Category hasn't chosen" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style7"></td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" Width="145px" />
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        </table>
    <p>
    </p>
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
