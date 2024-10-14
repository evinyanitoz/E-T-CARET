<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="WebApplication21.admingiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style66 {
            width: 39%;
            height: 246px;
            margin-left: 298px;
        }
        .auto-style67 {
        width: 187px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="auto-style66" __designer:mapid="6e4" border="0" style="background-color: #CCCCCC">
            <tr __designer:mapid="6e5">
                <td style="background-color: #003366" colspan="2" __designer:mapid="6e6">&nbsp;&nbsp;</td>
            </tr>
            <tr __designer:mapid="6e7">
                <td class="auto-style67" __designer:mapid="6e8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" CssClass="auto-style75" Text="Kullanıcı Adı:"></asp:Label>
                    &nbsp;</td>
                <td __designer:mapid="6ea">
                    <asp:TextBox ID="txtKullanici" runat="server" Height="18px"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="6ec">
                <td class="auto-style67" __designer:mapid="6ed">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style75" Text="Şifre :"></asp:Label>
                    &nbsp;</td>
                <td __designer:mapid="6ef">
                    <asp:TextBox ID="txtSifre" runat="server" Height="19px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr __designer:mapid="6f1">
                <td class="auto-style67" __designer:mapid="6f2">&nbsp;</td>
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
                <td class="auto-style67" __designer:mapid="6fb">&nbsp;</td>
              <td __designer:mapid="6fc">
                  &nbsp;</td>
            </tr>

        </table>
    </p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
