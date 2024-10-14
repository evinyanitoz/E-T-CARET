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
    public partial class uyeler : System.Web.UI.Page
    {
        int CurrentPage;
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=True");
        SqlCommand komut;
        SqlDataAdapter data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

                if (!IsPostBack)
                {

                    BindDatList();
                    ViewState["PageCount"] = 0;
                }
                CurrentPage = (int)ViewState["PageCount"];
            }
            else Response.Redirect("admingiris.aspx");
        }
        private void BindDatList()
        {

            baglan.Open();
            komut = new SqlCommand("select u.kullanıcıID,uyekod,uyeAd,uyeSoyad,uyetel,kullanıcıAd,uyemail,aktiflik from uyeler u left join aktiflik k on u.aktifdurumno=k.aktifdurumno ", baglan);


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
            PD.PageSize = 2;
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

        protected void DataList1_Load(object sender, EventArgs e)
        {

            kontrol();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "pasif")
            {
                foreach (DataListItem item in DataList1.Items)
                {

                    Button aktif = ((Button)item.FindControl("btnAktif"));
                    Button pasif = ((Button)item.FindControl("btnPasif"));
                    baglan.Open();
                    komut = new SqlCommand("Update  uyeler set aktifdurumno=2 where aktifdurumno=1 and uyekod=@p2", baglan);
                    komut.Parameters.AddWithValue("@p2", e.CommandArgument.ToString());
                    komut.ExecuteNonQuery();

                    pasif.Enabled = false;
                    baglan.Close();
                    Response.Write("<script>alert('Üye Pasifleştirildi')</script>");
                }
                BindDatList();


            }
            if (e.CommandName == "aktif")
            {
                foreach (DataListItem item in DataList1.Items)
                {

                    Button aktif = ((Button)item.FindControl("btnAktif"));
                    Button pasif = ((Button)item.FindControl("btnPasif"));
                    baglan.Open();
                    komut = new SqlCommand("Update  uyeler set aktifdurumno='1' where aktifdurumno='2' and uyekod=@p2", baglan);
                    komut.Parameters.AddWithValue("@p2", e.CommandArgument.ToString());
                    komut.ExecuteNonQuery();

                    aktif.Enabled = false;
                    baglan.Close();
                    Response.Write("<script>alert('Üye Aktifleştirildi')</script>");
                }

                BindDatList();
            }



            if (e.CommandName == "sil")
            {
                baglan.Open();
                komut = new SqlCommand("Delete from uyeler where uyekod=@p2", baglan);
                komut.Parameters.AddWithValue("@p2", e.CommandArgument.ToString());
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Write("<script>alert('Üye Silindi')</script>");

            }
            BindDatList();

        }
        protected void DataList1_Disposed(object sender, EventArgs e)
        {

        }



        protected void Button10_Click(object sender, EventArgs e)
        {

            baglan.Open();
            int kod = Convert.ToInt32(TextBox1.Text);
            komut = new SqlCommand("select uyekod,uyeAd,uyeSoyad,uyetel,kullanıcıAd,uyemail,k.kullanıcıdurum from uyeler u left join kullanıcıdurumu k on u.kullanıcıID=k.kullanıcıID where uyekod=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", kod);
            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            baglan.Open();
            komut = new SqlCommand("select uyekod,uyeAd,uyeSoyad,uyetel,kullanıcıAd,uyemail,u.kullanıcıdurum,k.kullanıcıID from uyeler u left join kullanıcıdurumu k on u.kullanıcıID=k.kullanıcıID where u.kullanıcıID=1", baglan);

            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            baglan.Open();
            komut = new SqlCommand("select uyekod,uyeAd,uyeSoyad,uyetel,kullanıcıAd,uyemail,k.kullanıcıdurum,u.kullanıcıID from uyeler u left join kullanıcıdurumu k on u.kullanıcıID=k.kullanıcıID where u.kullanıcıID=2", baglan);

            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            BindDatList();
        }

        protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

        }
        private void kontrol()
        {
            /* foreach (DataListItem item in DataList1.Items)
             {

                 Button sil = ((Button)item.FindControl("btnSil"));
                 Button aktif = ((Button)item.FindControl("btnAktif"));
                 Button pasif = ((Button)item.FindControl("btnPasif"));
                 aktif.Enabled = false;
                 pasif.Enabled = false;
                 baglan.Open();
                 komut = new SqlCommand("Select* from uyeler where kulid=1", baglan);
                 SqlDataReader dr;
                 dr = komut.ExecuteReader();
                 if (dr.Read())
                 {
                     pasif.Enabled = true;

                 }
                 else

                 {
                     aktif.Enabled = true;

                 }
                 baglan.Close();
             }
             */
        }
    }
}