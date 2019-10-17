<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin_questionnaire.aspx.cs" Inherits="Admin_questionnaire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            height: 67px;
            margin-top: 37px;
            width: 843px;
        }
        .auto-style18 {
            position: absolute;
            top: 44px;
            left: 224px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 114px;
            left: 827px;
            z-index: 1;
            height: 23px;
        }
        .auto-style21 {
            margin-top: 0px;
        }
        .auto-style22 {
            position: absolute;
            top: 116px;
            left: 371px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 114px;
            left: 646px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 116px;
            left: 273px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 118px;
            left: 568px;
            z-index: 1;
            bottom: 397px;
        }
        .auto-style26 {
            width: 510px;
            height: 52px;
            position: absolute;
            top: 217px;
            left: 283px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 187px;
            left: 835px;
            z-index: 1;
        }
        .auto-style28 {
            position: absolute;
            top: 51px;
            left: 939px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
     <p>
       
    <asp:TextBox ID="que_textbox" runat="server" Height="41px" Width="678px" CssClass="auto-style18" OnTextChanged="que_textbox_TextChanged"></asp:TextBox>
        <asp:Button ID="add_que" runat="server" CssClass="auto-style28" OnClick="add_que_Click" Text="ADD" />
</p>
<p class="auto-style16">
     

    &nbsp;</p>
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21" Height="148px">
    </asp:Panel>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
    
</asp:Content>

