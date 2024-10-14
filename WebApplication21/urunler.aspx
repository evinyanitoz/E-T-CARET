<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="WebApplication21.urunler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style69 {
            margin-top: 0px;
        }
        .auto-style70 {
            width: 97%;
            height: 205px;
        }
        .auto-style93 {
            width: 160px;
        }
        .auto-style84 {
            color: black;
            font-size: small;
        }
        .auto-style86 {
            width: 91px;
        }
        .auto-style73 {
            width: 166px;
        }
        .auto-style85 {
            width: 16px;
        }
        .auto-style92 {
            margin-bottom: 0px;
        }
        .auto-style158 {
            height: 28px;
        }
        .auto-style159 {
            width: 91px;
            height: 28px;
        }
        .auto-style160 {
            width: 166px;
            height: 28px;
        }
        .auto-style161 {
            width: 16px;
            height: 28px;
        }
        .auto-style153 {
            height: 50px;
        }
        .auto-style154 {
            width: 91px;
            height: 50px;
        }
        .auto-style155 {
            width: 166px;
            height: 50px;
        }
        .auto-style156 {
            width: 16px;
            height: 50px;
        }
        .auto-style94 {
            width: 160px;
            height: 36px;
        }
        .auto-style95 {
            height: 36px;
        }
        .auto-style96 {
            width: 91px;
            height: 36px;
        }
        .auto-style97 {
            width: 166px;
            height: 36px;
        }
        .auto-style98 {
            width: 16px;
            height: 36px;
        }
        .auto-style99 {
            margin-right: 21px;
            margin-top: 28px;
            margin-left: 14px;
        }
        .auto-style152 {
            width: 100%;
        }
        .auto-style157 {
            margin-top: 43px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style69" Height="269px" Width="916px" GroupingText="Ürün Ekle - Ara">
        <br />
        <table class="auto-style70">
            <tr>
                <td class="auto-style93" rowspan="3">
                    <asp:Label ID="Label33" runat="server" CssClass="auto-style84" ForeColor="Black" Text="Ürün  Kod :"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtBul" runat="server" Height="18px" OnTextChanged="txtBul_TextChanged" Width="72px"></asp:TextBox>
                    <asp:Button ID="Button6" runat="server" Height="25px" OnClick="Button6_Click" Text="Ara" Width="43px" />
                    <br />
                    <br />
                    &nbsp;
                </td>
                <td>&nbsp; &nbsp;
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style84" Text="Ürün adı :" ForeColor="Black"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAd" runat="server" Height="18px" Width="92px"></asp:TextBox>
                </td>
                <td class="auto-style86">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" CssClass="auto-style84" Text="Marka:" ForeColor="Black"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style73">
                    <br />
                    <asp:DropDownList ID="drpMarka" runat="server" Height="24px" Width="127px">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td class="auto-style85">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style92" Height="26px" Width="249px" ForeColor="Black" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style158">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style84" Text="Açıklama:" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style158">
                    <asp:TextBox ID="txtAcik" runat="server" Height="18px" Width="92px"></asp:TextBox>
                </td>
                <td class="auto-style159">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" CssClass="auto-style84" Text="Renk:" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style160">
                    <asp:DropDownList ID="drpRenk" runat="server" Height="24px" Width="127px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style161">
                    <asp:Label ID="Label19" runat="server" CssClass="auto-style1" Font-Bold="True" ForeColor="#FF3300" Text="Label"></asp:Label>
                </td>
                <td class="auto-style158">&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style153">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" CssClass="auto-style84" Text="Fiyat:" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style153">
                    <asp:TextBox ID="txtFiyat" runat="server" Height="18px" Width="92px"></asp:TextBox>
                </td>
                <td class="auto-style154">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" CssClass="auto-style84" Text="Kategori:" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style155">
                    <asp:DropDownList ID="drpKatno" runat="server" Height="24px" Width="127px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style156">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button5" runat="server" Height="27px" OnClick="Button5_Click" Text="Ekle" Width="134px" />
                </td>
                <td class="auto-style153"></td>
            </tr>
            <tr>
                <td class="auto-style94">&nbsp; &nbsp;</td>
                <td class="auto-style95">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" CssClass="auto-style84" Text="Adet :" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style95">
                    <asp:TextBox ID="txtAdet" runat="server" Height="18px" Width="92px"></asp:TextBox>
                </td>
                <td class="auto-style96">&nbsp;&nbsp;
                    </td>
                <td class="auto-style97">
                    &nbsp;</td>
                <td class="auto-style98">&nbsp;</td>
                <td class="auto-style95">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style99" ForeColor="Black" GroupingText="Ürünler Listesi" Height="96px" Width="877px">
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" OnLoad="DataList1_Load" style="margin-right: 0px">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <table class="auto-style152">
                    <tr>
                        <td rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="139px" ImageUrl='<%# Eval("urunresim") %>' Width="137px" />
                        </td>
                        <td>
                            <asp:Label ID="Label20" runat="server" CssClass="auto-style1" Text="Ürün Adı :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAd0" runat="server" Height="16px" Width="65px" Text='<%# Eval("urunAd") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label24" runat="server" CssClass="auto-style1" Text="Kategori :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtKat" runat="server" Enabled="False" Height="16px" Text='<%# Eval("bolumID") %>' Width="67px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label21" runat="server" CssClass="auto-style1" Text="Marka :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtMarka" runat="server" Enabled="False" Height="16px" Text='<%# Eval("markaAd") %>' Width="67px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label26" runat="server" CssClass="auto-style1" Text="Fiyat :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFiyat0" runat="server" Height="22px" Width="110px" Text='<%# Eval("fiyat") %>'></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label22" runat="server" CssClass="auto-style1" Text="Renk :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtRenk" runat="server" Enabled="False" Height="16px" Text='<%# Eval("renkAd") %>' Width="67px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label28" runat="server" CssClass="auto-style1" Text="Açıklama :" ForeColor="Black"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAcik0" runat="server" Height="30px" TextMode="MultiLine" Width="110px" Text='<%# Eval("urunacik") %>'></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button9" runat="server" CommandArgument='<%#Eval("urunkod")%>' CommandName="güncelle" Height="36px" Text="Güncelle" Width="74px" />
                        </td>
                    </tr>
                    <tr>
                        
                          
                            
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="Button8" runat="server" CommandArgument='<%#Eval("urunkod")%>' CommandName="sil" Height="36px" Text="Sil" Width="77px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label30" runat="server" CssClass="auto-style1" Text="Ürün Kodu :" ForeColor="Black"></asp:Label>
                            <asp:Label ID="Label31" runat="server" CssClass="auto-style1" Text='<%# Eval("urunkod") %>' ForeColor="Black"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label32" runat="server" CssClass="auto-style1" ForeColor="Black"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
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
