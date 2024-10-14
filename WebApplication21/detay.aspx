<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="detay.aspx.cs" Inherits="WebApplication21.detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style31 {
            margin-top: 0px;
            text-align: center;
        }
        


        .auto-style31 {
            font-weight: 700;
           color:white;
        }
        .auto-style32 {
            margin-bottom: 0px;
        }
        .auto-style33 {
            width: 96%;
            height: 318px;
        }
        .auto-style56 {
            width: 120px;
        }
                


        .auto-style36 {
            text-align: center;
            color: black;
        }



        .auto-style59 {
            width: 100px;
            text-align: center;
        }
        .auto-style34 {
            color: #000000;
        }
        .auto-style52 {
            width: 115px;
        }
        .auto-style53 {
            width: 100px;
        }
        .auto-style41 {
            color: #000000;
        }
        .auto-style54 {
            width: 100px;
            height: 24px;
            color: #000000;
        }
        .auto-style55 {
            width: 115px;
            height: 24px;
        }
        .auto-style58 {
            font-size: small;
        }
        .auto-style45 {
            height: 23px;
        }
        .auto-style50 {
            height: 103px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        
                <asp:Panel ID="Panel1" runat="server" CssClass="auto-style29" Height="935px">
        <asp:Panel ID="Panel2" runat="server" BackColor="#003366" CssClass="auto-style30" Height="36px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label13" runat="server" Text="ÜRÜN DETAY BİLGİLENDİRME" CssClass="auto-style31" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style32" Height="387px">
                &nbsp;<asp:FormView ID="FormView1" runat="server" OnItemCommand="FormView1_ItemCommand" OnLoad="FormView1_Load" EnableViewState="False">
                    <ItemTemplate>
                        <table border="0" class="auto-style33">
                            <tr>
                                <td class="auto-style56" rowspan="11">
                                    <asp:Image ID="resim" runat="server" CssClass="auto-style36 auto-style57" Height="319px" ImageUrl='<%# Eval("urunresim") %>' Width="230px" />
                                </td>
                                <td class="auto-style59"><asp:Label ID="Label14" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Ürün Kodu:"></asp:Label>
                                </td>
                                <td class="auto-style52">
                                    <asp:Label ID="Label33" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("urunkod") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label34" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Ürün Adı :"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style52">
                                    <asp:Label ID="Label20" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("urunAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label15" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Fiyatı :"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style52">
                                    <asp:Label ID="fiyat" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("fiyat") %>'></asp:Label>
                                    &nbsp;<asp:Label ID="Label30" runat="server" CssClass="auto-style41" Text="TL"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label16" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Marka: "></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style52">&nbsp;
                                    <asp:Label ID="Label26" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("markaAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Renk :"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style52">&nbsp;
                                    <asp:Label ID="Label27" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("renkAd") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style53">&nbsp;&nbsp;<asp:Label ID="Label18" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Stok Durumu :"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style52">
                                    <asp:Label ID="Label31" runat="server" style="color: #009933" Text='<%# Eval("stokdurum") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    <asp:Label ID="Label19" runat="server" CssClass="auto-style34" Font-Size="Small" Text="Açıklama :"></asp:Label>
                                    <br />
                                </td>
                                <td class="auto-style55">
                                    <asp:Label ID="Label29" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("urunacik") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54">&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp; Stok :</span></td>
                                <td class="auto-style55">&nbsp;<asp:Label ID="Label32" runat="server" CssClass="auto-style34" Font-Bold="False" Text='<%# Eval("urunadedi") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style54">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style58">&nbsp;Adet :</span>&nbsp;</td>
                                <td class="auto-style55">
                                    <asp:DropDownList ID="adet" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                        <asp:ListItem>13</asp:ListItem>
                                        <asp:ListItem>14</asp:ListItem>
                                        <asp:ListItem>15</asp:ListItem>
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>17</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>19</asp:ListItem>
                                        <asp:ListItem>20</asp:ListItem>
                                        <asp:ListItem>21</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>23</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                        <asp:ListItem>25</asp:ListItem>
                                        <asp:ListItem>26</asp:ListItem>
                                        <asp:ListItem>27</asp:ListItem>
                                        <asp:ListItem>28</asp:ListItem>
                                        <asp:ListItem>29</asp:ListItem>
                                        <asp:ListItem>30</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style45" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style50" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" BackColor="#FF9966" CommandArgument='<%#Eval("urunkod")%>' CommandName="sepett" CssClass="auto-style42" Height="45px" OnClick="Button1_Click1" Text="Sepete Ekle" Width="230px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style56">&nbsp;</td>
                                <td class="auto-style53">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
            </asp:Panel>
            <br />
        </asp:Panel>
    </asp:Panel>
    </a>
</asp:Content>
