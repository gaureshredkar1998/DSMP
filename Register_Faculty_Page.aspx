<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_Faculty_Page.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
            background-color: #00FFFF;
        }
        .auto-style5 {
            width: 324px;
            height: 42px;
        }
        .auto-style6 {
            width: 324px;
            text-align: center;
        }
        .auto-style7 {
            text-align: right;
            width: 380px;
            height: 26px;
        }
        .auto-style8 {
            width: 324px;
            text-align: center;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            color: #FF0000;
        }
        .auto-style11 {
            position: absolute;
            top: 668px;
            left: 449px;
            z-index: 1;
            width: 74px;
            right: 551px;
        }
        .auto-style13 {
            width: 324px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
            text-align: left;
        }
        .auto-style15 {
            position: absolute;
            top: 0px;
            left: 0px;
            z-index: 1;
            right: 1074px;
        }
        .auto-style16 {
            text-align: right;
            width: 380px;
            height: 42px;
        }
        .auto-style17 {
            width: 324px;
            text-align: center;
            height: 42px;
        }
        .auto-style18 {
            height: 42px;
            text-align: left;
        }
        .auto-style19 {
            width: 380px;
            text-align: right;
        }
        .auto-style20 {
            width: 380px;
            height: 23px;
            text-align: right;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style22 {
            height: 74px;
            width: 308px;
            text-align: center;
            margin-left: 360px;
        }
        .auto-style23 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <p class="auto-style22">
            <strong><span class="auto-style23">Create New Account</span></strong></p>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style19">Faculty ID </td>
                <td class="auto-style6">
                    <asp:TextBox ID="fac_id" runat="server" Width="250px" OnTextChanged="fac_id_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fac_id" CssClass="auto-style10" ErrorMessage="Faculty ID required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">First Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="f_name" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="f_name" CssClass="auto-style10" ErrorMessage="First name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Middle Name</td>
                <td class="auto-style8">
                    <asp:TextBox ID="m_name" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="m_name" CssClass="auto-style10" ErrorMessage="Middle name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Last Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="l_name" runat="server" Width="250px" OnTextChanged="l_name_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="l_name" CssClass="auto-style10" ErrorMessage="Last name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Department ID</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="dept" runat="server" Height="24px" OnSelectedIndexChanged="dept_SelectedIndexChanged" Width="252px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dept" CssClass="auto-style10" ErrorMessage="Department ID required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Status</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="statuslist" runat="server" Width="250px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Presently working</asp:ListItem>
                        <asp:ListItem>Not working</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="statuslist" CssClass="auto-style10" ErrorMessage="Please select any status"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Nickname1</td>
                <td class="auto-style6">
                    <asp:TextBox ID="nickname1" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="nickname1" CssClass="auto-style10" ErrorMessage="Nick name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Nickname2</td>
                <td class="auto-style6">
                    <asp:TextBox ID="nickname2" runat="server" Width="250px" OnTextChanged="nickname2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="nickname2" CssClass="auto-style10" ErrorMessage="Nick name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Nickname3</td>
                <td class="auto-style6">
                    <asp:TextBox ID="nickname3" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="nickname3" CssClass="auto-style10" ErrorMessage="Nick name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Nickname4</td>
                <td class="auto-style6">
                    <asp:TextBox ID="nickname4" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="nickname4" CssClass="auto-style10" ErrorMessage="Nick name required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style19">E-mail</td>
                <td class="auto-style6">
                    <asp:TextBox ID="email" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" CssClass="auto-style10" ErrorMessage="Enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br class="auto-style10" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="email" CssClass="auto-style10" ErrorMessage="Enter email ID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Password </td>
                <td class="auto-style6">
                    <asp:TextBox ID="password" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="password" CssClass="auto-style10" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Confirm Password</td>
                <td class="auto-style17">
                    <asp:TextBox ID="rpassword" runat="server" TextMode="Password" Width="250px" OnTextChanged="rpassword_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="rpassword" CssClass="auto-style10" ErrorMessage="Enter confirmed password"></asp:RequiredFieldValidator>
                    <br class="auto-style10" />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="rpassword" CssClass="auto-style10" ErrorMessage="Both password must match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style5" id="submit">
                    <asp:Label ID="warn_label" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style18">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="Submit" OnClick="Button1_Click" />
                    <input id="Reset1" class="auto-style15" type="reset" value="reset" /></td>
                <td class="auto-style14">
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
