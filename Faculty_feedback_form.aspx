<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_feedback_form.aspx.cs" Inherits="Faculty_feedback_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 173px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 65px;
            left: 677px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 65px;
            left: 141px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 66px;
            left: 250px;
            z-index: 1;
            width: 305px;
        }
        .auto-style5 {
            position: absolute;
            top: 63px;
            left: 729px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 109px;
            left: 251px;
            z-index: 1;
            height: 20px;
        }
        .auto-style7 {
            height: 147px;
        }
        .auto-style8 {
            width: 1054px;
            height: 127px;
            position: absolute;
            top: 165px;
            left: 173px;
            z-index: 1;
        }
        .auto-style9 {
            width: 1006px;
            height: 50px;
            position: absolute;
            top: 302px;
            left: 176px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 315px;
            left: 558px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style7">
    
        <asp:Label ID="facult_nm_label" runat="server" CssClass="auto-style3" Text="Faculty Name:"></asp:Label>
        <asp:Label ID="dt_label" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
        <asp:Label ID="subject_label" runat="server" CssClass="auto-style1" Text="Subject:"></asp:Label>
    
    </div>
        <asp:TextBox ID="subject_box" runat="server" CssClass="auto-style6"></asp:TextBox>
        <asp:TextBox ID="date_box" runat="server" CssClass="auto-style5"></asp:TextBox>
        <asp:TextBox ID="faculty_name_box" runat="server" CssClass="auto-style4"></asp:TextBox>
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8" Height="127px">
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style9">
        </asp:Panel>
        <asp:Button ID="next_btn" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="NEXT" />
    </form>
</body>
</html>
