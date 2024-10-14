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
    public partial class sifredegistir : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");
        SqlDataAdapter data;
        SqlCommand komut;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Button2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;
            LinkButton2.Visible = false;
            Panel1.ForeColor = System.Drawing.Color.Black;

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            baglan.Open();
            komut = new SqlCommand("Select *from uyeler where uyetel=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox2.Text);
            SqlDataReader dt;
            dt = komut.ExecuteReader();
            if (dt.Read())
            {

                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                Button2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                Label3.Text = "Şifreni Değiştir";
            }
            else
            {
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Kayıtlı telefon numarası bulunamadı !!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == TextBox4.Text)
            {
                baglan.Open();
                komut = new SqlCommand("Update uyeler set uyesifre=@p1 where uyetel='" + TextBox2.Text + "'", baglan);
                komut.Parameters.AddWithValue("@p1", TextBox3.Text);
                komut.ExecuteNonQuery();
                baglan.Close();
                Label3.Visible = true;
                Label4.Visible = false;
                Label5.Visible = false;
                Button2.Visible = false;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                Label2.Visible = false;
                TextBox2.Visible = false;
                ImageButton1.Visible = false;
                LinkButton2.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Green;
                Label3.Text = "Şifre değiştirme işlemi tamamlandı.";
            }
            else
            {

                Label4.Visible = true;
                Label5.Visible = true;
                Button2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                Label3.Visible = true;
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Şifreler aynı değil!!";

            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}
    