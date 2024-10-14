<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="WebApplication21.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        
        .auto-style35 {
            height: 819px;
            background-color:white;
            margin-top: 12px;
        }
       
        .auto-style44 {
            height: 33px;
        }
                
        

        .auto-style31 {
            margin-top: 0px;
            text-align: center;
        }
        


        .auto-style31 {
            width: 90%;
            height: 301px;
        }
        .auto-style40 {
        width: 455px;
        height: 226px;
    }
                        
        .auto-style45 {
            width: 455px;
        }
                
        .auto-style33 {
            color: #006699;
        }
        .auto-style34 {
            color: #000000;
        }
                
        .auto-style42 {
            color: black;
            height:600px;

        }
        
        .auto-style39 {
        height: 34px;
        width: 455px;
    }
                


        .auto-style36 {
            text-align: center;
            color: black;
        }



        .auto-style36 {
            margin-left: 0px;
        }
                
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

       <div class="auto-style35">
           <asp:Panel ID="Panel1" runat="server" CssClass="auto-style38" Font-Bold="True" GroupingText="Ürünler" Height="923px" >
               <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style43 auto-style44" GridLines="Horizontal" Height="755px" RepeatColumns="3" Width="256px" OnItemCommand="DataList2_ItemCommand" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                   <FooterStyle BackColor="White" ForeColor="#333333" />
                   <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                   <ItemStyle BackColor="White" ForeColor="#333333" />
                   <ItemTemplate>
                       <table border="0" class="auto-style31" style="border-style: inset; border-width: thin">
                           <tr>
                               <td class="auto-style40">
                                   <asp:Image ID="Image2" runat="server" CssClass="auto-style41" Height="217px" ImageUrl='<%# Eval("urunresim") %>' Width="193px" />
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style45">
                                   <br />
                                   <asp:Label ID="Label8" runat="server" CssClass="auto-style33" Text='<%# Eval("urunAd") %>'></asp:Label>
                                   <asp:Label ID="Label9" runat="server" CssClass="auto-style34" Text='<%# Eval("fiyat") %> '></asp:Label>
                                   <asp:Label ID="Label10" runat="server" CssClass="auto-style42" Text="TL"></asp:Label>
                                   <br />
                               </td>
                           </tr>
                           <tr>
                               <td class="auto-style39">
                                   <asp:Button ID="Button8" runat="server" CssClass="auto-style36" Height="34px" Text="Detay" Width="194px" OnClick="Button8_Click"  CommandName="detayy" CommandArgument='<%#Eval("urunkod")%>' BackColor="#FF3300" />
                               </td>
                           </tr>
                       </table>
                   </ItemTemplate>
                   <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
               </asp:DataList>
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
       </div>

        
   </asp:Content>
