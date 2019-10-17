<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_division.aspx.cs" Inherits="admin_division" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        position: absolute;
        top: 121px;
        left: 551px;
        z-index: 1;
    }
    .auto-style6 {
        width: 746px;
        height: 19px;
        position: absolute;
        top: 237px;
        left: 315px;
        z-index: 1;
    }
        .auto-style7 {
            position: absolute;
            top: 168px;
            left: 316px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" OnClick="next_click" Text="ADD" />
    <asp:Label ID="division_label" runat="server" CssClass="auto-style5" Font-Size="Larger" Text="DIVISION"></asp:Label>
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
</asp:Panel>
</asp:Content>

