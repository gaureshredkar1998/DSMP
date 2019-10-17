using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server = localhost; user id = root;pwd=Sawantwadi@123; persistsecurityinfo=True;database=audit_form");
    static string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        if (!IsPostBack)

        {

            dept_list.Items.Clear();

            dept_list.Items.Add(new ListItem("--Select Department--", ""));

            dept_list.AppendDataBoundItems = true;

            String strQuery = "select dept_id,dept_description from department";



            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;

            try

            {

                con.Open();

                dept_list.DataSource = cmd.ExecuteReader();

                dept_list.DataTextField = "dept_description";

                dept_list.DataValueField = "dept_id";

                dept_list.DataBind();

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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        class_list.Items.Clear();
        value = dept_list.SelectedValue;
        class_list.Items.Add("--Select class--");
        
        class_list.AppendDataBoundItems = true;

        MySqlCommand cmd = new MySqlCommand("select class_name,class_id from class_of_student where class_id in (select class_id from department_details where dept_id ='" + value + "')", con);

        cmd.Connection = con;

        try

        {

            con.Open();

            class_list.DataSource = cmd.ExecuteReader();

            class_list.DataTextField = "class_name";

            class_list.DataValueField = "class_id";

            class_list.DataBind();

            if (class_list.Items.Count > 1)

            {

                class_list.Enabled = true;

            }

            else

            {

                class_list.Enabled = false;

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

    protected void submit_button(object sender, EventArgs e)
    {
            MySqlCommand cmd = new MySqlCommand("insert into subject(sub_id,sub_name,class_id,dept_id,sub_type,semister,status) values('" +sub_id.Text+ "','" + sub_name.Text + "','" + class_list.SelectedValue + "','"+dept_list.SelectedValue+"','" + sub_type_list.SelectedItem + "','" + sem_list.SelectedItem + "','" + status_list.SelectedItem + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label4.Visible = true;
       
    }
}