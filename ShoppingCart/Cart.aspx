﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="gvShoppingCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating">
        <Columns>
            <asp:BoundField DataField="NAME" HeaderText="Product Name" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="IMAGE" DataImageUrlFormatString="&quot;~\Images\{0}&quot;" HeaderText="Image" ReadOnly="True">
            </asp:ImageField>
            <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
            <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
            <asp:TemplateField HeaderText="Total">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("PRICE").ToString())*Int32.Parse(Eval("Quantity").ToString()) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>

