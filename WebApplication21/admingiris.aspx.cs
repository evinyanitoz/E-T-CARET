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
    public partial class admingiris : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
        SqlCommand komut = new SqlCommand();
        DataTable tablo = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Visible = false;
            if (Request.Cookies["cooki"] != null)
            {
                txtKullanici.Text = Request.Cookies["cooki"]["user"];
                txtSifre.Text = Request.Cookies["cooki"]["password"];

            }

        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                HttpCookie cerez = new HttpCookie("cooki");
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
            komut.CommandText = "Select * from admin where adminkullanici='" + kadi + "' and adminsifre='" + sifre + "'";
            komut.Connection = baglan;
            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session.Add("admin", kadi);
                Response.Redirect("uyeler.aspx");
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Giriş Başarısız";
            }

        }
    }
}