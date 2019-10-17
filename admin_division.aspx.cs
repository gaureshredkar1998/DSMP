using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_division : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;persistsecurityinfo=True;database=audit_form;pwd=Sawantwadi@123;allowuservariables=True");
    MySqlDataReader rd;
    List<CheckBox> check = new List<CheckBox>();
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select d.div_id,d.class_id,dd.dept_id,dd.div_name,d.status from division as d inner join division_details as dd on dd.div_id=d.div_id ",con);
        rd = cmd.ExecuteReader();

        while (rd.Read())
        {
            CheckBox ch = new CheckBox();
            ch.ID = rd[0].ToString()+"_"+count;
            ch.Text =rd[3].ToString()+"_"+rd[1].ToString()+"_"+rd[2].ToString();
            check.Add(ch);
            Panel1.Controls.Add(ch);
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
            Panel1.Controls.Add(new LiteralControl("&nbsp"));

            Label lbl = new Label();
            lbl.ID = "label"+rd[0].ToString()+"_"+count;
            lbl.Text = "Status = " + rd[4].ToString();
            Panel1.Controls.Add(lbl);
        

            Panel1.Controls.Add(new LiteralControl("<br />"));
            Panel1.Controls.Add(new LiteralControl("<br />"));

            count++;
        }
        rd.Close();

        /*Button btn = new Button();
        btn.Text = "ADD";
        btn.Click += next_click;
        Panel1.Controls.Add(btn);*/

    }

    protected void next_click(Object sender,EventArgs e)
    {
        Response.Redirect("admin_add_division.aspx");
    }

}