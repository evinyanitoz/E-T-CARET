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
    public partial class uyelik : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");

        SqlCommand komut;
        bool durum;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label15.Visible = false;
                drpİl.AutoPostBack = true;
                drpİlce.AutoPostBack = true;


                veriCek();
                iliski();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            kontrol();
            if (durum == false)
            {

                Label15.Visible = true;
                Label15.Text = "*Bu kullanıcı adını alamazsın!!";
            }
            else if (Txtsifre.Text != Txttekrar.Text)
            {
                Label15.Visible = true;
                Label15.Text = "**Şifreler Uyuşmuyor**";

            }
            else if (Txtad.Text == "" || Txtkuladi.Text == "" || Txtmail.Text == "" || Txtsifre.Text == "" || Txtsoyad.Text == "" || Txttekrar.Text == "" || Txttel.Text == "" || txtAdres.Text == "")
            {
                Label15.Visible = true;
                Label15.Text = "Alanları eksiksiz bir şekilde doldurun !!";

            }
            else
            {
                veriekle();
                Txtad.Text = "";
                txtAdres.Text = "";
                Txtkuladi.Text = "";
                Txtmail.Text = "";
                Txtsifre.Text = "";
                Txtsoyad.Text = "";
                Txttel.Text = "";
                Txttekrar.Text = "";

            }
        }
        private void veriekle()
        {
            baglan.Open();
            int deger = 1;
            int aktif = 1;
            komut = new SqlCommand("Insert into uyeler (uyeAd,uyeSoyad,kullanıcıAd,uyetel,uyemail,Idil,IdIlce,uyesifre,adres,kullanıcıID,aktifdurumno) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10,@p11)", baglan);
            komut.Parameters.AddWithValue("@p1", Txtad.Text);
            komut.Parameters.AddWithValue("@p2", Txtsoyad.Text);
            komut.Parameters.AddWithValue("@p3", Txtkuladi.Text);
            komut.Parameters.AddWithValue("@p4", Txttel.Text);
            komut.Parameters.AddWithValue("@p5", Txtmail.Text);

            komut.Parameters.AddWithValue("@p6", drpİl.SelectedValue.ToString());
            komut.Parameters.AddWithValue("@p7", drpİlce.SelectedValue.ToString());
            komut.Parameters.AddWithValue("@p8", Txtsifre.Text);
            komut.Parameters.AddWithValue("@p9", txtAdres.Text);
            komut.Parameters.AddWithValue("@p10", deger.ToString());
            komut.Parameters.AddWithValue("@p11", aktif.ToString());

            komut.ExecuteNonQuery();
            baglan.Close();

            Label15.Visible = true;
            Label15.ForeColor = System.Drawing.Color.Green;
            Label15.Text = "Kayıt Başarılı Giriş Ekranından Giriş Yapabilirsiniz.";
        }
            private void kontrol()
        {

            baglan.Open();
            SqlCommand komut2 = new SqlCommand("Select * from uyeler where kullanıcıAd=@p1", baglan);
            komut2.Parameters.AddWithValue("@p1", Txtkuladi.Text);
            SqlDataReader dra = komut2.ExecuteReader();
            if (dra.Read())
            {
                durum = false;
            }
            else durum = true;



            baglan.Close();

        }
       

        protected void drpİl_TextChanged(object sender, EventArgs e)
        {
            drpİlce.Enabled = true;
            iliski();
        }
        private void veriCek()
        {


            baglan.Open();
            komut = new SqlCommand("Select * from sehir", baglan);
            SqlDataAdapter data = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            data.Fill(tablo);
            drpİl.Items.Clear();
            for (int i = 0; i < tablo.Rows.Count; i++)
            {
                drpİl.Items.Add(tablo.Rows[i]["SehirName"].ToString());
                drpİl.Items[i].Value = tablo.Rows[i]["Id"].ToString();

            }
            baglan.Close();

        }
        private void iliski()
        {
           
            baglan.Open();
            komut = new SqlCommand("Select * from Ilce where SehirId='" + drpİl.SelectedValue + "'", baglan);
            SqlDataAdapter dataa = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            dataa.Fill(tablo);
            drpİlce.Items.Clear();
            for (int i = 0; i < tablo.Rows.Count; i++)
            {
                drpİlce.Items.Add(tablo.Rows[i]["IlceName"].ToString());
                drpİlce.Items[i].Value = tablo.Rows[i]["Id"].ToString();

            }
            baglan.Close();
        }

        protected void Txtkuladi_TextChanged(object sender, EventArgs e)
        {

        }

        protected void drpİl_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void drpİlce_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
    }
