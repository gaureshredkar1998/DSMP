using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class Class_Report : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = vikram1998; database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        DropDownList1.Items.Clear();

        DropDownList1.Items.Add(new ListItem("--Select Year--", ""));

        DropDownList1.AppendDataBoundItems = true;

        String strQuery = "select distinct class_name,class_id from class_of_student ";



        MySqlCommand cmd = new MySqlCommand();

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;

        try

        {

            //con.Open();

            DropDownList1.DataSource = cmd.ExecuteReader();

            DropDownList1.DataTextField = "class_name";

            DropDownList1.DataValueField = "class_id";

            DropDownList1.DataBind();

        }

        catch (Exception ex)

        {

            throw ex;

        }

        finally

        {

            con.Close();

            con.Dispose();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select feed_date,department_id,class_id,type,feedback_id,avg(q1),avg(q2),avg(q3),avg(q4),avg(q5),avg(q6),avg(q7),avg(q8),avg(q9) from faculty_per1 group by feedback_id,type,feed_date,department_id,class_id", con);
        rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();
        con.Close(); 
    }
}