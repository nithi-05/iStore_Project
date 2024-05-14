<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master_Page.Master" AutoEventWireup="true" CodeBehind="View_Products.aspx.cs" Inherits="iStore_Project.View_Products" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            width: 100%;
            height: 276px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 29px;
        }
        .auto-style5 {
            height: 20px;
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
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Products" Font-Italic="True"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" CellSpacing="3">
                    <ItemTemplate>
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style4">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="199px" ImageAlign="Middle" ImageUrl='<%# Eval("Product_Photo") %>' Width="228px" CommandArgument='<%# Eval("Product_id") %>' OnCommand="ImageButton1_Command" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text='<%# Eval("Product_Stock").ToString()=="0" ? "Out of Stock" :"Only "+Eval("Product_Stock")+" left" %>' ForeColor='<%# Eval("Product_Stock").ToString()=="0" ? System.Drawing.Color.Red:System.Drawing.Color.DimGray %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text='<%# Eval("Product_Details") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="Medium" Text='<%# Eval("Product_Price")+"/-" %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
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
