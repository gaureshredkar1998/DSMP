<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyMasterPage.master" AutoEventWireup="true" CodeFile="Faculty_Home.aspx.cs" Inherits="Faculty_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 44px;
        height: 95px;
        position: absolute;
        top: 53px;
        left: 10px;
    }
    .auto-style2 {
        height: 105px;
        width: 771px;
        position: absolute;
        top: 49px;
        left: 159px;
        z-index: 1;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
</p>
<asp:Menu ID="Menu1" runat="server" CssClass="auto-style1" style="z-index: 1">
    <Items>
        <asp:MenuItem NavigateUrl="~/faculty_show_report.aspx" Text="SHOW REPORT" Value="SHOW REPORT"></asp:MenuItem>
    </Items>
</asp:Menu>
</asp:Content>

