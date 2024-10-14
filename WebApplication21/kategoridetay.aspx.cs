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
    public partial class kategoridetay : System.Web.UI.Page
    {
        int CurrentPage;
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
        SqlDataReader oku;
        SqlCommand komut;
        SqlDataAdapter data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.ForeColor = System.Drawing.Color.Black;
                Panel1.Visible = true;
                markaveriCek();
                RenkveriCek();
               

                if (!IsPostBack)
                {
                    BindDatList();
                    ViewState["PageCount"] = 0;
                }
                CurrentPage = (int)ViewState["PageCount"];

            }
       
        }
        private void BindDatList()
        {
            int katno = 0;
            katno = Convert.ToInt32(Request.QueryString["katno"]);
            baglan.Open();
            komut = new SqlCommand("select * from urunler where bolumID=@p1", baglan);
            komut.Parameters.AddWithValue("@p1", katno);

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
            PD.PageSize = 6;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            Button1.Enabled = !PD.IsFirstPage;
            Button2.Enabled = !PD.IsFirstPage;
            Button4.Enabled = !PD.IsLastPage;
            Button3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList3.DataSource = PD;
            DataList3.DataBind();
            ViewState["PagedDataSurce"] = dt;
        }
        private void markaveriCek()
        {
            baglan.Open();
            komut = new SqlCommand("Select *from marka", baglan);
            oku = komut.ExecuteReader();
            dpMarka.DataSource = oku;
            while (oku.Read())
            {
                dpMarka.Items.Add(oku["markaAd"].ToString());
                dpMarka.DataValueField = "markaID";

            }
            baglan.Close();

        }
        private void RenkveriCek()
        {
            baglan.Open();
            komut = new SqlCommand("Select *from renk", baglan);
            oku = komut.ExecuteReader();
            dpRenk.DataSource = oku;
            while (oku.Read())
            {
                dpRenk.Items.Add(oku["renkAd"].ToString());
                dpRenk.DataValueField = "renkno";

            }
            baglan.Close();

        }

        


        protected void Button9_Click(object sender, EventArgs e)
        {


        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            CurrentPage = 0;
            DataList3.DataSource = (DataTable)ViewState["PagedDataSurce"];
            DataList3.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["PageCount"];
            CurrentPage -=1;
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

        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void aramabuton_Click2(object sender, EventArgs e)
        {
            int katno = 0;
            katno = Convert.ToInt32(Request.QueryString["katno"]);
            baglan.Open();
            komut = new SqlCommand("Select urunkod,urunAd,fiyat,urunresim,markaAd,renkAd from urunler u left join marka m on u.markaID=m.markaID  left join renk r on u.renkno=r.renkno where markaAd=@p1  and renkAd=@p3  and bolumID=" + katno, baglan);
            komut.Parameters.AddWithValue("@p1", dpMarka.SelectedItem.Text);
            komut.Parameters.AddWithValue("@p3", dpRenk.SelectedItem.Text);
            komut.Parameters.AddWithValue("@p15", dpFiyat.SelectedItem.Text);

            data = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            data.Fill(tablo);

            komut.ExecuteNonQuery();
            baglan.Close();

            DataListPaging(tablo);

        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {

            if (e.CommandName == "detay")
            {
                Response.Redirect("detay.aspx?id=" + e.CommandArgument.ToString());
            }



        }

    }
}