<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="siparis.aspx.cs" Inherits="WebApplication21.siparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style39 {
            color: black;
        }
        .auto-style83 {
        width: 100%;
    }
    .auto-style98 {
        width: 209px;
    }
    .auto-style89 {
        width: 464px;
    }
    .auto-style94 {
        width: 130px;
    }
    .auto-style96 {
        width: 91px;
    }
    .auto-style91 {
        width: 464px;
        height: 23px;
    }
    .auto-style92 {
        width: 130px;
        height: 23px;
    }
    .auto-style93 {
        width: 91px;
        height: 23px;
    }
    .auto-style90 {
        height: 23px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;<asp:Panel ID="Panel2" runat="server" GroupingText="Sipariş Listesi" Height="1384px" CssClass="auto-style39">
        <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                <table class="auto-style83">
                    <tr>
                        <td colspan="5" style="background-color: #336699">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style98">&nbsp;</td>
                        <td class="auto-style89">&nbsp;</td>
                        <td class="auto-style94">&nbsp;</td>
                        <td class="auto-style96"><strong>
                            <asp:Label ID="Label19" runat="server" CssClass="auto-style102" Text="Sipariş No :"></asp:Label>
                            </strong></td>
                        <td>
                            <asp:Label ID="Label20" runat="server" CssClass="auto-style39" Text='<%# Eval("sipariskod") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style98" rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="99px" ImageUrl='<%# Eval("urunresim") %>' Width="98px" />
                        </td>
                        <td class="auto-style89">&nbsp;</td>
                        <td class="auto-style94">&nbsp;</td>
                        <td class="auto-style96">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style91">
                            <asp:Label ID="Label25" runat="server" CssClass="auto-style99" Text='<%# Eval("adet") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label26" runat="server" CssClass="auto-style99" Text="Adet"></asp:Label>
                            &nbsp;<strong><asp:Label ID="Label27" runat="server" CssClass="auto-style100" Text='<%# Eval("urunAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style92"></td>
                        <td class="auto-style93"></td>
                        <td class="auto-style90"></td>
                    </tr>
                    <tr>
                        <td class="auto-style91">&nbsp;<strong><asp:Label ID="Label34" runat="server" CssClass="auto-style101" ForeColor="#003366" Text='<%# Eval("fiyat") %>'></asp:Label>
                            </strong>&nbsp; <strong>
                            <asp:Label ID="Label35" runat="server" CssClass="auto-style101" ForeColor="Black" Text="TL"></asp:Label>
                            </strong></td>
                        <td class="auto-style92"><strong>
                            <asp:Label ID="Label32" runat="server" CssClass="auto-style100" Text="Sipariş Durumu :"></asp:Label>
                            </strong></td>
                        <td class="auto-style93">
                            <asp:Label ID="Label33" runat="server" CssClass="auto-style39" ForeColor="#006600" Text='<%# Eval("siparisdurum") %>'></asp:Label>
                        </td>
                        <td class="auto-style90"></td>
                    </tr>
                    <tr>
                        <td class="auto-style89"><strong>
                            <asp:Label ID="Label29" runat="server" CssClass="auto-style101" Text='<%# Eval("kargodurum") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style94"><strong>
                            <asp:Label ID="Label22" runat="server" CssClass="auto-style100" Text="Sipariş Tarihi :"></asp:Label>
                            </strong></td>
                        <td class="auto-style96">
                            <asp:Label ID="Label23" runat="server" CssClass="auto-style39" Text='<%# Eval("siparistarih") %>'></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style98">&nbsp;</td>
                        <td class="auto-style89">&nbsp;</td>
                        <td class="auto-style94"><strong>
                            <asp:Label ID="Label21" runat="server" CssClass="auto-style100" Text="Toplam Tutar :"></asp:Label>
                            </strong></td>
                        <td class="auto-style96">
                            <asp:Label ID="Label24" runat="server" CssClass="auto-style39" Text='<%# Eval("toplamtutar") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label31" runat="server" CssClass="auto-style39" Text="TL"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
           <table id="Paging" runat="server">
            <tr>
                <td class="auto-style44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Bold="true" Text="First"   
            onclick="Button1_Click" CssClass="auto-style43" Height="26px" Width="44px"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="Previous" onclick="Button2_Click"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="Button3" runat="server" Font-Bold="true" Text="Next" onclick="Button3_Click"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="Button4" runat="server" Font-Bold="true" Text="Last" onclick="Button4_Click"   
                   />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
