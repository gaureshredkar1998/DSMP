using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;



public partial class admin_show_questions : System.Web.UI.Page
{

    long count = 1;
    MySqlConnection con = new MySqlConnection("server = localhost; user id = root;pwd=Sawantwadi@123; database=questionnaire;persistsecurityinfo=True");
    MySqlDataReader dr;
    List<string> que_list = new List<string>();
    List<string> qu_id = new List<string>();
    List<CheckBox> check_id = new List<CheckBox>();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select que_id,question from questions where que_id is not null", con);
        dr = cmd.ExecuteReader();


        while (dr.Read())
        {
            qu_id.Add(dr[0].ToString());
            que_list.Add(count + ". " + dr[1].ToString());
            count++;
        }
        dr.Close();

        for (int i = 0; i < qu_id.Count; i++)
        {

            Label lbl = new Label();
            lbl.ID = "label_" + i;
            lbl.Text = que_list[i];
            CheckBox check = new CheckBox();
            check.ID = qu_id[i];
            check_id.Add(check);
 

            Panel1.Controls.Add(check);
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
            Panel1.Controls.Add(lbl);
            //Panel1.Controls.Add(new LiteralControl("<br/>"));


            RadioButtonList radio_button = new RadioButtonList();
            radio_button.ID = "radio_button_" + i;
            MySqlCommand cmd1 = new MySqlCommand("select options from questions where type='" + qu_id[i] + "'", con);
            dr = cmd1.ExecuteReader();
            while (dr.Read())
            {
                radio_button.Items.Add(dr[0].ToString());
            }
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
            Panel1.Controls.Add(new LiteralControl("&nbsp"));
            Panel1.Controls.Add(radio_button);
            Panel1.Controls.Add(new LiteralControl("<br/>"));
            dr.Close();
            
        }


        Button btn = new Button();
        btn.Text = "CREATE";
        btn.Click += button_Click;
        Panel1.Controls.Add(btn);
    }


    protected void button_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("delete from current_feedback_questions", con);
        cmd.ExecuteNonQuery();
        foreach (var checkbox in check_id)
        {
            if (checkbox.Checked)
            {

                MySqlCommand cmd1 = new MySqlCommand("insert into current_feedback_questions(que_id,question,options,value,type) select * from questions as qu where qu.que_id='" + checkbox.ID + "' or type='" + checkbox.ID + "'", con);
                cmd1.ExecuteNonQuery();
                
            }

        }
        Response.Write("<script language='javascript'>window.alert('Feedback Created successfully.'); window.location='faculty_LOgin_Page.aspx';</script>");



    }
}

