<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="WebApplication21.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style30 {
            color: #000000;
        }
        .auto-style101 {
            color: #000000;
            text-align: center;
            font-size: small;
            margin-top: 0px;
        }
        .auto-style102 {
            font-weight: 700;
            color: #FF0000;
        }
        .auto-style33 {
            margin-left: 6px;
            margin-top: 0px;
        }
        .auto-style119 {
            width: 100%;
        }
        .auto-style125 {
            width: 100px;
        }
        .auto-style137 {
            width: 52px;
        }
        .auto-style138 {
            height: 25px;
            width: 52px;
        }
        .auto-style134 {
            font-size: small;
        }
        .auto-style121 {
            height: 25px;
        }
        .auto-style123 {
            height: 26px;
            width: 52px;
        }
        .auto-style120 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp; 
   


    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style30" Height="934px">
        &nbsp; <strong>
        &nbsp;&nbsp; &nbsp; <asp:Label ID="Label2" runat="server" CssClass="auto-style101" Text="Sepetteki ürün sayısı  "></asp:Label>
        </strong>(<asp:Label ID="lblspt" runat="server" CssClass="auto-style102" Text="lblSpt"></asp:Label>
        )<br />
        <br />
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style33" Height="759px">
            <asp:DataList ID="DataList3" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnItemCommand="DataList3_ItemCommand" OnLoad="DataList3_Load" RepeatColumns="1" OnSelectedIndexChanged="DataList3_SelectedIndexChanged">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <table class="auto-style119">
                        <tr>
                            <td class="auto-style125">&nbsp;</td>
                            <td class="auto-style137">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style125" rowspan="4">
                                <asp:Image ID="resim" runat="server" Height="162px" ImageUrl='<%# Eval("urunresim") %>' Width="131px" />
                            </td>
                            <td class="auto-style138">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" CssClass="auto-style134" Text="Kod :"></asp:Label>
                            </td>
                            <td class="auto-style121">
                                <asp:Label ID="kod" runat="server" Text='<%# Eval("urunkod") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style138">&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" CssClass="auto-style134" Text="Adet :"></asp:Label>
                            </td>
                            <td class="auto-style121">
                                <asp:Label ID="adet" runat="server" Text='<%# Eval("urunadedi") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style123">&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style134" Text="Fiyat :"></asp:Label>
                            </td>
                            <td class="auto-style120">
                                <asp:Label ID="fiyat" runat="server" Text='<%# Eval("urunfiyati") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style138">&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" CssClass="auto-style134" Text="Toplam Tutar : "></asp:Label>
                            </td>
                            <td class="auto-style121">
                                <asp:Label ID="toplam" runat="server" Text='<%# Eval("totalfiyat") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style125">&nbsp;</td>
                            <td class="auto-style137">
                                <asp:Button ID="Button1" runat="server" CommandName="siparis" CommandArgument='<%#Eval("urunkod")%>' Text="Tamamla"/>
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Sil" CommandName="sil" CommandArgument='<%#Eval("urunkod")%>'/>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:Panel ID="Panel3" runat="server">
            </asp:Panel>
             <br />
             <table id="Paging" runat="server">
            <tr>
                <td class="auto-style44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Btnil" runat="server" Font-Bold="true" Text="First"   
            onclick="Button1_Click" CssClass="auto-style43" Height="26px" Width="44px"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="btn2" runat="server" Font-Bold="true" Text="Previous" onclick="Button2_Click"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="btn3" runat="server" Font-Bold="true" Text="Next" onclick="Button3_Click"   
                     />
                </td>
                <td class="auto-style44">
                    <asp:Button ID="btn4" runat="server" Font-Bold="true" Text="Last" onclick="Button4_Click"   
                   />
                </td>
            </tr>
        </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />

    </asp:Panel>
</asp:Content>
