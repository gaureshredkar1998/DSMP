<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_add_class.aspx.cs" Inherits="admin_add_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        position: absolute;
        top: 216px;
        left: 341px;
        z-index: 1;
    }
    .auto-style6 {
        position: absolute;
        top: 177px;
        left: 325px;
        z-index: 1;
    }
    .auto-style9 {
        position: absolute;
        top: 177px;
        left: 388px;
        z-index: 1;
    }
    .auto-style10 {
        position: absolute;
        top: 212px;
        left: 388px;
        z-index: 1;
    }
    .auto-style12 {
        width: 654px;
        height: 95px;
        position: absolute;
        top: 310px;
        left: 240px;
        z-index: 1;
    }
    .auto-style13 {
        position: absolute;
        top: 256px;
        left: 389px;
        z-index: 1;
        right: 614px;
        height: 16px;
    }
    .auto-style14 {
        position: absolute;
        top: 258px;
        left: 338px;
        z-index: 1;
    }
    .auto-style15 {
        position: absolute;
        top: 179px;
        left: 557px;
        z-index: 1;
    }
    .auto-style16 {
        position: absolute;
        top: 109px;
        left: 411px;
        z-index: 1;
        height: 36px;
        width: 162px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Font-Size="X-Large" Text="ADD CLASS"></asp:Label>
<asp:Label ID="Label5" runat="server" CssClass="auto-style15" ForeColor="Red" Text="Class ID exists."></asp:Label>
<asp:DropDownList ID="status_list" runat="server" CssClass="auto-style13">
    <asp:ListItem>valid</asp:ListItem>
    <asp:ListItem>deleted</asp:ListItem>
</asp:DropDownList>
<asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="Status:"></asp:Label>
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style12">
</asp:Panel>
<asp:TextBox ID="class_box" runat="server" CssClass="auto-style10"></asp:TextBox>
<asp:TextBox ID="class_id_box" runat="server" CssClass="auto-style9"></asp:TextBox>
<asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Class ID:"></asp:Label>
<asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Class:"></asp:Label>
</asp:Content>

