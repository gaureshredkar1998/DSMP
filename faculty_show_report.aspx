<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyMasterPage.master" AutoEventWireup="true" CodeFile="faculty_show_report.aspx.cs" Inherits="faculty_show_report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        position: absolute;
        left: 461px;
        top: 146px;
        z-index: 1;
        height: 35px;
        width: 147px;
    }
    .auto-style7 {
        position: absolute;
        top: 202px;
        left: 461px;
        z-index: 1;
        width: 145px;
        height: 35px;
    }
    .auto-style8 {
        position: absolute;
        top: 94px;
        left: 372px;
        z-index: 1;
    }
    .auto-style9 {
        position: absolute;
        top: 149px;
        left: 373px;
        z-index: 1;
    }
    .auto-style10 {
        position: absolute;
        top: 201px;
        left: 372px;
        z-index: 1;
        height: 20px;
    }
    .auto-style11 {
        position: absolute;
        top: 90px;
        left: 463px;
        z-index: 1;
        width: 145px;
        height: 35px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style11">
</asp:DropDownList>
<asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Select_Year"></asp:Label>
<asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Select_Sem"></asp:Label>
<asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text="Select_Type"></asp:Label>
<asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style7">
    <asp:ListItem>Semative</asp:ListItem>
    <asp:ListItem>Formative</asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style6">
    <asp:ListItem>Sem1</asp:ListItem>
    <asp:ListItem>Sem2</asp:ListItem>
    <asp:ListItem></asp:ListItem>
</asp:DropDownList>
</asp:Content>

