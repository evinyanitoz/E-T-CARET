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
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-IPSH227\SQLEXPRESS01;Initial Catalog=tiaret sitesi;Integrated Security=true");
        SqlCommand komut = new SqlCommand();
        DataTable tablo = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            lblKullanici.Visible = false;
            Button1.Visible = false;
            if (Session["admin"] != null)
            {
                Button1.Visible = true;
                lblKullanici.Visible = true;
                lblKullanici.Text = "Hoşgeldiniz" +" "+ Session["admin"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            lblKullanici.Visible = false;
            Button1.Visible = false;
            Response.Redirect("admingiris.aspx");

        }
    }
}