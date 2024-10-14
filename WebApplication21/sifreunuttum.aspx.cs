using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication21
{

    public partial class sifreunuttum : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");

        SqlCommand komut;
        SqlDataAdapter data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                uret();
                Label10.Visible = false;
                Button2.Visible = false;
                Label9.Visible = false;
                Label6.Visible = false;
                Label7.Visible = false;
                txtSifre.Visible = false;
                txtTekrar.Visible = false;
                lblCapt.ForeColor = System.Drawing.Color.White;
                Panel1.ForeColor = System.Drawing.Color.Black;
            }
        }
            protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
            {

                lblCapt.Text = "";
                uret();

            }
            private void uret()
            {
                Random rastgele = new Random();
                string harf = "ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZabcçdefgğhıijklmnoöprsştuüvyz0123456789";
                string uret = "";
                for (int i = 0; i < 10; i++)
                {

                    uret += harf[rastgele.Next(harf.Length)];
                    lblCapt.Text = uret;
                }

            }

            protected void Button1_Click(object sender, EventArgs e)
            {

                kontrol();
            }
            private void kontrol()
            {
                baglan.Open();
                komut = new SqlCommand("Select * from uyeler  where uyemail=@p1", baglan);
                komut.Parameters.AddWithValue("@p1", txtEposta.Text);
                SqlDataReader oku = komut.ExecuteReader();
                if (oku.Read() && lblCapt.Text == txtCapth.Text)
                {
                    Button2.Visible = true;
                    Label6.Visible = true;
                    Label7.Visible = true;
                    txtSifre.Visible = true;
                    txtTekrar.Visible = true;
                    Label9.Visible = true;
                    Label9.ForeColor = System.Drawing.Color.Black;
                    Label9.Text = "Şifreni değiştir";



                }
                else
                {
                    Label9.Visible = true;
                    Label9.ForeColor = System.Drawing.Color.Red;
                    Label9.Text = "**Bilgileri kontrol ediniz**";




                }

                baglan.Close();

            }

            protected void Button2_Click(object sender, EventArgs e)
            {
            kontrol();
                guncelle();
                txtCapth.Text = "";
                txtEposta.Text = "";
                txtSifre.Text = "";
                txtTekrar.Text = "";

                Label10.Visible = true;
                Label10.ForeColor = System.Drawing.Color.Green;
                Label10.Text = "* Şifre güncelleme işleminiz başarılı bir şekilde gerçekleşmiştir.";


            }

            private void guncelle()
            {
                if (txtSifre.Text == txtTekrar.Text)
                {
                    baglan.Open();
                    komut = new SqlCommand("Update  uyeler set uyesifre=@p1 ", baglan);
                    komut.Parameters.AddWithValue("@p1", txtSifre.Text);
                    komut.ExecuteNonQuery();
                    baglan.Close();
                }
                else
                {
                    Label10.Visible = true;
                    Label10.ForeColor = System.Drawing.Color.Red;
                    Label10.Text = "** Şifreler uyuşmuyor!! **";
                }
            }
        }
    }

