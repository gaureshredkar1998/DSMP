<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_class.aspx.cs" Inherits="admin_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        position: absolute;
        top: 62px;
        left: 587px;
        z-index: 1;
    }
    .auto-style6 {
        width: 812px;
        height: 73px;
        position: absolute;
        top: 110px;
        left: 228px;
        z-index: 1;
        margin-left: 0px;
    }
        .auto-style7 {
            width: 774px;
            position: absolute;
            top: 208px;
            left: 261px;
            z-index: 1;
            height: 46px;
        }
        .auto-style8 {
            position: absolute;
            top: 218px;
            left: 602px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7" >
    </asp:Panel>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" OnClick="Button1_Click" Text="Button" />
    <asp:Label ID="class_detail_label" runat="server" CssClass="auto-style5" Text="CLASS DETAILS"></asp:Label>
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
</asp:Panel>
</asp:Content>

