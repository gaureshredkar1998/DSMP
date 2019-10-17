using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Admin_add_department : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server = localhost; user id = root;pwd=Sawantwadi@123; persistsecurityinfo=True;database=audit_form");
    MySqlDataReader rd;
    List<string> dept_id = new List<string>();
    List<string> dept_nm = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        id_exits.Visible = false;
        name_exists.Visible = false;
        MySqlCommand cmd = new MySqlCommand("select dept_id,dept_description from department",con);
        rd = cmd.ExecuteReader();
        while(rd.Read())
        {
            
            dept_id.Add(rd[0].ToString());
            dept_nm.Add(rd[1].ToString());

        }
        rd.Close();
    }

    protected void submit_btn_Click(object sender, EventArgs e)
    {
        if (dept_id.Contains(dept_id_box.Text))
        {

            //Response.Write("<script language='javascript'>window.alert('id exists'); window.location='faculty_LOgin_Page.aspx';</script>");
            id_exits.Visible = true;


        }


        else if (dept_nm.Contains(dept_name_box.Text))
        { name_exists.Visible = true; }

        else
        {

            MySqlCommand cmd = new MySqlCommand("insert into department values('"+dept_id_box.Text+"','"+dept_name_box.Text+"','"+DropDownList1.SelectedItem.Text+"')", con);
            cmd.ExecuteNonQuery();
            Label3.Visible = true;

        }

       
        


        }

    protected void deot_id_box_TextChanged(object sender, EventArgs e)
    {

    }
}


public class deptIDException:Exception
{

    public deptIDException(string message):base(message)
    { }

}

public class deptNameException : Exception
{

    public deptNameException(string message) : base(message)
    { }

}