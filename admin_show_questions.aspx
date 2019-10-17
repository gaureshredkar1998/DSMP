<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_show_questions.aspx.cs" Inherits="admin_show_questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style5 {
            width: 630px;
            height: 32px;
            position: relative;
            top: -18px;
            left: 19px;
            z-index: 1;
            margin-left: 179px;
        }
        .auto-style6 {
        width: 630px;
        height: 34px;
        position: relative;
        top: 89px;
        left: -159px;
        z-index: 1;
    }
    .auto-style7 {
        width: 97px;
        height: 27px;
        position: relative;
        top: 5px;
        left: 246px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style5">
    <asp:Panel ID="Panel2" runat="server" Height="34px" CssClass="auto-style6">
        <asp:Button ID="create_button" runat="server" CssClass="auto-style7" OnClick="create_button_Click" Text="CREATE" />
    </asp:Panel>
</asp:Panel>
    

</asp:Content>

