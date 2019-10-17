using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_add_batch : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123;persistsecurityinfo=True;database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
    List<CheckBox> div_id = new List<CheckBox>();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        Label4.Visible =false;

        MySqlCommand cmd = new MySqlCommand("select div_id from division",con);
        rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            CheckBox ch = new CheckBox();
            ch.ID = rd[0].ToString();
            ch.Text= rd[0].ToString();
            div_id.Add(ch);
            Panel1.Controls.Add(ch);
            Panel1.Controls.Add(new LiteralControl("<br />"));
        }

        rd.Close();

        Button btn = new Button();
        btn.Text ="SUBMIT";
        btn.Click +=add_click;
        Panel1.Controls.Add(btn);

    }

    protected void add_click(Object sender,EventArgs e)
    {

        foreach(var check in div_id)
        {
            if(check.Checked==true)
            {

                MySqlCommand cmd = new MySqlCommand("insert into batch(batch_id,div_id,status) values('"+id_box.Text+"','"+check.ID+"','"+DropDownList1.SelectedItem+"')",con);
                cmd.ExecuteNonQuery();

            }


        }

        Label4.Visible = true;

    }
}