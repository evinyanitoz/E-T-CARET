<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="uyeler.aspx.cs" Inherits="WebApplication21.uyeler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 71%;
            height: 106px;
        }
        .auto-style5 {
            width: 95px;
        }
        .auto-style6 {
            width: 141px;
        }
        .auto-style7 {
            margin-top: 37px;
        }
        .auto-style40 {
            margin-left: 6px;
        }
        .auto-style8 {
            width: 99%;
            height: 105px;
        }
        .auto-style19 {
        width: 105px;
        height: 23px;
    }
    .auto-style20 {
        height: 23px;
    }
        .auto-style38 {
            font-size: small;
            color: #003366;
        }
        .auto-style21 {
        width: 139px;
        height: 23px;
    }
    .auto-style22 {
        width: 76px;
        height: 23px;
    }
        .auto-style12 {
            width: 105px;
        }
    .auto-style17 {
        width: 139px;
    }
    .auto-style13 {
        width: 76px;
    }
        .auto-style11 {
            height: 22px;
            width: 105px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style18 {
        height: 22px;
        width: 139px;
    }
    .auto-style14 {
        height: 22px;
        width: 76px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="119px" Width="910px" GroupingText="Üye Ara" ForeColor="Black">
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label34" runat="server" Text="Üye Kod :" ForeColor="#003366"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="21px"></asp:TextBox>
                </td>
                <td>&nbsp; &nbsp;<asp:Button ID="Button10" runat="server" Text="Ara" Width="106px" Height="34px" OnClick="Button10_Click" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Button8" runat="server" Text="Aktif olan Kayıtlar" Width="128px" OnClick="Button8_Click" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button6" runat="server" Text="Pasif Olan Kayıtlar" Width="134px" OnClick="Button6_Click" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="Tüm Kayıtlar" Width="128px" OnClick="Button9_Click" />
                </td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7" GroupingText="Kayıtlar" Height="826px" Width="903px" ForeColor="Black">
        <asp:DataList ID="DataList1" runat="server" OnLoad="DataList1_Load" OnItemCommand="DataList1_ItemCommand" CellPadding="4" ForeColor="#333333" OnDisposed="DataList1_Disposed" OnItemDataBound="DataList1_ItemDataBound" OnUpdateCommand="DataList1_UpdateCommand" CssClass="auto-style40">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table class="auto-style8" border="1">
                    <tr>
                        <td class="auto-style19">&nbsp; &nbsp;<strong><asp:Label ID="Label47" runat="server" CssClass="auto-style37" Text="Üye No :" ForeColor="Black"></asp:Label>
                            </strong></td>
                        <td class="auto-style20">
                            <asp:Label ID="Label48" runat="server" CssClass="auto-style38" Text='<%# Eval("uyekod") %>' ForeColor="#003366"></asp:Label>
                        </td>
                        <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp; <strong>
                            <asp:Label ID="Label38" runat="server" CssClass="auto-style37" Text="Kullanıcı Adı :" ForeColor="Black"></asp:Label>
                            </strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        <td class="auto-style22">
                            <asp:Label ID="Label44" runat="server" CssClass="auto-style38" Text='<%# Eval("kullanıcıAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style20">
                            <asp:Button ID="btnAktif" runat="server" CommandArgument='<%#Eval("uyekod") %>' CommandName="aktif" Text="Aktif Et" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp; &nbsp;<strong><asp:Label ID="Label35" runat="server" CssClass="auto-style37" Text="Üye adı :" ForeColor="Black"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="Label39" runat="server" CssClass="auto-style38" Text='<%# Eval("uyeAd") %>' ForeColor="#003366"></asp:Label>
                        </td>
                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label42" runat="server" CssClass="auto-style37" Text="Mail :" ForeColor="Black"></asp:Label>
                            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style13">
                            <asp:Label ID="Label45" runat="server" Text='<%# Eval("uyemail") %>' CssClass="auto-style38" ForeColor="#003366"></asp:Label>
                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btnSil" runat="server" CommandArgument='<%#Eval("uyekod") %>' CommandName="sil" Height="24px" Text="Sil" Width="63px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp; &nbsp;<strong><asp:Label ID="Label36" runat="server" CssClass="auto-style37" Text="Soyad :" ForeColor="Black"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="Label40" runat="server" CssClass="auto-style38" Text='<%# Eval("uyeSoyad") %>' ForeColor="#003366"></asp:Label>
                        </td>
                        <td class="auto-style17"><strong>
                            <asp:Label ID="Label43" runat="server" CssClass="auto-style37" Text="Kullanıcı Durumu :" ForeColor="Black"></asp:Label>
                            </strong></td>
                        <td class="auto-style13">
                            <asp:Label ID="Label46" runat="server" Text='<%# Eval("aktiflik") %>' CssClass="auto-style38" ForeColor="#003366"></asp:Label>
                        </td>
                        <td>&nbsp;<br />
                            <asp:Button ID="btnPasif" runat="server" CommandArgument='<%#Eval("uyekod") %>' CommandName="pasif" Height="28px" Text="Pasif Et" Width="64px" />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;&nbsp;<strong><asp:Label ID="Label37" runat="server" CssClass="auto-style37" Text="Tel :" ForeColor="Black"></asp:Label>
                            </strong></td>
                        <td class="auto-style9">
                            <asp:Label ID="Label41" runat="server" CssClass="auto-style38" Text='<%# Eval("uyetel") %>' ForeColor="#003366"></asp:Label>
                        </td>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>

         <table id="Paging" runat="server" class="auto-style157">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="First"   
            onclick="Button1_Click" CssClass="auto-style43" Height="26px" Width="44px"   
                     />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="Previous" onclick="Button2_Click"   
                     />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Font-Bold="true" Text="Next" onclick="Button3_Click"   
                     />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Font-Bold="true" Text="Last" onclick="Button4_Click"   
                   />
                </td>
            </tr>
        </table>
    </asp:Panel>
  
</asp:Content>
