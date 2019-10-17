using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = Sawantwadi@123; database=audit_form;allowuservariables=True");
        con.Open();
        string username = Request.QueryString["username"];
        //string GridView1 = Request.QueryString["GridView"];
        MySqlCommand cmd = new MySqlCommand("Select * from fac_performance where fac_name ='" + username + "' ", con);
        MySqlDataReader dr = cmd.ExecuteReader();
        //Response.Redirect("View_Feedback.aspx?");
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}