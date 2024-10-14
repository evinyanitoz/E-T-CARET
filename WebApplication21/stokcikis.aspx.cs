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
    public partial class stokcikis : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=True");

        SqlCommand komut;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

                Label5.Visible = false;
            }
            else Response.Redirect("admingiris.aspx");
        }
        /*private void hareketeekle()
        {

            baglan.Open();
            int kod = Convert.ToInt32(txtKod.Text);
            string ad = txtAd.Text;
            int stok = Convert.ToInt32(txtStok.Text);
            int hareket = 2;
            komut = new SqlCommand("Insert into stokhareketleri (urunadi,urunkodu,adet,hareketno) values(@p1,@p2,@p3,@p4)", baglan);
            komut.Parameters.AddWithValue("@p1", ad);
            komut.Parameters.AddWithValue("@p2", kod);
            komut.Parameters.AddWithValue("@p3", stok);
            komut.Parameters.AddWithValue("@p4", hareket);
            komut.ExecuteNonQuery();
            baglan.Close();

        }*/
        private void cikisiyap()
        {
            baglan.Open();
            int kod = Convert.ToInt32(txtKod.Text);
            int stok = Convert.ToInt32(txtStok.Text);
            SqlCommand komut = new SqlCommand("Update urunler set urunadedi-=@p1 where urunkod=@p2", baglan);
            komut.Parameters.AddWithValue("@p1", stok);
            komut.Parameters.AddWithValue("@p2", kod);
            komut.ExecuteNonQuery();
            baglan.Close();
            Response.Write("<script>alert('Stok Güncelleme Başarılı')</script>");


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtAd.Text != null && txtKod.Text != null && txtStok.Text != null)
            {
                baglan.Open();
                int kodd = Convert.ToInt32(txtKod.Text);
                int stokk = Convert.ToInt32(txtStok.Text);
                SqlCommand komut2 = new SqlCommand("Select urunadedi from urunler where urunkod='" + kodd + "'", baglan);
                int urunadet = Convert.ToInt32(komut2.ExecuteScalar());
                baglan.Close();
                if (urunadet >= stokk)

                {

                    cikisiyap();
                   /* hareketeekle();*/


                }

                else
                    Response.Write("<script>alert(' Ürün adedinden fazla stok çıkışı yapamazsınız!!')</script>");


            }
            else
            {
                Label5.Visible = true;
                Label5.Text = "Bilgileri eksiksiz girin";
            }
        }


    }

}
