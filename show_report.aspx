<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="show_report.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            top: 134px;
            left: 523px;
            z-index: 1;
            width: 128px;
        }
        .auto-style7 {
            position: absolute;
            left: 328px;
            top: 174px;
            height: 63px;
            width: 733px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5" OnSelectedIndexChanged="dp1_selected_index_change">
        <asp:ListItem>dept wise</asp:ListItem>
        <asp:ListItem>class wise</asp:ListItem>
        <asp:ListItem>faculty wise</asp:ListItem>
    </asp:DropDownList>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style7">
    </asp:Panel>
</asp:Content>

