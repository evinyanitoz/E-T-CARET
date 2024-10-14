<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="siparisler.aspx.cs" Inherits="WebApplication21.siparisler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style42 {
            width: 860px;
            height: 64px;
            margin-top: 0px;
        }
        .auto-style40 {
        color: #003366;
    }
        .auto-style57 {
            text-align: left;
        }
        .auto-style71 {
            margin-left: 94px;
        }
        .auto-style44 {
            width: 464px;
        }
        .auto-style67 {
            color: #FFFFFF;
            font-size: medium;
            text-decoration: underline;
        }
        .auto-style64 {
            width: 361px;
        }
        .auto-style49 {
            color: #000000;
            font-size: small;
        }
        .auto-style55 {
            color: #003366;
            font-size: small;
        }
        .auto-style72 {
            width: 72px;
        }
        .auto-style65 {
            height: 20px;
            width: 361px;
        }
        .auto-style61 {
            height: 20px;
        }
        .auto-style73 {
            height: 20px;
            width: 72px;
        }
        .auto-style59 {
            height: 20px;
            width: 80px;
        }
        .auto-style69 {
            width: 361px;
            text-align: center;
        }
        .auto-style56 {
            color: #006600;
            font-size: small;
        }
        .auto-style68 {
            text-align: center;
        }
        .auto-style58 {
            width: 80px;
        }
        .auto-style66 {
            height: 45px;
            width: 361px;
            text-align: center;
        }
        .auto-style43 {
            height: 45px;
        }
        .auto-style74 {
            height: 45px;
            width: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" ForeColor="Black" Height="80px" Width="912px">
    &nbsp;&nbsp;<table class="auto-style42">
            <tr>
                <td class="auto-style39">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Onay Bekleyen Siparişler</asp:LinkButton>
                &nbsp;(<strong><asp:Label ID="Label1" runat="server" CssClass="auto-style40" Text="Label"></asp:Label>
                    </strong>)</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Tüm Siparişler</asp:LinkButton>
                &nbsp;(<strong><asp:Label ID="Label2" runat="server" CssClass="auto-style40" Text="Label"></asp:Label>
                    </strong>)</td>
            </tr>
        </table>
    &nbsp;<div class="auto-style57">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style71" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style44" style="background-color: #FFFFFF">
                        <tr>
                            <td colspan="8" style="background-color: #003366"><strong>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style67" Text="Müşteri Bilgileri"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style64" >
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style49" Text="Ad: "></asp:Label>
                                <strong>
                                <asp:Label ID="Label9" runat="server" CssClass="auto-style55" Text='<%# Eval("uyeAd") %>'></asp:Label>
                                </strong></td>
                            <td ><strong>
                                <br />
                                &nbsp;
                                </strong>
                                <asp:Label ID="Label7" runat="server" CssClass="auto-style49" Text="Soyad: "></asp:Label>
                                <strong>
                                <asp:Label ID="Label10" runat="server" CssClass="auto-style55" Text='<%# Eval("uyeSoyad") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                            <td>&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" CssClass="auto-style49" Text="Telefon : "></asp:Label>
                                &nbsp;<strong><asp:Label ID="Label11" runat="server" CssClass="auto-style55" Text='<%# Eval("uyetel") %>'></asp:Label>
                                </strong>&nbsp; <strong>&nbsp; </strong>&nbsp;</td>
                            <td class="auto-style72" ><strong>&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" CssClass="auto-style49" Text="Adres : "></asp:Label>
                                <br />
&nbsp;</strong></td>
                            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:Label ID="Label13" runat="server" CssClass="auto-style55" Text='<%# Eval("adres") %>'></asp:Label>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </strong></td>
                            <td><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;<br />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </strong></td>
                            <td><strong>
                                <br />
                                </strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                            <td><strong>
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style65"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                            <td class="auto-style61">&nbsp;</td>
                            <td class="auto-style61"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                            <td class="auto-style73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td class="auto-style61">
                                <br />
                            </td>
                            <td class="auto-style61"></td>
                            <td class="auto-style59"></td>
                            <td class="auto-style61"></td>
                        </tr>
                        <tr>
                            <td colspan="8" style="background-color: #003366"><strong>
                                <asp:Label ID="Label14" runat="server" CssClass="auto-style67" Text="Ürün Bilgileri"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style69" >
                                <asp:Image ID="Image1" runat="server" Height="95px" ImageUrl='<%# Eval("urunresim") %>' Width="96px" />
                            </td>
                            <td >&nbsp;<strong><asp:Label ID="Label15" runat="server" CssClass="auto-style55" Text='<%# Eval("adet") %>'></asp:Label>
                                </strong>&nbsp;<strong><asp:Label ID="Label16" runat="server" CssClass="auto-style55" Text="Adet"></asp:Label>
                                </strong>
                                <br />
                            </td>
                            <td ><strong>
                                <asp:Label ID="Label17" runat="server" CssClass="auto-style55" Text='<%# Eval("urunAd") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style72" ><strong>
                                <asp:Label ID="Label18" runat="server" CssClass="auto-style55" Text='<%# Eval("fiyat") %>'></asp:Label>
                                <asp:Label ID="Label26" runat="server" CssClass="auto-style55" Text="TL"></asp:Label>
                                </strong></td>
                            <td >&nbsp;</td>
                            <td >&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style69">&nbsp;</td>
                            <td></td>
                            <td>&nbsp;</td>
                            <td class="auto-style72">&nbsp;</td>
                            <td >&nbsp;</td>
                            <td >&nbsp;</td>
                            <td>&nbsp;</td>
                            <td >&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style69">
                                <asp:Label ID="Label19" runat="server" CssClass="auto-style49" Text="Sipariş Durumu : "></asp:Label>
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                            <td ><strong>
                                <asp:Label ID="Label22" runat="server" CssClass="auto-style55" Text='<%# Eval("siparisdurum") %>'></asp:Label>
                                </strong></td>
                            <td >&nbsp;</td>
                            <td class="auto-style72" >&nbsp;</td>
                            <td >&nbsp;</td>
                            <td ><strong>
                                <asp:Label ID="Label25" runat="server" CssClass="auto-style56" Text='<%# Eval("kargodurum") %>'></asp:Label>
                                </strong></td>
                            <td>&nbsp;</td>
                            <td class="auto-style68">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style69" >
                                <asp:Label ID="Label20" runat="server" CssClass="auto-style49" Text="Sipariş Tarihi: "></asp:Label>
                                <strong>
                                <br />
                                </strong></td>
                            <td ><strong>
                                <asp:Label ID="Label23" runat="server" CssClass="auto-style55" Text='<%# Eval("siparistarih") %>'></asp:Label>
                                </strong></td>
                            <td >&nbsp;</td>
                            <td class="auto-style72" >&nbsp;</td>
                            <td >&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style58">&nbsp;</td>
                            <td >&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style66" >
                                <asp:Label ID="Label21" runat="server" CssClass="auto-style49" Text="Toplam Tutar : "></asp:Label>
                                <strong>
                                <br />
                                </strong></td>
                            <td class="auto-style43" ><strong>
                                <asp:Label ID="Label24" runat="server" CssClass="auto-style55" Text='<%# Eval("toplamtutar") %>'></asp:Label>
                                </strong></td>
                            <td class="auto-style43"></td>
                            <td class="auto-style74"></td>
                            <td class="auto-style43" colspan="2">&nbsp;<asp:Button ID="Button2" runat="server" Height="36px" Text="Siparişi Onayla " Width="108px" CommandArgument='<%#Eval("sipariskod") %>' CommandName="sipOnay" OnClick="Button2_Click1" />
                                &nbsp;</td>
                            <td class="auto-style43">&nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <table id="Paging" runat="server">
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
