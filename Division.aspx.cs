using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class Division : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = vikram1998; database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

       

        DropDownList3.AppendDataBoundItems = true;
        if (!IsPostBack)
        {

            DropDownList2.Items.Clear();

            DropDownList2.Items.Add(new ListItem("--Select Class--", ""));

            DropDownList2.AppendDataBoundItems = true;


            DropDownList3.Items.Clear();

            DropDownList3.Items.Add(new ListItem("--Select Division--", ""));

            DropDownList3.AppendDataBoundItems = true;

            DropDownList1.Items.Clear();

            DropDownList1.Items.Add(new ListItem("--Select Department--", ""));

            DropDownList1.AppendDataBoundItems = true;

            MySqlCommand cmd = new MySqlCommand("select dept_id,dept_description from department", con);
            rd = cmd.ExecuteReader();
            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "dept_description";
            DropDownList1.DataValueField = "dept_id";
            DropDownList1.DataBind();
            rd.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        MySqlCommand cmd = new MySqlCommand("select feed_date,department_id,class_id,division_id,type,feedback_id,avg(q1),avg(q2),avg(q3),avg(q4),avg(q5),avg(q6),avg(q7),avg(q8),avg(q9) from faculty_per1 group by feedback_id,type,feed_date,department_id,class_id,division_id having department_id='" + DropDownList1.SelectedValue + "' and class_id='" + DropDownList2.SelectedItem + "' and division_id = '" + DropDownList3.SelectedItem + "'", con);
        //  
        rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();

        DropDownList2.Items.Add(new ListItem("--Select Class--", ""));

        DropDownList2.AppendDataBoundItems = true;


        String strQuery = "select class_id,class_name from class_of_student where class_id in (select class_id from class where dept_id='"+DropDownList1.SelectedValue+"') ";



        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;

       

        DropDownList2.DataSource = cmd.ExecuteReader();

        DropDownList2.DataTextField = "class_name";

        DropDownList2.DataValueField = "class_id";

        DropDownList2.DataBind();


    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        DropDownList3.Items.Clear();

        DropDownList3.Items.Add(new ListItem("--Select Division--", ""));

        DropDownList3.AppendDataBoundItems = true;



        String strQuery = "select div_name from division_details where class_id='"+DropDownList2.SelectedValue+"' and dept_id='" + DropDownList1.SelectedValue + "'" ;



        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;



        DropDownList3.DataSource = cmd.ExecuteReader();

        DropDownList3.DataTextField = "div_name";

       

        DropDownList3.DataBind();

    }
}