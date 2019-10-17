<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Start_Page_Project.aspx.cs" Inherits="StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Start_Page</title>
    <script type="text/javascript">

      function DisableBackButton() {
       window.history.forward()
      }
      DisableBackButton();
       window.onload = DisableBackButton;
       window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
        window.onunload = function() { void (0) }
     </script>
    <style type="text/css">

        .auto-style23 {
            font-size: xx-large;
            position: absolute;
            top: 180px;
            left: 53px;
            z-index: 1;
            color: #000000;
            width: 960px;
            background-color: #FFFFFF;
        }
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            width: 369px;
            text-align: center;
            height: 145px;
        }
        .auto-style26 {
            width: 400px;
            text-align: center;
            height: 145px;
        }
        .auto-style27 {
            text-align: center;
        }
        .auto-style28 {
            font-size: x-large;
            text-decoration: underline;
            color: #0066FF;
        }
        .auto-style31 {
            text-align: center;
            height: 145px;
        }
        .auto-style33 {
            font-size: x-large;
            color: #0066FF;
        }
        .auto-style34 {
            height: 107px;
            width: 1039px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style27">
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Text="Tatyasaheb Kore Institute of Engineering &amp; Technology,Warananagar"></asp:Label>
            </strong>
        </p>
        <p>
            <img alt="" class="auto-style34" src="clgphoto.jpg" /></p>
        <p>
            &nbsp;</p>
        <table class="auto-style24">
            <tr>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style26">
                    &nbsp;</td>
                <td class="auto-style31">
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style28" NavigateUrl="~/Faculty_feedback_form.aspx">Student Login</asp:HyperLink>
                </td>
                <td class="auto-style26">
                    <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style33" NavigateUrl="~/adminlogin.aspx">Admin Login</asp:HyperLink>
                </td>
                <td class="auto-style31">
                    <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style33" NavigateUrl="~/faculty_Login_page.aspx">Faculty Login </asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
