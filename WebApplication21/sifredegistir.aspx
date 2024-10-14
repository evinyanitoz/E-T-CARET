<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sifredegistir.aspx.cs" Inherits="WebApplication21.sifredegistir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style31 {
            margin-top: 0px;
            text-align: center;
        }
        


        .auto-style31 {
            margin-left: 116px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style32 {
            width: 100%;
            height: 297px;
        }
        .auto-style61 {
            width: 121px;
            height: 67px;
            text-align: center;
            color: black;
        }
        .auto-style44 {
            color: #000000;
            font-weight: 700;
            font-size: small;
        }
        .auto-style46 {
            height: 67px;
            width: 148px;
        }
        .auto-style60 {
            height: 4px;
        }
        .auto-style62 {
            font-size: small;
        }
        .auto-style59 {
            width: 121px;
            height: 33px;
            font-weight: 700;
        }
        .auto-style48 {
            height: 33px;
            width: 148px;
        }
        .auto-style50 {
            width: 121px;
            height: 28px;
        }
        .auto-style51 {
            height: 28px;
            width: 148px;
        }
        .auto-style52 {
            color: #FFFFFF;
            font-weight: 700;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF" BorderColor="White" BorderStyle="Inset" CssClass="auto-style31" Font-Bold="True" GroupingText="Şifremi değiştir" Height="322px" Width="425px">
        <table class="auto-style32">
            <tr>
                <td class="auto-style61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style44" Text="Telefon :"></asp:Label>
                </td>
                <td class="auto-style46">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style45" Height="21px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style58" Height="38px" ImageUrl="~/resimler/logo.png" Width="43px" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style60" colspan="3">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style44" Text="Label"></asp:Label>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style62" OnClick="LinkButton2_Click">Giriş Sayfasına Dön</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style44" Text="Şifre :"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style45" Height="21px" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style41" rowspan="3">&nbsp;&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" CssClass="auto-style44" Text="Şifre Tekrar :"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style45" Height="21px" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style50">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style44" Text="Label"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:Button ID="Button2" runat="server" BackColor="#003366" CssClass="auto-style52" Height="36px" Text="Şifre Yenile" Width="122px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
