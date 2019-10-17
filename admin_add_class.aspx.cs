using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_add_class : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123;persistsecurityinfo=True;database=audit_form");
    MySqlDataReader rd;
    List<CheckBox> check_box = new List<CheckBox>();
    List<string> class_id = new List<string>();
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        
        Label5.Visible = false;
        MySqlCommand cmd = new MySqlCommand("select dept_id,dept_description,status from department",con);
        rd = cmd.ExecuteReader();

        while(rd.Read())
        {
            if (rd[2].ToString() == "valid")
            {
                CheckBox ch = new CheckBox();
                ch.ID = rd[0].ToString();
                ch.Text = rd[1].ToString();
                check_box.Add(ch);
                Panel1.Controls.Add(ch);
                Panel1.Controls.Add(new LiteralControl("<br />"));
            }
            
            
        }
        status= rd[2].ToString();
        rd.Close();
        Button btn = new Button();
        btn.Text = "SUBMIT";
        btn.Click += Button1_Click;
        Panel1.Controls.Add(btn);


        MySqlCommand cmd1 = new MySqlCommand("select class_id from class_of_student", con);
        rd = cmd1.ExecuteReader();
        while(rd.Read())
        {

            class_id.Add(rd[0].ToString());

        }
        rd.Close();
       
        
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (class_id.Contains(class_id_box.Text))
        { Label5.Visible = true; }

        

        else
        {
            foreach (var check in check_box)
            {
                if (check.Checked)
                {
                    MySqlCommand cmd = new MySqlCommand("insert into department_details(dept_id,class_id,dept_description,status) values('" + check.ID + "','" + class_id_box.Text + "','" + check.Text + "','" + status_list.SelectedItem + "')", con);
                    cmd.ExecuteNonQuery();

                    MySqlCommand cmd1 = new MySqlCommand("insert into class(class_id,dept_id,status) values('" + class_id_box.Text + "','" + check.ID + "','" + status_list.SelectedItem + "')", con);
                    cmd1.ExecuteNonQuery();
                }
            }
            MySqlCommand cmd2 = new MySqlCommand("insert into class_of_student(class_id,class_name,status) values('" + class_id_box.Text + "','" + class_box.Text + "','" + status_list.SelectedItem + "')", con);
            cmd2.ExecuteNonQuery();
        }
        
    }
}