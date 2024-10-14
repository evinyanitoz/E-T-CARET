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
    public partial class sepet : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");
        SqlDataAdapter data;
        SqlCommand komut;
        int CurrentPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["kullanici"] != null)
                {
                    ViewState["PageCount"] = 0;
                    sepeturunsayisi();
                    verilistele();

                }
                else Response.Redirect("giris.aspx");


                CurrentPage = (int)ViewState["PageCount"];

            }

        }


        private void DataListPaging(DataTable dt)
        {
            //creating object of PagedDataSource;  


            PagedDataSource PD = new PagedDataSource();

            PD.DataSource = dt.DefaultView;
            PD.PageSize = 3;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            Btnil.Enabled = !PD.IsFirstPage;
            btn2.Enabled = !PD.IsFirstPage;
            btn4.Enabled = !PD.IsLastPage;
            btn3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList3.DataSource = PD;
            DataList3.DataBind();
            ViewState["PagedDataSurce"] = dt;
        }


        private void verilistele()
        {


            baglan.Open();
            komut = new SqlCommand("select *from sepet where uyekod=@p1 ", baglan);
            komut.Parameters.AddWithValue("@p1", Session["uye"].ToString());
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
            baglan.Close();

            DataListPaging(dt);

        }


        private void sepeturunsayisi()
        {
            baglan.Open();
            komut = new SqlCommand("select count(*)from sepet where uyekod=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", Session["uye"].ToString());
            lblspt.Text = komut.ExecuteScalar().ToString();
            baglan.Close();



        }




        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            DataList3.DataSource = (DataTable)ViewState["PagedDataSurce"];
            DataList3.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["PageCount"];
            CurrentPage -= 1;
            ViewState["PageCount"] = CurrentPage;

            DataListPaging((DataTable)ViewState["PagedDataSurce"]);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["PageCount"];
            CurrentPage += 1;
            ViewState["PageCount"] = CurrentPage;
            DataListPaging((DataTable)ViewState["PagedDataSurce"]);

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["TotalCount"] - 1;
            DataListPaging((DataTable)ViewState["PagedDataSurce"]);
        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "siparis")
            {

                //kontrollere ulaşmak için DatalistItem lar içerisinde dolaşmanız gerekiyor:

                foreach (DataListItem item in DataList3.Items)
                {
                    if (Session["uye"] != null)
                    {
                        Label kod = ((Label)item.FindControl("kod"));
                        Label fiyat = ((Label)item.FindControl("fiyat"));


                        Label adet = ((Label)item.FindControl("adet"));
                        Label toplam = ((Label)item.FindControl("toplam"));
                        Image resim = ((Image)item.FindControl("resim"));
                        baglan.Open();
                       string tarih = DateTime.Now.ToString();
                     int sayı = 1;
                       int sayı2 = 2;

                        //    int tfiyat = ((Convert.ToInt32(fiyat.Text)) * (Convert.ToInt32(adet.Text)));
                        komut = new SqlCommand("Insert into siparis (urunkod,adet,urunresim,toplamtutar,fiyat,uyekod,siparisdurumno,kargodurumno,siparistarih) values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)", baglan);
                        komut.Parameters.AddWithValue("@p1", e.CommandArgument.ToString());
                        komut.Parameters.AddWithValue("@p2", adet.Text);
                        komut.Parameters.AddWithValue("@p3", resim.ImageUrl);
                        komut.Parameters.AddWithValue("@p4", toplam.Text);

                        komut.Parameters.AddWithValue("@p5", fiyat.Text);
                
                        komut.Parameters.AddWithValue("@p6", Session["uye"].ToString());
                        komut.Parameters.AddWithValue("@p7", sayı.ToString());
                        komut.Parameters.AddWithValue("@p8", sayı2.ToString());
                        komut.Parameters.AddWithValue("@p9", tarih);
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        baglan.Open();
                        komut = new SqlCommand("Delete from sepet where urunkod=@p1", baglan);
                        komut.Parameters.AddWithValue("@p1", e.CommandArgument.ToString());
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        urunazalt();
                        Response.Write("<script>alert('Ürün Siparişlere Eklendi')</script>");
                        Response.Redirect("siparis.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Önce giriş yapmalısınız!!')</script>");
                        Response.Redirect("giris.aspx");
                    }
                    /*baglan.Open();
                    string kodd = e.CommandArgument.ToString();
                    int secilen = Convert.ToInt32(adet.Text);
                    komut = new SqlCommand("Select adet from sepet where urunkodu='" + kod + "'", baglan);
                   
                    
                    int  sepetadet = komut.ExecuteNonQuery();
                    int azalt = sepetadet - secilen;
                    SqlCommand komut2 = new SqlCommand("Update sepet set adet=@p1 where urunkodu='" + kod + "'", baglan);
                    komut2.Parameters.AddWithValue("@p1", azalt.ToString());
                    komut2.ExecuteNonQuery();
                    baglan.Close();
                    */
                }


            }


            if (e.CommandName == "sil")
            {
                baglan.Open();
                komut = new SqlCommand("Delete from sepet where urunkod=@p1", baglan);
                komut.Parameters.AddWithValue("@p1", e.CommandArgument.ToString());
                komut.ExecuteNonQuery();
                baglan.Close();
                sepeturunsayisi();
                verilistele();
            }
        }

        protected void DataList3_Load(object sender, EventArgs e)
        {



        }
        private void urunazalt()
        {
            foreach (DataListItem item in DataList3.Items)
            {
                Label kod = ((Label)item.FindControl("kod"));
                Label adet = ((Label)item.FindControl("adet"));
                baglan.Open();
                komut = new SqlCommand("Update urunler set urunadedi-=@p1 where urunkod=@p2", baglan);
                komut.Parameters.AddWithValue("@p1", adet.Text);
                komut.Parameters.AddWithValue("@p2", kod.Text);
                komut.ExecuteNonQuery();
                baglan.Close();

            }


        }

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

    