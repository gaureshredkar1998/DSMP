using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id=root;pwd=Sawantwadi@123;database=audit_form");
        con.Open();

        //Response.Redirect("View_Feedback.aspx?username=" + username.Text);

        MySqlCommand cmd = new MySqlCommand("select * from fac where fac_id = '" + username.Text + "' and password = '" + password.Text + "' ", con);
        
        MySqlDataReader dr = cmd.ExecuteReader();
       // if (dr.Read())
        //{
            Response.Redirect("Faculty_Home.aspx?username=" + username.Text);
        //} 
        /*else
        {
           Label1.Visible=true;
        }

        dr.Close();*/

        con.Close();
        //Response.Redirect("");
        //String username = username.Text;
    }

    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
}