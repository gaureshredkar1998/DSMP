<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="admin_create_feedback.aspx.cs" Inherits="admin_create_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 85%;
            height: 176px;
            position: absolute;
            top: 75px;
            left: 203px;
            z-index: 1;
            margin-bottom: 86px;
        }
        .auto-style17 {
        width: 602px;
        height: 111px;
    }
    .auto-style18 {
        width: 602px;
        height: 27px;
    }
    .auto-style19 {
        position: absolute;
        top: 117px;
        left: 310px;
        z-index: 1;
            height: 26px;
        }
    .auto-style23 {
        width: 371px;
        height: 40px;
    }
    .auto-style24 {
        position: absolute;
        top: 118px;
        left: 132px;
        z-index: 1;
            height: 21px;
            width: 136px;
        }
    .auto-style25 {
        width: 602px;
        height: 50px;
    }
    .auto-style29 {
        position: absolute;
        top: 164px;
        left: 132px;
        z-index: 1;
            width: 135px;
        height: 22px;
    }
    .auto-style30 {
        position: absolute;
        top: 165px;
        left: 311px;
        z-index: 1;
    }
    .auto-style34 {
        position: absolute;
        top: 167px;
        left: 49px;
        z-index: 1;
    }
        .auto-style36 {
            position: absolute;
            top: 241px;
            left: 187px;
            z-index: 1;
        }
    .auto-style37 {
        position: absolute;
        top: 67px;
        left: 137px;
        z-index: 1;
        width: 136px;
        height: 26px;
    }
    .auto-style39 {
        width: 602px;
        height: 57px;
    }
    .auto-style40 {
        margin-left: 0px;
    }
    .auto-style41 {
        width: 602px;
        height: 48px;
    }
    .auto-style42 {
        position: absolute;
        top: 118px;
        left: 40px;
        z-index: 1;
    }
    .auto-style43 {
        position: absolute;
        top: 66px;
        left: 5px;
        z-index: 1;
    }
    .auto-style45 {
        width: 285px;
        height: 47px;
    }
    .auto-style46 {
            width: 285px;
            height: 156px;
        }
        .auto-style47 {
            width: 371px;
            height: 48px;
        }
        .auto-style48 {
            width: 371px;
            height: 50px;
        }
        .auto-style49 {
            width: 371px;
            height: 111px;
        }
        .auto-style50 {
            width: 371px;
            height: 27px;
        }
        .auto-style51 {
            position: relative;
            left: 3px;
            top: -1px;
            margin-right: 0px;
        }
        .auto-style52 {
            width: 602px;
            height: 47px;
        }
        .auto-style53 {
            width: 602px;
            height: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style41">Select Feedback:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style40" Height="25px" Width="134px">
                    <asp:ListItem>semative</asp:ListItem>
                    <asp:ListItem>formative</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style37" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" EnableViewState="False">
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style47">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style39">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="start_date_txt" runat="server" CssClass="auto-style24" OnTextChanged="TextBox1_TextChanged" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style43" Text="Select Semester:"></asp:Label>
            </td>
            <td class="auto-style23" rowspan="3">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" CssClass="auto-style51" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged1">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style52">
                <asp:Button ID="start_date" runat="server" CssClass="auto-style19" OnClick="start_button_Click" Text="set" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style34" Text="End Date:"></asp:Label>
                <asp:TextBox ID="end_date_txt" runat="server" CssClass="auto-style29" OnTextChanged="TextBox2_TextChanged1" ReadOnly="True"></asp:TextBox>
                <asp:Button ID="end_date" runat="server" CssClass="auto-style30" OnClick="end_button_Click" Text="set" />
                <asp:Label ID="Label2" runat="server" Text="Start Date:" CssClass="auto-style42"></asp:Label>
            </td>
            <td class="auto-style45">
            </td>
        </tr>
        <tr>
            <td class="auto-style53"></td>
            <td class="auto-style46"></td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style36" OnClick="Button1_Click" Text="Submit" style="height: 26px" />
            </td>
            <td class="auto-style48">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style49">
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style50">&nbsp;</td>
        </tr>
    </table>
</asp:Content>


