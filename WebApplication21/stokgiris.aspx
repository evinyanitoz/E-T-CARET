<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="stokgiris.aspx.cs" Inherits="WebApplication21.stokgiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style42 {
            width: 59%;
            height: 354px;
            margin-left: 162px;
        }
        .auto-style48 {
            text-align: center;
        }
        .auto-style47 {
            color: black;
            font-size: medium;
        }
        .auto-style43 {
            width: 88px;
        }
        .auto-style49 {
            width: 88px;
            text-align: center;
        }
        .auto-style46 {
            color: black;
            font-size: small;
        }
        .auto-style45 {
            width: 88px;
            color: black;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table class="auto-style42" style="background-color: #CCCCFF">
        <tr>
            <td class="auto-style48" colspan="2" style="background-color: #003366"><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style47" ForeColor="White" Text="Stok Giriş İşlemleri"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style49"><strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style46" ForeColor="Black" Text="Ürün Kod :"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtKod" runat="server" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style45"><strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style46" ForeColor="Black" Text="Ürün Adı :"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtAd" runat="server" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style49"><strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style46" ForeColor="Black" Text="Stok  :"></asp:Label>
                </strong></td>
            <td>
                <asp:TextBox ID="txtStok" runat="server" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="40px" Text="Stok Güncelle" Width="152px" OnClick="Button2_Click" />
                    &nbsp; <strong>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style46" ForeColor="Red" Text="Ürün Kod :"></asp:Label>
                </strong></td>
        </tr>
    </table>
</asp:Content>
