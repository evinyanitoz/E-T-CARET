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
    public partial class giris : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
        SqlCommand komut = new SqlCommand();
        DataTable tablo = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
            if (Request.Cookies["cookie"] != null)
            {
                txtKullanici.Text = Request.Cookies["cookie"]["user"];
                txtSifre.Text = Request.Cookies["cookie"]["password"];

            }
        }
            protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                HttpCookie cerez = new HttpCookie("cookie");
                cerez.Values["user"] = txtKullanici.Text;
                cerez.Values["password"] = txtSifre.Text;
                cerez.Expires = DateTime.Now.AddMinutes(30);
                Response.Cookies.Add(cerez);


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kadi = txtKullanici.Text;
            string sifre = txtSifre.Text;


            baglan.Open();
            komut.CommandText = "Select * from uyeler where kullanıcıAd='" + kadi + "' and uyesifre='" + sifre + "' and kullanıcıID='1'";
            komut.Connection = baglan;
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                string uye = oku["uyekod"].ToString();
                Session.Add("kullanici", kadi);
                Session.Add("uye", uye);
                Response.Redirect("anasayfa.aspx");

            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Giriş Başarısız";
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sifreunuttum.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("sifredegistir.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("admingiris.aspx");
        }
    }
}