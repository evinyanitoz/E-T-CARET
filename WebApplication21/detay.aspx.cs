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
    public partial class detay : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
        bool durum;
        SqlCommand komut;
        SqlDataAdapter data;
        protected void Page_Load(object sender, EventArgs e)
        {
            int kod = Convert.ToInt32(Request.QueryString["id"]);

            baglan.Open();
            komut = new SqlCommand("Select urunadedi,urunkod,u.urunresim ,u.fiyat, u.urunAd,m.markaAd,r.renkAd ,urunacik,s.stokdurum  from urunler  u left join marka m on u.markaID=m.markaID left join renk r on  u.renkno=r.renkno left join stok  s on  u.stokkod=s.stokkod WHERE urunkod=" + kod, baglan);
            data = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            data.Fill(tablo);
            FormView1.DataSource = tablo;
            FormView1.DataBind();
            baglan.Close();

        }
        private void urunstokkontrol()
        {

            DropDownList adet = ((DropDownList)FormView1.FindControl("adet"));
            Label fiyat = ((Label)FormView1.FindControl("fiyat"));
            Image resim = ((Image)FormView1.FindControl("resim"));
            baglan.Open();

            int kod = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand komut1 = new SqlCommand("Select * from urunler where urunadedi<'" + adet.SelectedItem + "' and urunkod=@p1", baglan);
            komut1.Parameters.AddWithValue("@p1", kod);
            SqlDataReader oku;
            oku = komut1.ExecuteReader();
            if (oku.Read())
            {
                durum = true;
            }
            else
                durum = false;
            baglan.Close();

        }
        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)

        {

            if (e.CommandName == "sepett")
            {
                if (Session["uye"] != null)
                {
                    DropDownList adet= ((DropDownList)FormView1.FindControl("adet"));
                    Label fiyat = ((Label)FormView1.FindControl("fiyat"));
                    Image resim = ((Image)FormView1.FindControl("resim"));

                    urunstokkontrol();
                    if (durum == false)
                    {
                        urunvarmi();
                        if (durum == true)
                        {
                            urundenvarsa();
                        }
                        else
                        {
                            baglan.Open();
                        int  tfiyat = Convert.ToInt32(fiyat.Text) * Convert.ToInt32(adet.Text);
                            string uyekod = Session["uye"].ToString();
                            komut = new SqlCommand("Insert into sepet (urunkod,urunfiyati,urunadedi,urunresim,totalfiyat,uyekod) values(@p1,@p2,@p3,@p4,@p5,@p6)", baglan);
                            komut.Parameters.AddWithValue("@p1", e.CommandArgument.ToString());
                            komut.Parameters.AddWithValue("@p2", fiyat.Text);
                            komut.Parameters.AddWithValue("@p3", adet.SelectedItem.ToString());
                            komut.Parameters.AddWithValue("@p4", resim.ImageUrl);
                            komut.Parameters.AddWithValue("@p5", tfiyat.ToString());
                            komut.Parameters.AddWithValue("@p6", uyekod);
                            komut.ExecuteNonQuery();
                            baglan.Close();
                            Response.Write("<script>alert('Ürün sepete eklendi')</script>");
                            Response.Redirect("sepet.aspx?kod=" + e.CommandArgument.ToString());
                        }

                    }

                    else if (durum == true)

                        Response.Write("<script>alert('Bu üründen en fazla stok sayısı kadar alabilirsiniz')</script>");


                    }


                    else
                    {
                        Response.Write("<script>alert('Ürün Siparişlere Eklendi')</script>");
                        Response.Redirect("giris.aspx");
                    }
                }
            }


            private void urundenvarsa()

            {



                baglan.Open();

                Label kod = ((Label)FormView1.FindControl("Label33"));
                DropDownList adett = ((DropDownList)FormView1.FindControl("adet"));
                int secilen = Convert.ToInt32(adett.SelectedItem.ToString());
                Label fiyat = ((Label)FormView1.FindControl("fiyat"));
                int toplamfiyat = (Convert.ToInt32(adett.SelectedItem.ToString())) * (Convert.ToInt32(fiyat.Text));
                SqlCommand komut2 = new SqlCommand("Update sepet set urunadedi+='" + adett.SelectedItem + "', totalfiyat+='" + toplamfiyat + "' where urunkod='" + kod.Text + "'", baglan);
                komut2.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("sepet.aspx");
                // Response.Redirect("sepet.aspx?kod=" + e.CommandArgument.ToString());



            }
            private void urunvarmi()
            {

                baglan.Open();
                Label kod = ((Label)FormView1.FindControl("Label33"));
                komut = new SqlCommand("Select * from sepet where urunkod='" + kod.Text + "'", baglan);
                SqlDataReader oku;
                oku = komut.ExecuteReader();
                if (oku.Read())
                {

                    durum = true;
                }
                else durum = false;
                baglan.Close();




            }

            protected void Button1_Click1(object sender, EventArgs e)
            {

            }

            protected void FormView1_Load(object sender, EventArgs e)
            {

            }
        }
    
}