﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenuControl.ascx.cs" Inherits="LeftMenuControl" %>
<asp:DataList ID="dlMenu" runat="server" Width="250px">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Category.aspx?IDCA="+Eval("ID") %>' Text='<%# EVAL("NAME") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>