<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            width: 120px;
        }
        .auto-style9 {
            width: 120px;
        }
        .auto-style10 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1" >
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image1" runat="server" Height="158px" ImageUrl='<%# "Images/"+Eval("Image") %>' Width="100px" />
                        &nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style9">Name:</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("NAME") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Price:</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("PRICE") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Description</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("DESCRIPTION") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" OnClick="btnAddToCart_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

