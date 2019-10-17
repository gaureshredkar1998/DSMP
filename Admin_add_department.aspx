<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin_add_department.aspx.cs" Inherits="Admin_add_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        position: absolute;
        top: 165px;
        left: 426px;
        z-index: 1;
    }
    .auto-style6 {
        position: absolute;
        top: 124px;
        left: 443px;
        z-index: 1;
    }
    .auto-style7 {
        position: absolute;
        top: 124px;
        left: 516px;
        z-index: 1;
    }
    .auto-style8 {
        height: 291px;
    }
    .auto-style9 {
        position: absolute;
        top: 164px;
        left: 517px;
        z-index: 1;
            width: 344px;
        }
    .auto-style10 {
        position: absolute;
        top: 57px;
        left: 551px;
        z-index: 1;
    }
    .auto-style11 {
        position: absolute;
        top: 285px;
        left: 533px;
        z-index: 1;
    }
    .auto-style14 {
        position: absolute;
        top: 126px;
        left: 700px;
        z-index: 1;
    }
    .auto-style15 {
        position: absolute;
        top: 166px;
        left: 883px;
        z-index: 1;
    }
    .auto-style16 {
        position: absolute;
        top: 205px;
        left: 436px;
        z-index: 1;
    }
    .auto-style17 {
        position: absolute;
        top: 200px;
        left: 520px;
        z-index: 1;
        width: 125px;
        height: 24px;
    }
        .auto-style18 {
            position: absolute;
            top: 248px;
            left: 497px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style8">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style18" Text="Department added successfully." Visible="False"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Dept Name:"></asp:Label>
        <asp:TextBox ID="dept_name_box" runat="server" CssClass="auto-style9"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text="Dept ID:"></asp:Label>
        <asp:TextBox ID="dept_id_box" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="deparment_label" runat="server" CssClass="auto-style10" Text="ADD DEPARTMENT"></asp:Label>
        <asp:Button ID="submit_btn" runat="server" CssClass="auto-style11" OnClick="submit_btn_Click" Text="SUBMIT" />
        <asp:Label ID="name_exists" runat="server" CssClass="auto-style15" ForeColor="Red" Text="Dept Name already Exists." Visible="False"></asp:Label>
        <asp:Label ID="id_exits" runat="server" CssClass="auto-style14" ForeColor="Red" Text="ID already exists." Visible="False"></asp:Label>
        <asp:Label ID="status_label" runat="server" CssClass="auto-style16" Text="STATUS:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style17">
            <asp:ListItem>valid</asp:ListItem>
            <asp:ListItem>deleted</asp:ListItem>
        </asp:DropDownList>
    </p>
    </asp:Content>

