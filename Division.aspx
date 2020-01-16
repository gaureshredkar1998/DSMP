<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Division.aspx.cs" Inherits="Division" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            left: 596px;
            top: 224px;
            z-index: 1;
        }
        .auto-style9 {
            height: 53px;
        }
        .auto-style10 {
            height: 43px;
        }
        .auto-style11 {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <table style="width:100%;">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style11"></td>
            </tr>
        </table>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click1" CssClass="auto-style5" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </asp:Panel>
</asp:Content>

