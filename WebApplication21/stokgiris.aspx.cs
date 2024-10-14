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
    public partial class stokgiris : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=True");
        SqlCommand komut;
        SqlDataAdapter data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

                Label5.Visible = false;
            }
            else Response.Redirect("admingiris.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            if (txtAd.Text != null && txtKod.Text != null && txtStok.Text != null)
            {
                baglan.Open();
                int kod = Convert.ToInt32(txtKod.Text);
                string ad = txtAd.Text;
                int stok = Convert.ToInt32(txtStok.Text);
                SqlCommand komut = new SqlCommand("Update urunler set urunadedi='" + stok + "' where urunkod='" + kod + "'", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                baglan.Open();
            /* int hareket = 1;
                string tarih = DateTime.Now.Date.ToString();
                komut = new SqlCommand("Insert into stokhareketleri (urunadi,urunkodu,adet,hareketno,tarih) values(@p1,@p2,@p3,@p4,@p5)", baglan);
                komut.Parameters.AddWithValue("@p1", ad);
                komut.Parameters.AddWithValue("@p2", kod);
                komut.Parameters.AddWithValue("@p3", stok);
                komut.Parameters.AddWithValue("@p4", hareket);
                komut.Parameters.AddWithValue("@p5", tarih);
                komut.ExecuteNonQuery();
                baglan.Close();*/
                Response.Write("<script>alert('Stok Güncelleme Başarılı')</script>");
            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Bilgileri eksiksiz girin";
            }
        }
    }
}
