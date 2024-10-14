using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication21
{
    public partial class siparis : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");
        SqlDataAdapter data;
        SqlCommand komut;
        int CurrentPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] != null)
            {
                ViewState["PageCount"] = 0;

                verilistele();
                CurrentPage = (int)ViewState["PageCount"];
            }
            else Response.Redirect("giris.aspx");
        

        }
        private void DataListPaging(DataTable dt)
        {
            //creating object of PagedDataSource;  


            PagedDataSource PD = new PagedDataSource();

            PD.DataSource = dt.DefaultView;
            PD.PageSize = 3;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            Button1.Enabled = !PD.IsFirstPage;
            Button2.Enabled = !PD.IsFirstPage;
            Button4.Enabled = !PD.IsLastPage;
            Button3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList2.DataSource = PD;
            DataList2.DataBind();
            ViewState["PagedDataSurce"] = dt;
        }

        private void verilistele()
        {


            baglan.Open();

            komut = new SqlCommand("Select uyekod,k.kargodurum,siparistarih, u.urunAd,sipariskod,toplamtutar,ss.siparisdurum,adet,s.urunresim,s.fiyat from siparis s left join urunler u on s.urunkod=u.urunkod  left join siparisdurum ss on s.siparisdurumno=ss.siparisdurumno left join kargo k on s.kargodurumno=k.kargodurumno where uyekod=@p1 ", baglan);
            komut.Parameters.AddWithValue("@p1", Session["uye"].ToString());
            data = new SqlDataAdapter(komut);
            DataTable tablo = new DataTable();
            data.Fill(tablo);
            baglan.Close();

            DataListPaging(tablo);

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            DataList2.DataSource = (DataTable)ViewState["PagedDataSurce"];
            DataList2.DataBind();

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
    }
}
    
