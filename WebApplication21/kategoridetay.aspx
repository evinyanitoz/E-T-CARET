<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="kategoridetay.aspx.cs" Inherits="WebApplication21.kategoridetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">




        .auto-style31 {
            margin-top: 0px;
            text-align: center;
        }
        


        .auto-style31 {
            width: 90%;
            height: 286px;
        }
        .auto-style40 {
        width: 457px;
        height: 226px;
    }
    .auto-style38 {
        width: 457px;
    }
        .auto-style33 {
            color: #006699;
        }
        .auto-style34 {
            color: #000000;
        }
                
        .auto-style42 {
            color: #000000;
        }
        
        .auto-style39 {
        height: 34px;
        width: 457px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp<br />
&nbsp;<asp:Panel ID="Panel1" CssClass="auto-style37" runat="server" GroupingText="Ürün Filtreleme" Height="150px" Font-Bold="True">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tiaret sitesiConnectionString %>" SelectCommand="SELECT * FROM [urunler]"></asp:SqlDataSource>
        <br />
        <strong>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small"  Font-Strikeout="False" Text="Marka Seçiniz:"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Font-Strikeout="False" Text="Fiyat Aralığı:"></asp:Label>
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server"  Text="Renk Seçiniz :" Font-Bold="True" Font-Size="Small"></asp:Label>
        <br />
        <asp:DropDownList ID="dpMarka" runat="server" Height="32px" Width="110px" AutoPostBack="True">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="dpFiyat" runat="server" DataTextField="fiyat" DataValueField="fiyat" Height="32px" Width="110px">
            <asp:ListItem>0-100</asp:ListItem>
            <asp:ListItem>100-200</asp:ListItem>
            <asp:ListItem>200-300</asp:ListItem>
               <asp:ListItem>2000-3000</asp:ListItem>
               <asp:ListItem>5000-6000</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:DropDownList ID="dpRenk" runat="server" Height="32px" Width="110px">
        </asp:DropDownList>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="aramabutonu" runat="server" Height="38px" Text="ARA" Width="44px" CssClass="" BackColor="#336699" BorderColor="#3366FF" BorderStyle="None" style="font-weight: bold; color: #FFFFFF" OnClick="aramabuton_Click2" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style30" Height="781px" HorizontalAlign="Left">
        <asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style37" Font-Bold="True" ForeColor="Black" GridLines="Vertical" Height="755px" RepeatColumns="3" ShowFooter="False" ShowHeader="False" Width="541px" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" OnItemCommand="DataList3_ItemCommand" >
            <AlternatingItemStyle BackColor="White" BorderStyle="None" />
            <EditItemStyle BackColor="White" BorderStyle="Solid" />
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table border="0" class="auto-style31" style="border-style: inset; border-width: thin">
                    <tr>
                        <td class="auto-style40">
                            <asp:Image ID="Image2" runat="server" CssClass="auto-style41" Height="217px" ImageUrl='<%# Eval("urunresim") %>' Width="193px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style38">
                            <br />
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style33" Text='<%# Eval("urunAd") %>'></asp:Label>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style34" Text='<%# Eval("fiyat") %> '></asp:Label>
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style42" Text="TL"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style39">&nbsp;<asp:Button ID="btnSpt0" runat="server" BackColor="#FF3300" Height="29px" OnClick="Button9_Click" Text="Detay" CommandArgument='<%#Eval("urunkod") %>' CommandName="detay" CssClass="auto-style44" Width="172px" />
                            
                            &nbsp;
                                                
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
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
                    <asp:Button ID="Button3" runat="server" Font-Bold="true" Text="Next" onclick="Button3_Click" Height="29px" Width="44px"   
                     />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Font-Bold="true" Text="Last" onclick="Button4_Click"   
                   />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
