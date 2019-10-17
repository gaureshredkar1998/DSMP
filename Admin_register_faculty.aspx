<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin_register_faculty.aspx.cs" Inherits="Admin_register_faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        height: 28px;
    }
    .auto-style10 {
        height: 30px;
    }
    .auto-style11 {
        height: 29px;
    }
    .auto-style12 {
        height: 23px;
    }
    .auto-style13 {
        position: absolute;
        top: 144px;
        left: 543px;
        z-index: 1;
        width: 145px;
        height: 25px;
    }
    .auto-style15 {
        position: absolute;
        top: 97px;
        left: 424px;
        z-index: 1;
    }
    .auto-style16 {
        position: absolute;
        top: 150px;
        left: 431px;
        z-index: 1;
    }
    .auto-style17 {
        position: absolute;
        top: 205px;
        left: 423px;
        z-index: 1;
        height: 21px;
    }
    .auto-style18 {
        position: absolute;
        top: 252px;
        left: 577px;
        z-index: 1;
    }
        .auto-style19 {
            position: absolute;
            top: 94px;
            left: 542px;
            z-index: 1;
            height: 23px;
            width: 148px;
        }
        .auto-style20 {
            position: absolute;
            top: 202px;
            left: 546px;
            z-index: 1;
            width: 142px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style8">
    <asp:TextBox ID="fac_id" runat="server" CssClass="auto-style19"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
<p class="auto-style11">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style16" Text="Password:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style15" Text="Faculty ID:"></asp:Label>
</p>
<p class="auto-style12">
    &nbsp;</p>
<p class="auto-style8">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style17" Text="Department:"></asp:Label>
    <asp:DropDownList ID="dept" runat="server" CssClass="auto-style20" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
</p>
<p class="auto-style10">
    &nbsp;&nbsp;&nbsp;<asp:TextBox ID="pass" runat="server" CssClass="auto-style13"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" OnClick="Button1_Click" Text="SUBMIT" />
</p>
<p>
</p>
<p>
</p>
</asp:Content>

