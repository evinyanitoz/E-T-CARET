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
    public partial class anasayfa : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");
        SqlCommand komut = new SqlCommand();

        int CurrentPage;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Panel1.ForeColor = System.Drawing.Color.Black;
                verilistele();
                ViewState["PageCount"] = 0;

            }
            CurrentPage = (int)ViewState["PageCount"];
        }
        private void verilistele()
        {


            baglan.Open();
            komut = new SqlCommand("select *from urunler ", baglan);
            SqlDataAdapter da = new SqlDataAdapter(komut);
            DataTable dt = new DataTable();
            da.Fill(dt);
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
            Btnil.Enabled = !PD.IsFirstPage;
            btn2.Enabled = !PD.IsFirstPage;
            btn4.Enabled = !PD.IsLastPage;
            btn3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList2.DataSource = PD;
            DataList2.DataBind();
            ViewState["PagedDataSurce"] = dt;

           /* PagedDataSource PD = new PagedDataSource();

            PD.DataSource = dt.DefaultView;
            PD.PageSize = 6;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            Btnil.Enabled = !PD.IsFirstPage;
            btn2.Enabled = !PD.IsFirstPage;
            btn4.Enabled = !PD.IsLastPage;
            btn3.Enabled = !PD.IsLastPage;
            ViewState["TotalCount"] = PD.PageCount;
            DataList2.DataSource = PD;
            DataList2.DataBind();
            ViewState["PagedDataSurce"] = dt;*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
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

       

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "detayy")
            {
                Response.Redirect("detay.aspx?id=" + e.CommandArgument.ToString());
            }
            if (e.CommandName == "sepet")
            {
                Response.Redirect("sepet.aspx?idd=" + e.CommandArgument.ToString());

            }
        }
        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }

    
    
}