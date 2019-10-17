 using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Sample : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = Sawantwadi@123; database=audit_form;allowuservariables=True");
    MySqlConnection con1 = new MySqlConnection(@"server=127.0.0.1;user id = root;pwd = Sawantwadi@123; database=admin;allowuservariables=True");
    MySqlDataReader rd;
    MySqlCommand cmd1;

    static DateTime str_date,end_date;
    static DateTime current_date=DateTime.Now; 

    protected void Page_Load(object sender, EventArgs e)
    {
        con1.Open();


        if (!IsPostBack)

        {

            year.Items.Clear();

            year.Items.Add(new ListItem("--Select Year--", ""));

            year.AppendDataBoundItems = true;

            String strQuery = "select class_name,class_id from class_of_student";



            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;

            try

            {

                con.Open();

                year.DataSource = cmd.ExecuteReader();

                year.DataTextField = "class_name";

                year.DataValueField = "class_id";

                year.DataBind();

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
    }

    protected void year_SelectedIndexChanged(object sender, EventArgs e)
    {
        department.Items.Clear();
        

       department.Items.Add(new ListItem("--Select Department--", ""));

        division.Items.Clear();

        division.Items.Add(new ListItem("--Select Division--", ""));

        department.AppendDataBoundItems = true;

        String strQuery = "select dept_description,dept_id from department_details" + " where class_id = '" + year.SelectedValue + "'";



        MySqlCommand cmd = new MySqlCommand();

        cmd.Parameters.AddWithValue("@class_id",year.SelectedItem.Value);

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = strQuery;

        cmd.Connection = con;

        try

        {

            con.Open();

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

                division.Enabled = false;

            }

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

    protected void department_SelectedIndexChanged(object sender, EventArgs e)
    {
        division.Items.Clear();

        division.Items.Add(new ListItem("--Select division--", ""));

        division.AppendDataBoundItems = true;


        /*  string strQuery = "select div_name,div_id from division_details where dept_id = '" + department.SelectedValue + "'" and class_id = '" + year.SelectedValue + "'";

              MySqlCommand cmd = new MySqlCommand();

          cmd.Parameters.AddWithValue("@dept_id",

                                department.SelectedItem.Value);
          /*cmd.Parameters.AddWithValue("@class_id",

                                year.SelectedItem.Value);
          cmd.CommandType = CommandType.Text;

          cmd.CommandText = strQuery;*/
        MySqlCommand cmd = new MySqlCommand("select div_name,div_id from division_details where dept_id = '" + department.SelectedValue + "' and class_id = '" + year.SelectedValue + "'", con);

        cmd.Connection = con;

        try

        {

            con.Open();

            division.DataSource = cmd.ExecuteReader();

            division.DataTextField = "div_name";

            division.DataValueField = "div_id";

            division.DataBind();

            if (division.Items.Count > 1)

            {

                division.Enabled = true;

            }

            else

            {

                division.Enabled = false;

            }



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

    protected void division_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void passkey_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (year.SelectedItem.Value == "" || department.SelectedItem.Value == "" || division.SelectedItem.Value == "" || passkey.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Please fill all compulsory fields');</script>");
        }

        else
        {
            cmd1 = new MySqlCommand("select start_date,end_date from feedback_history",con1);

            rd = cmd1.ExecuteReader();
            while(rd.Read())
            {
                str_date =Convert.ToDateTime((rd[0].ToString()));
                end_date = Convert.ToDateTime(rd[1].ToString());
            }



            

            cmd1 = new MySqlCommand("select start_date,end_date from current_feedback",con);



            if (current_date >= str_date && current_date <= end_date)
            {
                if ("select div_id from Student_Login_Page" == "select div_id from Student_Login_Page_Link")
                {
                    MySqlCommand cmd = new MySqlCommand("Insert into Student_Login_Page(class_id,dept_id,div_id) values('" + year.SelectedItem.Value + "','" + department.SelectedItem.Value + "','" + division.SelectedItem.Value + "')", con);
                    cmd = new MySqlCommand("Insert into fac_performance(divi) values('" + division.SelectedItem.Text + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                String div = division.SelectedItem.Text;

                Response.Redirect("feedback_form.aspx?div=" + division.SelectedItem.Text);
            }

            else
            {
                warnlabel.Visible = true;
                warnlabel.Text = "Feedback is not set for current date";

            }
        
        }

    }

     

    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
}

 
