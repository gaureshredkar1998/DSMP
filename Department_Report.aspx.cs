using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
public partial class Department_Report : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = vikram1998; database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
    //IList<string> dept_idlist = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
       //arnlabel.Visible = false;

        if (!IsPostBack)

        {
            department.Items.Clear();


            department.Items.Add(new ListItem("--Select Department--", ""));

           //ivision.Items.Clear();

            //division.Items.Add(new ListItem("--Select Division--", ""));

            department.AppendDataBoundItems = true;

            String strQuery = "select distinct dept_description,dept_id from department";



            MySqlCommand cmd = new MySqlCommand();

            //cmd.Parameters.AddWithValue("@class_id", year.SelectedItem.Value);

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;

            try

            {



                department.DataSource = cmd.ExecuteReader();

                department.DataTextField = "dept_description";

                department.DataValueField = "dept_id";

                department.DataBind();

                if (department.Items.Count > 1)

                {

                    department.Enabled = true;

                }

                else

                {

                    department.Enabled = false;

                    //division.Enabled = false;

                }

            }

            catch (Exception ex)

            {

                throw ex;

            }

            finally

            {

                //con.Close();

                con.Dispose();

            }

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("select feed_date,department_id,type,feedback_id,avg(q1),avg(q2),avg(q3),avg(q4),avg(q5),avg(q6),avg(q7),avg(q8),avg(q9) from faculty_per1 group by feedback_id,type,feed_date,department_id", con);
        rd = cmd.ExecuteReader();
        GridView1.DataSource = rd;
        GridView1.DataBind();

    }
}