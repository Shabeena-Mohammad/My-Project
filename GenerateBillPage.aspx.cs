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
    public partial class GenerateBillPage : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["shabeena"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            BindSearch();
        }
        private void BindSearch()
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from Shabe", conn);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;

            DropDownList1.Text = GridView1.SelectedRow.Cells[2].Text;

            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;

            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;

            TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;

            DropDownList2.Text = GridView1.SelectedRow.Cells[6].Text;

            DropDownList3.Text = GridView1.SelectedRow.Cells[7].Text;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "insert into Shabe values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "', '" + DropDownList2.Text + "', '" + DropDownList3.Text + "')";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=DB;Integrated Security=True");
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter("Select *from Shabe", con);
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
        }
    
}}