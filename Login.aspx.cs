using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Bill
{
    public partial class Login : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["shabeena"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Project where UserId=@userid and Password =@password", con);
            cmd.Parameters.AddWithValue("@userid", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            int i = cmd.ExecuteNonQuery();
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label1.Text = "Your User Id and Password is incorrect....";
            }
        }
    }
}