using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication21
{
    public partial class stok : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

            }
            else Response.Redirect("admingiris.aspx");
        }
        protected void btnGrs_Click(object sender, EventArgs e)
        {
            Response.Redirect("stokgiris.aspx");
        }

        protected void btnCks_Click(object sender, EventArgs e)
        {
            Response.Redirect("stokcikis.aspx");
        }

        protected void btnStok_Click(object sender, EventArgs e)
        {
            Response.Redirect("stokhareket.aspx");
        }
    }
}
    