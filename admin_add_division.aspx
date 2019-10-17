<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_add_division.aspx.cs" Inherits="admin_add_division" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            top: 105px;
            left: 556px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 159px;
            left: 441px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 198px;
            left: 419px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 158px;
            left: 528px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 199px;
            left: 526px;
            z-index: 1;
        }
        .auto-style11 {
            width: 372px;
            height: 45px;
            position: absolute;
            top: 273px;
            z-index: 1;
            left: 637px;
        }
        .auto-style12 {
            width: 215px;
            height: 19px;
            position: absolute;
            top: 349px;
            left: 549px;
            z-index: 1;
        }
        .auto-style13 {
            width: 237px;
            height: 19px;
            position: absolute;
            top: 299px;
            left: 341px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 237px;
            left: 529px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 236px;
            left: 438px;
            z-index: 1;
        }
        .auto-style16 {
            width: 82px;
            height: 27px;
            position: absolute;
            top: 281px;
            z-index: 1;
            left: 669px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
    </asp:Panel>
    <asp:Label ID="add_label" runat="server" CssClass="auto-style5" Font-Size="Larger" Text="ADD DIVISION"></asp:Label>
    <asp:Label ID="id_label" runat="server" CssClass="auto-style6" Text="DIV ID:"></asp:Label>
    <asp:TextBox ID="id_box" runat="server" CssClass="auto-style8" OnTextChanged="id_box_TextChanged"></asp:TextBox>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style14">
        <asp:ListItem>valid</asp:ListItem>
        <asp:ListItem>deleted</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text="STATUS:"></asp:Label>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style11">
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style12">
    </asp:Panel>
    <asp:Label ID="name_label" runat="server" CssClass="auto-style7" Text="DIV NAME:"></asp:Label>
    <asp:TextBox ID="name_box" runat="server" CssClass="auto-style9"></asp:TextBox>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="auto-style16">
    </asp:CheckBoxList>
</asp:Content>

