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
    public partial class siparisler : System.Web.UI.Page
    {
        int CurrentPage;
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi;Integrated Security=true");
    
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
                onaybekleyensayisi();
                tumsiparisayisi();
                CurrentPage = (int)ViewState["PageCount"];
            }
            else Response.Redirect("admingiris.aspx");
        }
        private void BindDatList()
        {

            baglan.Open();
            komut = new SqlCommand("select  sipariskod,ss.siparisdurum,u.urunAd,k.kargodurum,uye.uyeAd,uye.uyeSoyad,uye.uyetel,uye.adres, s.adet, s.fiyat, toplamtutar,siparistarih,s.urunresim from siparis s left join urunler u on s.urunkod=u.urunkod left join kargo k on s.kargodurumno=k.kargodurumno left join uyeler uye on s.uyekod=uye.uyekod left join siparisdurum ss on s.siparisdurumno=ss.siparisdurumno", baglan);
            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);


        }
        private void onaybekleyensayisi()
        {

            baglan.Open();
            SqlCommand komut = new SqlCommand("select count(*) from siparis where siparisdurumno='1'", baglan);

            Label1.Text = komut.ExecuteScalar().ToString();
            baglan.Close();

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
        private void tumsiparisayisi()
        {

            baglan.Open();
            SqlCommand komut = new SqlCommand("select count(*) from siparis", baglan);

            Label2.Text = komut.ExecuteScalar().ToString();
            baglan.Close();

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
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            BindDatList();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            baglan.Open();
            komut = new SqlCommand("select s.siparisdurumno, sipariskod,siparisdurum,urunAd,kargodurum,uye.uyeAd,uuye.uyeSoyad,uye.uyetel,uye.adres, s.adet, s.fiyat, toplamtutar,siparistarih,s.urunresim from siparis s left join urunler u on s.urunkod=u.urunkod left join kargodurum k on s.kargodurumno=k.kargodurumno left join uyeler uye on s.uyekod=uye.uyekod left join siparisdurum ss on s.siparisdurumno=ss.siparisdurumno where s.siparisdurumno='1'", baglan);
            data = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            data.Fill(dt);
            baglan.Close();

            DataListPaging(dt);
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "sipOnay")
            {
                foreach (DataListItem item in DataList1.Items)
                {
                    Button btn = ((Button)item.FindControl("Button2"));


                    baglan.Open();
                    komut = new SqlCommand("Update siparis set siparisdurumno='2' where siparisdurumno='1' and sipariskod=" + e.CommandArgument.ToString(), baglan);
                    data = new SqlDataAdapter(komut);
                    DataTable dt = new DataTable();
                    data.Fill(dt);
                    baglan.Close();
                    btn.Visible = false;

                    Response.Write("<script>alert('Siparişiniz Onayladı')</script>");

                }
                BindDatList();


            }
        }

                protected void Button2_Click1(object sender, EventArgs e)
                {

                }
            }
        }
    