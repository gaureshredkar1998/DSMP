<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_add_option.aspx.cs" Inherits="admin_add_option" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            position: absolute;
            top: 165px;
            left: 273px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 166px;
            left: 371px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 166px;
            left: 568px;
            z-index: 1;
            bottom: 349px;
        }
        .auto-style23 {
            position: absolute;
            top: 165px;
            left: 646px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 162px;
            left: 827px;
            z-index: 1;
            height: 23px;
        }
        .auto-style26 {
            width: 510px;
            height: 52px;
            position: absolute;
            top: 217px;
            left: 283px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 228px;
            left: 835px;
            z-index: 1;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="opt_label" runat="server" CssClass="auto-style24" Text="Option:"></asp:Label>
        <asp:TextBox ID="optbox" runat="server" CssClass="auto-style22"></asp:TextBox>
    <asp:Label ID="val_label" runat="server" CssClass="auto-style25" Text="Value:"></asp:Label>
     

    <asp:TextBox ID="valuebox" runat="server" CssClass="auto-style23"></asp:TextBox>
        <asp:Button ID="add_opt_btn" runat="server" CssClass="auto-style20" OnClick="add_opt_btn_Click" Text="ADD" />
        <asp:CheckBoxList ID="opt_value_lst" runat="server" CssClass="auto-style26">
        </asp:CheckBoxList>
        <asp:Button ID="delete_btn" runat="server" CssClass="auto-style27" OnClick="delete_btn_Click" Text="DELETE" />
    <asp:Label ID="que_label" runat="server" Text="Label"></asp:Label>
</asp:Content>

