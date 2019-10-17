using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_class : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123;persistsecurityinfo=True;database=audit_form");
    MySqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select c.class_id,cs.class_name,c.dept_id from class as c inner join class_of_student as cs on c.class_id=cs.class_id",con);
        CheckBox check = new CheckBox();
        Label lb1 = new Label();
        Label lb2 = new Label();
        Label lb3 = new Label();


        rd = cmd.ExecuteReader();
        while (rd.Read())
        {
            check.ID = rd[0].ToString();
            Panel1.Controls.Add(check);

            lb1.Text = rd[0].ToString();
            Panel1.Controls.Add(lb1);

            lb2.Text = rd[1].ToString();
            Panel1.Controls.Add(lb2);

            lb3.Text = rd[2].ToString();
            Panel1.Controls.Add(lb3);

        }
        rd.Close();
       /* Button btn = new Button();
        btn.Text ="ADD";
        btn.Click += button_Click;
        Panel1.Controls.Add(btn);*/





    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_add_class.aspx");
    }
}