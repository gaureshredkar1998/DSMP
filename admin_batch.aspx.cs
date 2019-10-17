using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_batch : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123;persistsecurityinfo=True;database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
    List<CheckBox> batch = new List<CheckBox>();
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select * from batch",con);
        rd = cmd.ExecuteReader();


        while(rd.Read())
        {
            CheckBox ch = new CheckBox();
            ch.ID = rd[0].ToString()+count;
            ch.Text = rd[0].ToString()+" " + rd[1].ToString() +" "+rd[2].ToString();
            batch.Add(ch);
            Panel1.Controls.Add(ch);
            Panel1.Controls.Add(new LiteralControl("<br />"));
            count++;
        }
        rd.Close();

        Button btn = new Button();
        btn.Text = "ADD";
        btn.Click +=next_click;
        Panel1.Controls.Add(btn);


    }


    protected void next_click(Object sender,EventArgs e)
    {
        Response.Redirect("admin_add_batch.aspx");
    }

    
}