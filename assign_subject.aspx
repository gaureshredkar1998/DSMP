<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="assign_subject.aspx.cs" Inherits="assign_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            top: 84px;
            left: 213px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 212px;
            left: 216px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 210px;
            left: 453px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 84px;
            left: 320px;
            z-index: 1;
        }
        .auto-style10 {
            width: 82px;
            height: 27px;
            position: absolute;
            top: 209px;
            left: 313px;
            z-index: 1;
        }
        .auto-style11 {
            width: 82px;
            height: 27px;
            position: absolute;
            top: 205px;
            left: 539px;
            z-index: 1;
        }
    .auto-style12 {
        position: absolute;
        top: 132px;
        left: 323px;
        z-index: 1;
    }
        .auto-style14 {
            position: absolute;
            top: 314px;
            left: 434px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 350px;
            left: 432px;
            z-index: 1;
            width: 65px;
            height: 22px;
        }
        .auto-style16 {
            position: absolute;
            top: 174px;
            left: 218px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 173px;
            left: 324px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="dept" runat="server" CssClass="auto-style5" Text="Department"></asp:Label>
    <asp:DropDownList ID="department" runat="server" CssClass="auto-style8" OnSelectedIndexChanged="deparment_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
    </asp:DropDownList>
    <asp:DropDownList ID="classlist" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style12" OnSelectedIndexChanged="classlist_SelectedIndexChanged">
</asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Text="Successful" CssClass="auto-style14"></asp:Label>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="Button" />
    <asp:Label ID="label2" runat="server" Text="Class"></asp:Label>
    <asp:Label ID="faculty" runat="server" CssClass="auto-style6" Text="Faculty"></asp:Label>
    <asp:Label ID="subject" runat="server" CssClass="auto-style7" Text="Subject"></asp:Label>
    <asp:CheckBoxList ID="faclist" runat="server" CssClass="auto-style10" OnSelectedIndexChanged="faclist_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
    </asp:CheckBoxList>
    <asp:CheckBoxList ID="sublist" runat="server" CssClass="auto-style11" OnSelectedIndexChanged="sublist_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True">
    </asp:CheckBoxList>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style16" Text="DIV"></asp:Label>
    <asp:DropDownList ID="divlist" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CssClass="auto-style17" OnSelectedIndexChanged="divlist_SelectedIndexChanged" style="height: 22px">
    </asp:DropDownList>
</asp:Content>

