<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback_form.aspx.cs" Inherits="feedback_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback_Form</title>
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

        .auto-style25 {
            text-align: left;
            width: 1274px;
            height: 1774px;
            position: absolute;
            top: 33px;
            left: 6px;
            z-index: 1;
        }
        .auto-style23 {
            font-size: large;
            position: absolute;
            top: 16px;
            left: 195px;
            z-index: 1;
        }
        .auto-style24 {
            font-size: medium;
            position: absolute;
            top: 54px;
            left: 269px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 99px;
            left: 51px;
            z-index: 1;
        }
        .auto-style1 {
            position: absolute;
            top: 100px;
            left: 196px;
            z-index: 1;
            width: 325px;
            }
        .auto-style40 {
            position: absolute;
            top: 100px;
            left: 662px;
            z-index: 1;
            width: 80px;
        }
        .auto-style50 {
            position: absolute;
            top: 2079px;
            left: 402px;
            z-index: 1;
        }
        .auto-style30 {
            position: absolute;
            left: 133px;
            z-index: 1;
            top: 164px;
        }
        .auto-style32 {
            position: absolute;
            top: 100px;
            left: 613px;
            z-index: 1;
        }
        .auto-style39 {
            position: absolute;
            top: 160px;
            left: 196px;
            z-index: 1;
            margin-top: 1px;
        }
        .auto-style4 {
            width: 100%;
            height: 1221px;
            position: absolute;
            top: 396px;
            left: -2px;
            z-index: 1;
        }
        .auto-style5 {
            width: 29px;
        }
        .auto-style6 {
            width: 449px;
        }
        .auto-style7 {
            width: 29px;
            height: 116px;
        }
        .auto-style8 {
            width: 449px;
            height: 116px;
        }
        .auto-style10 {
            margin-top: 0px;
        }
        .auto-style9 {
            height: 116px;
        }
        .auto-style11 {
            width: 29px;
            height: 132px;
        }
        .auto-style12 {
            width: 449px;
            height: 132px;
        }
        .auto-style13 {
            height: 132px;
        }
        .auto-style14 {
            width: 29px;
            height: 101px;
        }
        .auto-style15 {
            width: 449px;
            height: 101px;
        }
        .auto-style16 {
            height: 101px;
        }
        .auto-style17 {
            width: 29px;
            height: 85px;
        }
        .auto-style18 {
            width: 449px;
            height: 85px;
        }
        .auto-style19 {
            height: 85px;
        }
        .auto-style20 {
            width: 29px;
            height: 23px;
        }
        .auto-style21 {
            width: 449px;
            height: 23px;
        }
        .auto-style22 {
            height: 23px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style36 {
            position: absolute;
            top: 1827px;
            left: 5px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 1865px;
            left: 2px;
            z-index: 1;
        }
        .auto-style41 {
            position: absolute;
            top: 2204px;
            left: 405px;
            z-index: 1;
            width: 52px;
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style25">
    <div>    
        
    
    </div>
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Text="Tatyasaheb Kore Institute of Engineering &amp; Technology,Warananagar"></asp:Label>
            </strong>
            <p>
                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style24" Text="STUDENT FEEDBACK FORM(Faculty Performance)"></asp:Label>
                </strong>
            </p>
            <asp:Label ID="Label3" runat="server" Text="Name of the Teacher :" CssClass="auto-style28"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="faculty_name_text" runat="server" CssClass="auto-style1" OnTextChanged="TextBox1_TextChanged" CausesValidation="True"></asp:TextBox>
            

            
            <asp:TextBox ID="TextBox17" runat="server" CssClass="auto-style40" OnTextChanged="TextBox17_TextChanged"></asp:TextBox>
            
            <br />
            <br />
            <asp:Label ID="Label35" runat="server" CssClass="auto-style50" Text="Label"></asp:Label>
            <br />
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Subject :" CssClass="auto-style30"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="Label31" runat="server" Text="Date :" CssClass="auto-style32"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="impr_expt_text" runat="server" Height="50px" Width="570px" CssClass="auto-style35" CausesValidation="True" OnTextChanged="impr_expt_text_TextChanged"></asp:TextBox>
                &nbsp;<asp:TextBox ID="add_cmnt_text" runat="server" OnTextChanged="add_cmnt_text_TextChanged" style="z-index: 1; left: 3px; top: 1965px; position: absolute; width: 572px; height: 62px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="sub_text" runat="server" CssClass="auto-style39" CausesValidation="True" OnTextChanged="sub_text_TextChanged"></asp:TextBox>
&nbsp;&nbsp;
                <table class="auto-style4" border="2">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label8" runat="server" Text="Sr. No."></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label9" runat="server" Text="Attribute &amp; Performance Level"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Remark /Suggestion(Optional Fields)"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label11" runat="server" Text="1."></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="Label12" runat="server" Text="How are the classes engaged"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style10" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Irregular</asp:ListItem>
                                <asp:ListItem Value="0.6">Some time Irregular</asp:ListItem>
                                <asp:ListItem Value="0.8">Generally Regular</asp:ListItem>
                                <asp:ListItem Value="1.0">Always Regular</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style9">
                            <asp:TextBox ID="TextBox5" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label13" runat="server" Text="2."></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <asp:Label ID="Label14" runat="server" Text="Are you satisfied with the progress of the syllabus"></asp:Label>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Totally unsatisfied</asp:ListItem>
                                <asp:ListItem Value="0.6">Satisfied to some extent</asp:ListItem>
                                <asp:ListItem Value="0.8">Satisfied</asp:ListItem>
                                <asp:ListItem Value="1.0">Totally satisfied</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TextBox6" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <asp:Label ID="Label15" runat="server" Text="3."></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <asp:Label ID="Label16" runat="server" Text="Do you understand the Subject?"></asp:Label>
                            <asp:RadioButtonList ID="RadioButtonList3" runat="server" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Not at all </asp:ListItem>
                                <asp:ListItem Value="0.6">To some extent</asp:ListItem>
                                <asp:ListItem Value="0.8">Good enough</asp:ListItem>
                                <asp:ListItem Value="1.0">In all respects</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style16">
                            <asp:TextBox ID="TextBox7" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label17" runat="server" Text="4."></asp:Label>
                        </td>
                        <td class="auto-style18">
                            <asp:Label ID="Label18" runat="server" Text="Is the teacher capable of controlling the class?"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList4" runat="server" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Poor control</asp:ListItem>
                                <asp:ListItem Value="0.6">Fair control</asp:ListItem>
                                <asp:ListItem Value="0.8">Adequate control</asp:ListItem>
                                <asp:ListItem Value="1.0">Good control</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style19">
                            <asp:TextBox ID="TextBox8" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label19" runat="server" Text="5."></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label20" runat="server" Text="Does the teacher involve students during lectures"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList5" runat="server" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Never</asp:ListItem>
                                <asp:ListItem Value="0.6">Rarely</asp:ListItem>
                                <asp:ListItem Value="0.8">Usually</asp:ListItem>
                                <asp:ListItem Value="1.0">Always</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label21" runat="server" Text="6."></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label22" runat="server" Text="Is your teacher proficient in English?"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList6" runat="server" OnSelectedIndexChanged="RadioButtonList6_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Poor</asp:ListItem>
                                <asp:ListItem Value="0.6">Average</asp:ListItem>
                                <asp:ListItem Value="0.8">Good </asp:ListItem>
                                <asp:ListItem Value="1.0">Excellent</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            <asp:Label ID="Label23" runat="server" Text="7."></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:Label ID="Label24" runat="server" Text="Is the teacher audible"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList7" runat="server" OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Poor</asp:ListItem>
                                <asp:ListItem Value="0.6">Average</asp:ListItem>
                                <asp:ListItem Value="0.8">Good </asp:ListItem>
                                <asp:ListItem Value="1.0">Excellent</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="TextBox11" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label25" runat="server" Text="8."></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label26" runat="server" Text="How is his teaching in general?"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList8" runat="server" OnSelectedIndexChanged="RadioButtonList8_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Boring </asp:ListItem>
                                <asp:ListItem Value="0.6">Monotones</asp:ListItem>
                                <asp:ListItem Value="0.8">Good</asp:ListItem>
                                <asp:ListItem Value="1.0">Interesting</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox12" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label27" runat="server" Text="9."></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:Label ID="Label28" runat="server" Text="How do you rate the overall performance of your teacher"></asp:Label>
                            <br />
                            <asp:RadioButtonList ID="RadioButtonList9" runat="server" OnSelectedIndexChanged="RadioButtonList9_SelectedIndexChanged">
                                <asp:ListItem Value="0.5">Poor</asp:ListItem>
                                <asp:ListItem Value="0.6">Fair</asp:ListItem>
                                <asp:ListItem Value="0.8">Good</asp:ListItem>
                                <asp:ListItem Value="1.0">Excellent</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server" Height="50px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                &nbsp;</p>
            <div class="auto-style3">
                <asp:Label ID="Label29" runat="server" Text="What are the specific expectations from your teacher for the improvement of result in the subject?(Compulsory)" CssClass="auto-style36"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
&nbsp;&nbsp;&nbsp;
        </div>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style41" Text="Next" OnClick="Button1_Click" />
    <div>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
