<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sifreunuttum.aspx.cs" Inherits="WebApplication21.sifreunuttum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style33 {
            margin-left: 123px;
        }
        


        .auto-style31 {
            margin-top: 0px;
            text-align: center;
        }
        


        .auto-style31 {
            width: 100%;
            height: 448px;
        }
        .auto-style34 {
            height: 25px;
            width: 128px;
        }
        .auto-style38 {
            height: 25px;
            width: 161px;
        }
        .auto-style57 {
            color: black;
        }
        .auto-style32 {
            height: 25px;
        }
        .auto-style50 {
            width: 128px;
            height: 58px;
        }
        .auto-style59 {
            color: black;
            text-align: center;
            font-size: small;
        }
        .auto-style51 {
            width: 161px;
            height: 58px;
        }
        .auto-style52 {
            height: 58px;
        }
        .auto-style47 {
            width: 128px;
            height: 49px;
        }
        .auto-style48 {
            width: 161px;
            height: 49px;
        }
        .auto-style53 {
            font-weight: 700;
            color: white;
        }
        .auto-style49 {
            height: 49px;
        }
        .auto-style41 {
            margin-left: 0px;
        }
        .auto-style44 {
            width: 128px;
            height: 65px;
        }
        .auto-style45 {
            width: 161px;
            height: 65px;
        }
        .auto-style46 {
            height: 65px;
        }
        .auto-style55 {
            color: #000000;
            font-weight: 700;
        }
        .auto-style40 {
            width: 161px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;<asp:Panel ID="Panel1" runat="server" CssClass="auto-style33" Height="455px" Width="449px" BorderStyle="Inset" GroupingText="Şifremi Unuttum">
        <table class="auto-style31">
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style38">
                    <br />
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style57" Text="Label"></asp:Label>
                </td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style50">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style59" Text="E-posta :"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtEposta" runat="server" CssClass="auto-style37" Height="24px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style52"></td>
            </tr>
            <tr>
                <td class="auto-style47">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style59" Text="Güvenlik Kodu :"></asp:Label>
                </td>
                <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblCapt" runat="server" BackColor="#003366" CssClass="auto-style53" Text="Label"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style49">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style41" Height="31px" ImageUrl="~/resimler/logo.jpg" OnClick="ImageButton1_Click" Width="40px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style44">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style59" Text="Kod tekrar :"></asp:Label>
                </td>
                <td class="auto-style45">
                    <asp:TextBox ID="txtCapth" runat="server" CssClass="auto-style37" Height="24px" Width="150px"></asp:TextBox>
                </td>
                <td class="auto-style46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Height="26px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style54" colspan="3">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style55" Text="Label"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style59" Text="Yeni Şifre :"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtSifre" runat="server" CssClass="auto-style37" Height="24px" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;<asp:Label ID="Label7" runat="server" CssClass="auto-style59" Text="ŞifreTekrar :"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtTekrar" runat="server" CssClass="auto-style37" Height="24px" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style56" Font-Bold="True" Height="38px" Text="Şifremi Yenile" Width="136px" OnClick="Button2_Click" />
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp;
</asp:Content>
