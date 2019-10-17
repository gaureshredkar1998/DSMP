using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class admin_add_option : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server = localhost; user id = root; pwd=Sawantwadi@123; database = questionnarie; persistsecurityinfo = True");
    string qu_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        que_label.Text = this.Request.QueryString["question"];
        qu_id = this.Request.QueryString["id"];

    }





    protected void add_opt_btn_Click(object sender, EventArgs e)
    {
        string option = optbox.Text + "  " +valuebox.Text;
        opt_value_lst.Items.Add(option);
        double value = Convert.ToDouble(valuebox.Text);
        MySqlCommand cmd = new MySqlCommand("insert into questions(options,value,type) values('"+optbox.Text+"','"+value+"','"+qu_id+"')",con);
        cmd.ExecuteNonQuery();
        TextBox tx = new TextBox();
        
    }

    protected void delete_btn_Click(object sender, EventArgs e)
    {

    }
}