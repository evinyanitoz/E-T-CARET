<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="WebApplication21.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style66 {
            width: 70%;
            height: 237px;
            margin-left: 74px;
        }
        .auto-style67 {
            width: 171px;
        }
        .auto-style75 {
        color: #000000;
        font-size: small;
    }
        .auto-style72 {
            color: red;
        }
        .auto-style73 {
            color: #003366;
        }
        .auto-style76 {
            font-size: small;
        }
        .auto-style68 {
            width: 171px;
            height: 24px;
        }
        .auto-style69 {
            height: 24px;
        }
        .auto-style77 {
            width: 171px;
            height: 40px;
        }
        .auto-style78 {
            height: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <div class="auto-style37">
        &nbsp;<table class="auto-style66" __designer:mapid="6e4" border="0" style="background-color: #CCCCCC">
            <tr __designer:mapid="6e5">
                <td style="background-color: #003366" colspan="2" __designer:mapid="6e6">&nbsp;</td>
            </tr>
            <tr __designer:mapid="6e7">
                <td class="auto-style67" __designer:mapid="6e8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style75" Text="Kullanıcı Adı:"></asp:Label>
                    &nbsp;</td>
                <td __designer:mapid="6ea">
                    <asp:TextBox ID="txtKullanici" runat="server" Height="18px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="6ec">
                <td class="auto-style77" __designer:mapid="6ed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style75" Text="Şifre :"></asp:Label>
                    &nbsp;</td>
                <td __designer:mapid="6ef" class="auto-style78">
                    <asp:TextBox ID="txtSifre" runat="server" Height="19px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="6f1">
                <td class="auto-style67" __designer:mapid="6f2">&nbsp; &nbsp;</td>
                <td __designer:mapid="6f3">
                    <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style75" Text="Beni Hatırla" OnCheckedChanged="CheckBox1_CheckedChanged1" />
                </td>
            </tr>
            <tr __designer:mapid="6f5">
                <td class="auto-style67" __designer:mapid="6f6">&nbsp;<asp:Label ID="Label4" runat="server" CssClass="auto-style72" Text="Label"></asp:Label>
                    &nbsp;</td>
                <td __designer:mapid="6f8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style73" ForeColor="Black" Text="Giriş" Width="79px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr __designer:mapid="6fa">
                <td class="auto-style67" __designer:mapid="6fb">&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style76" OnClick="LinkButton2_Click">Şifrenimi Unuttun ?</asp:LinkButton>
                    &nbsp;</td>
              <td __designer:mapid="6fc">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style76" OnClick="LinkButton3_Click">Şifremi Değiştir</asp:LinkButton>
                  &nbsp;</td>
            </tr>
            <tr __designer:mapid="6fd">
                <td class="auto-style68" __designer:mapid="6fe"></td>
                <td class="auto-style69" __designer:mapid="6ff">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style76" OnClick="LinkButton4_Click">Admin Girişi</asp:LinkButton>
                     &nbsp;</td>
            </tr>
        </table>
    </div>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
