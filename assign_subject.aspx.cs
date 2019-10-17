using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class assign_subject : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = Sawantwadi@123; database=audit_form;allowuservariables=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();


        if (!IsPostBack)

        {

            department.Items.Clear();

            department.Items.Add(new ListItem("--Select Department--", ""));

            department.AppendDataBoundItems = true;

            String strQuery = "select dept_description,dept_id from department";



            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;

        
           department.DataSource = cmd.ExecuteReader();

           department.DataTextField = "dept_description";

           department.DataValueField = "dept_id";

           department.DataBind();

        }
    }

        

    protected void CheckBoxList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    protected void CheckBoxList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    protected void CheckBoxList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    

    protected void deparment_SelectedIndexChanged(object sender, EventArgs e)
    {
        classlist.Items.Clear();
        classlist.Items.Add(new ListItem("--Select class--",""));

        string strQuery ="select class_name,class_id from class_of_student where class_id in (select class_id from class where dept_id='"+department.SelectedValue+"')";

        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandType= CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;

        classlist.DataSource = cmd.ExecuteReader();
        classlist.DataTextField ="class_name";
        classlist.DataValueField ="class_id";

        classlist.DataBind();
    }
    
    protected void classlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        divlist.Items.Clear();
        divlist.Items.Add(new ListItem("--Select Division--",""));

        string strQuery = "select div_id,div_name from division_details where dept_id='"+department.SelectedValue+"' and class_id='"+classlist.SelectedValue+"'";

        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;

        divlist.DataSource = cmd.ExecuteReader();
        divlist.DataTextField = "div_name";
        divlist.DataValueField = "div_id";

        divlist.DataBind();
    }

   

    protected void faclist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void sublist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void facultyllst_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd3 = new MySqlCommand("insert into assign_faculty(faculty_id,class_name,div_name,subject) values('" + faclist.SelectedItem + "','" + classlist.SelectedValue + "','" + divlist.SelectedValue + "','" + sublist.SelectedItem + "')", con);
        cmd3.ExecuteNonQuery();
        con.Close();
        Label5.Visible = true;
                

    }

    protected void divlist_SelectedIndexChanged(object sender, EventArgs e)
    {
        faclist.Items.Clear();


        string strQuery1 = "select fac_id,f_name,l_name from fac where dept_id='" + department.SelectedValue + "'";

        MySqlCommand cmd1 = new MySqlCommand();

        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = strQuery1;
        cmd1.Connection = con;

        faclist.DataSource = cmd1.ExecuteReader();
        faclist.DataTextField = "fac_id";
        faclist.DataValueField = "fac_id";

        faclist.DataBind();

        con.Close();



        con.Open();
        sublist.Items.Clear();
        string strQuery2 = "select sub_id,sub_name from subject where dept_id='" + department.SelectedValue + "' and class_id='" + classlist.SelectedValue + "'";

        MySqlCommand cmd2 = new MySqlCommand();

        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = strQuery2;
        cmd2.Connection = con;

        sublist.DataSource = cmd2.ExecuteReader();
        sublist.DataTextField = "sub_name";
        sublist.DataValueField = "sub_id";

        sublist.DataBind();
    }
}