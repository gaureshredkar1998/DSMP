using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class admin_create_feedback : System.Web.UI.Page
{
    static int start_button = 0;
    static  int end_button = 0;
    static string start;
    static string end;
    MySqlConnection con = new MySqlConnection(@"server = localhost; user id = root;pwd=Sawantwadi@123; persistsecurityinfo=True;database=admin");
       protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();   
    }


    protected void start_button_Click(object sender, EventArgs e)
    {
        start_button = 1;
        Calendar1.Visible = true;
        
    }

    protected void end_button_Click(object sender, EventArgs e)
    {
        end_button = 1;
        Calendar1.Visible = true;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
        if (start_button == 1)
        {
            start_date_txt.Text = Calendar1.SelectedDate.ToShortDateString();
            start =Calendar1.SelectedDate.ToString("yyy-MM-dd");
            start_button = 0;
        }

        if (end_button == 1)
        {
            end_date_txt.Text = Calendar1.SelectedDate.ToShortDateString();
            end =Calendar1.SelectedDate.ToString("yyy-MM-dd");
            end_button = 0;
        }

        Calendar1.Visible = false;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string feed_id =(DropDownList1.SelectedItem).ToString()+(DropDownList2.SelectedItem).ToString()+start_date_txt.Text;
        MySqlCommand cmd1 = new MySqlCommand("insert into current_feedback(feedback_id,feedback_type,start_date,end_date) values('"+feed_id+"','" + DropDownList1.SelectedItem + "','" + start + "','" + end + "')", con);
        MySqlCommand cmd = new MySqlCommand("insert into feedback_history(feedback_id,feedback_type,start_date,end_date) values('" + feed_id + "','" + DropDownList1.SelectedItem+ "','" + start + "','" + end + "')",con);
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Redirect("admin_select_questions.aspx");
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Response.Redirect(Request.Url.AbsolutePath + "?item=" + DropDownList2.SelectedValue);
        //Response.Redirect("Monthly_report.aspx?SelectedValue=" + DropDownList2.SelectedValue);
    }

    
}