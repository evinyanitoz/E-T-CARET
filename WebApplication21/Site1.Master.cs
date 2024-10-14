using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnCikis.Visible = false;
            lblKullanici.Visible = false;
            if (Session["kullanici"] != null)
            {
                btnCikis.Visible = true;
                lblKullanici.Visible = true;
                lblKullanici.ForeColor = System.Drawing.Color.White;
                LinkButton1.Visible = false;
                lblKullanici.Text = "Hoşgeldin," + Session["kullanici"].ToString();

            }
            else
            {
                lblKullanici.Visible = false;
                LinkButton1.Visible = true;
            }

        }

        protected void btnCikis_Click(object sender, EventArgs e)
        {

            Session["kullanici"] = null;
            lblKullanici.Visible = false;
            LinkButton1.Visible = true;
            Response.Redirect("giris.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("giris.aspx");
        }
    }
}