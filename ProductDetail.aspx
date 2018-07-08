<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 130px;
        }
        .auto-style5 {
            height: 130px;
            width: 115px;
        }
        .auto-style7 {
            width: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlProduct" runat="server"  RepeatColumns="1">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" Height="105px" ImageUrl='<%# "Images/"+Eval("IMAGE") %>' Width="106px" />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">Name:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Price:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Description:</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
