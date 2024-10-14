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
    public partial class urunler : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
       
        SqlCommand komut;
        SqlDataAdapter data;
        int CurrentPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {


                if (!IsPostBack)
                {
                    urunoku();
                    Panel2.ForeColor = System.Drawing.Color.Black;

                    Panel1.ForeColor = System.Drawing.Color.Black;
                    Panel2.ForeColor = System.Drawing.Color.Black;
                    Label19.Visible = false;
                    BindDatList();
                    ViewState["PageCount"] = 0;
                    drpVericek();
                }



                CurrentPage = (int)ViewState["PageCount"];
            }
            else Response.Redirect("admingiris.aspx");

        }
        private void urunoku()
        {
            foreach (DataListItem item in DataList1.Items)
            {
                DropDownList kategori = ((DropDownList)item.FindControl("drpKat"));
                DropDownList marka = ((DropDownList)item.FindControl("drpMarka0"));
                DropDownList renk = ((DropDownList)item.FindControl("drpRenk0"));
                DropDownList beden = ((DropDownList)item.FindControl("drpBeden0"));
                komut = new SqlCommand("select  urunAd,urunkod,markaAd,renkAd,urunresim from urunler u left join renk r on u.renkno=r.renkno left join marka m on u.markaID=m.markaID left join bolum b on u.bolumID=b.katno ", baglan);
                SqlDataReader dr;
                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    kategori.DataSource = dr;
                    kategori.DataTextField = "bolumAd";
                    kategori.DataValueField = "bolumID";
                    kategori.DataBind();
                    beden.DataSource = dr;
                    
                    marka.DataSource = dr;
                    marka.DataTextField = "markaAd";
                    marka.DataValueField = "markaID";
                    marka.DataBind();
                    renk.DataSource = dr;
                    renk.DataTextField = "renkAd";
                    renk.DataValueField = "renkno";
                    renk.DataBind();
                }
                baglan.Close();



            }
        }
        private void BindDatList()
        {

            baglan.Open();
            komut = new SqlCommand("select  * from urunler u left join bolum k on u.bolumID=k.bolumID left join renk r on u.renkno=r.renkno left join marka m on u.markaID=m.markaID ", baglan);
            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);


        }
        private void DataListPaging(DataTable dt)
        {
            //creating object of PagedDataSource;  


            PagedDataSource PD = new PagedDataSource();

            PD.DataSource = dt.DefaultView;
            PD.PageSize = 1;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            Button1.Enabled = !PD.IsFirstPage;
            Button2.Enabled = !PD.IsFirstPage;
            Button4.Enabled = !PD.IsLastPage;
            Button3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList1.DataSource = PD;
            DataList1.DataBind();
            ViewState["PagedDataSurce"] = dt;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            CurrentPage = 0;
            DataList1.DataSource = (DataTable)ViewState["PagedDataSurce"];
            DataList1.DataBind();
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

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }




        protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
        {


        }

        protected void Button5_Click(object sender, EventArgs e)
        {


            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/resimler/" + FileUpload1.FileName));
                baglan.Open();
                komut = new SqlCommand("Insert into urunler(urunAd,markaID,renkno,fiyat,urunacik,bolumID,urunresim,urunadedi) values (@p1,@p2,@p4,@p5,@p7,@p8,@p9,@p10)", baglan);
                komut.Parameters.AddWithValue("@p1", txtAd.Text);
                komut.Parameters.AddWithValue("@p2", drpMarka.SelectedValue);
              
                komut.Parameters.AddWithValue("@p4", drpRenk.SelectedValue.ToString());
                komut.Parameters.AddWithValue("@p5", txtFiyat.Text);
                komut.Parameters.AddWithValue("@p7", txtAcik.Text);
                komut.Parameters.AddWithValue("@p8", drpKatno.SelectedValue);
                komut.Parameters.AddWithValue("@p9", "~/Resimler/" + FileUpload1.FileName);
                komut.Parameters.AddWithValue("@p10", txtAdet.Text);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Write("<script>alert('Ürün Eklendi')</script>");
                BindDatList();
            }
            else
            {

                Label19.Visible = true;
                Label19.Text = "** Bir dosya seçiniz";
            }

        }
        private void drpVericek()
        {

            baglan.Open();
            komut = new SqlCommand("Select *from bolum", baglan);
            SqlDataAdapter data = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            data.Fill(tablo);
            drpKatno.DataSource = tablo;
            drpKatno.DataTextField = "bolumAd";
            drpKatno.DataValueField = "bolumID";
            drpKatno.DataBind();
            baglan.Close();



            /*baglan.Open();
            komut = new SqlCommand("Select *from beden", baglan);
            SqlDataAdapter data2 = new SqlDataAdapter(komut);
            DataTable tablo2 = new DataTable();
            data2.Fill(tablo2);
            drpBeden.DataSource = tablo2;
            drpBeden.DataTextField = "bedenadi";
            drpBeden.DataValueField = "bedno";
            drpBeden.DataBind();
            baglan.Close(); 
            */




            baglan.Open();
            komut = new SqlCommand("Select *from marka", baglan);
            SqlDataAdapter data3 = new SqlDataAdapter(komut);
            DataTable tablo3 = new DataTable();
            data3.Fill(tablo3);
            drpMarka.DataSource = tablo3;
            drpMarka.DataTextField = "markaAd";
            drpMarka.DataValueField = "markaID";
            drpMarka.DataBind();
            baglan.Close();





            baglan.Open();
            komut = new SqlCommand("Select *from renk", baglan);
            SqlDataAdapter data4 = new SqlDataAdapter(komut);
            DataTable tablo4 = new DataTable();
            data4.Fill(tablo4);
            drpRenk.DataSource = tablo4;
            drpRenk.DataTextField = "renkAd";
            drpRenk.DataValueField = "renkno";
            drpRenk.DataBind();
            baglan.Close();



        }







        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {



            if (e.CommandName == "güncelle")
            {
                foreach (DataListItem item in DataList1.Items)
                {
                    if (txtAd.Text != null && txtAcik.Text != null && txtFiyat.Text != null)
                    {
                        Label mesajverecek = ((Label)item.FindControl("Label32"));
                        mesajverecek.Visible = false;
                        TextBox txtAd = ((TextBox)item.FindControl("txtAd"));
                        TextBox txtAdet = ((TextBox)item.FindControl("txtAdet"));
                        TextBox txtFiyat = ((TextBox)item.FindControl("txtFiyat"));
                        TextBox txtAcik = ((TextBox)item.FindControl("txtAcik"));
                        DropDownList drpRenk = ((DropDownList)item.FindControl("drpRenk0"));
                        DropDownList drpMarka = ((DropDownList)item.FindControl("drpMarka0"));
                        DropDownList drpKategori = ((DropDownList)item.FindControl("drpKat"));
                   
                        FileUpload FileUpload2 = ((FileUpload)item.FindControl("FileUpload2"));


                        baglan.Open();
                        komut = new SqlCommand("Update  urunler set urunAd=@p1, fiyat=@p3 , urunacik=@p4 where urunkod=" + e.CommandArgument.ToString(), baglan);
                        komut.Parameters.AddWithValue("@p1", txtAd.Text);

                        komut.Parameters.AddWithValue("@p3", txtFiyat.Text);
                        komut.Parameters.AddWithValue("@p4", txtAcik.Text);

                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Response.Write("<script>alert('Ürün Güncellendi')</script>");
                    }
                    else Response.Write("<script>alert('Boş alanları doldurun!!')</script>");
                }
                BindDatList();

            }
            if (e.CommandName == "sil")
            {


                baglan.Open();
                komut = new SqlCommand("Delete  from urunler where urunkod=@p1", baglan);
                komut.Parameters.AddWithValue("@p1", e.CommandArgument.ToString());
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Write("<script>alert('Ürün Silindi')</script>");
                BindDatList();

            }

        }



        protected void DataList1_Load(object sender, EventArgs e)
        {


        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            baglan.Open();
            int urunkodu = Convert.ToInt32(txtBul.Text);
            komut = new SqlCommand("select  * from urunler u left join bolum k on u.bolumID=k.bolumID left join renk r on u.renkno=r.renkno inner join marka m on u.markaID=m.markaID  where urunkod=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", urunkodu);
            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();
            komut.Dispose();

            DataListPaging(dt);
        }

        protected void txtBul_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }

        private void datalistDrpDoldur()
        {

            foreach (DataListItem item in DataList1.Items)
            {
                DropDownList renk = ((DropDownList)item.FindControl("drpRenk"));
                DropDownList marka = ((DropDownList)item.FindControl("drpMarka"));
                DropDownList kategori = ((DropDownList)item.FindControl("drpKategori"));
               



                baglan.Open();
                komut = new SqlCommand("Select *from renk", baglan);
                SqlDataAdapter data = new SqlDataAdapter(komut);
                DataTable tablo = new DataTable();
                data.Fill(tablo);
                renk.DataSource = tablo;
                renk.DataTextField = "renkAd";
                renk.DataValueField = "renkno";
                DataListPaging(tablo);
                renk.DataBind();
                baglan.Close();

                baglan.Open();
                komut = new SqlCommand("Select *from bolum", baglan);
                SqlDataAdapter data4 = new SqlDataAdapter(komut);
                DataTable tablo4 = new DataTable();
                data4.Fill(tablo4);
                kategori.DataTextField = "bolumAd";
                kategori.DataValueField = "bolumID";
                kategori.DataSource = tablo;
                kategori.DataBind();
                baglan.Close();


               /* baglan.Open();
                komut = new SqlCommand("Select *from beden", baglan);
                SqlDataAdapter data2 = new SqlDataAdapter(komut);
                DataTable tablo2 = new DataTable();
                data2.Fill(tablo2);
                beden.DataSource = tablo2;
                beden.DataTextField = "bedenadi";
                beden.DataValueField = "bedno";
                beden.DataBind();
                baglan.Close();
               */



                baglan.Open();
                komut = new SqlCommand("Select *from marka", baglan);
                SqlDataAdapter data3 = new SqlDataAdapter(komut);
                DataTable tablo3 = new DataTable();
                data3.Fill(tablo3);
                marka.DataSource = tablo3;
                marka.DataTextField = "markaAd";
                marka.DataValueField = "markaID";
                marka.DataBind();
                baglan.Close();


            }
        }
    }
}

