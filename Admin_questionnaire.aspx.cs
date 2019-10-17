using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
public partial class Admin_questionnaire : System.Web.UI.Page
{
    int count = 0;
    string option;
    string qu_id="";
    MySqlConnection con = new MySqlConnection("server = localhost; user id = root; pwd=Sawantwadi@123; database=questionnarie");


    protected void Page_Load(object sender, EventArgs e)
    {

        con.Open();
        string Null = null;
        MySqlCommand cmd1 = new MySqlCommand("select count(que_id) from questions where que_id<>'"+Null+"'",con);
        int id = Convert.ToInt32(cmd1.ExecuteScalar());
        if(cmd1.ExecuteScalar()==null)
        {
            qu_id ="que_"+0;
            Response.Write(qu_id);
        }

        else { qu_id ="que_"+id; }    
    }



    protected void add_que_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("insert into questions values('"+qu_id+"','"+que_textbox.Text+"',NULL,NULL,NULL)",con);
        cmd.ExecuteNonQuery();
        Response.Redirect("~/admin_add_option.aspx?question="+que_textbox.Text+"&id="+qu_id);
    }

    protected void que_textbox_TextChanged(object sender, EventArgs e)
    {

    }
}
