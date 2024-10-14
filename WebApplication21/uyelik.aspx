<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uyelik.aspx.cs" Inherits="WebApplication21.uyelik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style35 {
            width: 555px;
            height: 497px;
            margin-right: 171px;
            margin-left: 44px;
            margin-top: 15px;
        }
        .auto-style58 {
            height: 20px;
            color: black;
        }
        .auto-style55 {
            width: 135px;
            height: 20px;
            color: black;
        }
        .auto-style46 {
            height: 20px;
            width: 344px;
        }
        .auto-style47 {
            width: 135px;
            height: 1px;
        }
        .auto-style59 {
            color: #000000;
        }
        .auto-style48 {
            width: 344px;
            height: 1px;
        }
        .auto-style30 {
            margin-top: 3px;
        }
        .auto-style49 {
            width: 135px;
            height: 26px;
        }
        .auto-style50 {
            width: 344px;
            height: 26px;
        }
        .auto-style51 {
            width: 135px;
            height: 24px;
            color: black;
        }
        .auto-style52 {
            width: 344px;
            height: 24px;
        }
        .auto-style53 {
            width: 135px;
            height: 6px;
            color: black;
        }
        .auto-style54 {
            height: 6px;
            width: 344px;
        }
        .auto-style43 {
            width: 135px;
            height: 32px;
        }
        .auto-style68 {
            color: #000000;
        }
        .auto-style44 {
            width: 344px;
            height: 32px;
        }
        .auto-style62 {
            width: 135px;
            height: 49px;
        }
        .auto-style63 {
            width: 344px;
            height: 49px;
        }
        .auto-style70 {
        width: 135px;
        height: 15px;
    }
    .auto-style71 {
        width: 344px;
        height: 15px;
    }
        .auto-style56 {
            width: 135px;
            height: 68px;
        }
        .auto-style57 {
            width: 344px;
            height: 68px;
        }
        #txtAdres {
            height: 97px;
        }
        .auto-style60 {
            width: 135px;
            height: 67px;
        }
        .auto-style61 {
            width: 344px;
            height: 67px;
        }
        .auto-style69 {
            color: #FF3300;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        
    <table class="auto-style35" style="border-width: thin; border-style: solid; background-color: #f5f5f9">
        <tr>
            <td class="auto-style58" style="color: #000000; font-weight: bold;" colspan="2">
                <br />
                <strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ÜYE KAYIT FORMU
                <br />
                </strong><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style55" style="color: #000000; ">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Text="Adınız :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="background-color: #f5f5f9" class="auto-style46">
                <asp:TextBox ID="Txtad" runat="server" Height="23px" Width="166px" ValidationGroup="Boş Geçilemez !"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style47">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" CssClass="auto-style59" Text="Soyadınız :"></asp:Label>
                <br />
                <span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></td>
            <td class="auto-style48">
                <asp:TextBox ID="Txtsoyad" runat="server" CssClass="auto-style30" Height="24px" Width="168px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style49">
                <asp:Label ID="Label7" runat="server" CssClass="auto-style59" Text="Kullanıcı Adı :"></asp:Label>
                <br />
                <span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></span></td>
            <td class="auto-style50">
                <asp:TextBox ID="Txtkuladi" runat="server" Height="23px" Width="166px" OnTextChanged="Txtkuladi_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style51"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><asp:Label ID="Label8" runat="server" CssClass="auto-style59" Text="Telefon :"></asp:Label>
            </td>
            <td class="auto-style52">
                <asp:TextBox ID="Txttel" runat="server" Height="23px" Width="166px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style53"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</strong><asp:Label ID="Label9" runat="server" CssClass="auto-style59" Text="E-mail :"></asp:Label>
            </td>
            <td class="auto-style54">
                <asp:TextBox ID="Txtmail" runat="server" Height="23px" Width="166px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style55">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" CssClass="auto-style59" Text="İl :"></asp:Label>
            </td>
            <td class="auto-style46">
                <asp:DropDownList ID="drpİl" runat="server" CssClass="auto-style66" Height="23px" Width="118px" OnSelectedIndexChanged="drpİl_SelectedIndexChanged" OnTextChanged="drpİl_TextChanged">
                </asp:DropDownList>
                &nbsp&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style43">
                &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label14" runat="server" CssClass="auto-style68" Text="İlçe :"></asp:Label>
            </td>
            <td class="auto-style44">
                <asp:DropDownList ID="drpİlce" runat="server" Height="27px" Width="115px" OnSelectedIndexChanged="drpİlce_SelectedIndexChanged">
                </asp:DropDownList>
                &nbsp&nbsp;&nbsp;
                <br />
                </td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" CssClass="auto-style59" Text="Şifre  :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="auto-style63">
                <asp:TextBox ID="Txtsifre" runat="server" Height="23px" Width="168px" TextMode="Password" CssClass="auto-style65" ></asp:TextBox> 
            </td>
        </tr>
      
        <tr>
            <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" CssClass="auto-style59" Text="Şifre  Tekrar  :"></asp:Label>
                </td>
            <td class="auto-style71">
                &nbsp;<br />
                &nbsp;<asp:TextBox ID="Txttekrar" runat="server" Height="22px" TextMode="Password" Width="165px" CssClass="auto-style64"></asp:TextBox> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <br />

              &nbsp;&nbsp; 
                                  
                <br />
            </td>
        </tr>
      
        <tr>
            <td class="auto-style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                <asp:Label ID="Label16" runat="server" CssClass="auto-style59" Text="Adres :"></asp:Label>
            </td>
            <td class="auto-style57">
                <asp:TextBox ID="txtAdres" runat="server" Height="69px" TextMode="MultiLine" Width="165px"></asp:TextBox>  
                <br />
                <br />
            </td>
        </tr>
      
        <tr>
            <td class="auto-style60"></td>
            <td class="auto-style61">
                <br />
                <asp:Button ID="Button1" runat="server" Height="41px" Text="KAYDOL" Width="179px" OnClick="Button1_Click" Font-Bold="True" /> 
                <br />
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" CssClass="auto-style69" Text="Label"></asp:Label>
            </td>
        </tr>
      
    </table>

</asp:Content>
