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
    public partial class iletisim : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=LAPTOP-F5PIAQHS\BOTANIKSQL;Initial Catalog=tiaret sitesi; Integrated Security=true");
        SqlDataAdapter data;
        SqlCommand komut;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglan.Open();
            komut = new SqlCommand("Insert into iletisim (ad,soyad,eposta,konu,mesaj) values(@p1,@p2,@p3,@p4,@p5)", baglan);
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox4.Text);
            komut.Parameters.AddWithValue("@p4", TextBox5.Text);

            komut.Parameters.AddWithValue("@p5", TextBox6.Text);

            komut.ExecuteNonQuery();
            baglan.Close();
        }
    }
}