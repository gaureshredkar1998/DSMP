<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_add_batch.aspx.cs" Inherits="admin_add_batch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            position: absolute;
            top: 120px;
            left: 421px;
            z-index: 1;
        }
        .auto-style9 {
            width: 848px;
            height: 19px;
            position: absolute;
            top: 237px;
            left: 213px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 158px;
            left: 518px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 160px;
            left: 433px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 197px;
            left: 490px;
            z-index: 1;
        }
    .auto-style13 {
        position: absolute;
        top: 125px;
        left: 521px;
        z-index: 1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="BATCH ID:"></asp:Label>
    
    <asp:Label ID="Label4" runat="server" CssClass="auto-style12" Text="Batch added successfully."></asp:Label>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style9">
    </asp:Panel>
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10">
        <asp:ListItem>valid</asp:ListItem>
        <asp:ListItem>deleted</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text="STATUS:"></asp:Label>
<asp:TextBox ID="id_box" runat="server" CssClass="auto-style13"></asp:TextBox>
</asp:Content>

