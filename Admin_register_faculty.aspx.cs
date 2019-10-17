using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class Admin_register_faculty : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=audit_form;persistsecurityinfo=True;allowuservariables=True;pwd=Sawantwadi@123");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        if (!IsPostBack)

        {

            dept.Items.Clear();

            dept.Items.Add(new ListItem("--Select dept--", ""));

            dept.AppendDataBoundItems = true;

            String strQuery = "select dept_description,dept_id from department";



            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con;

            try

            {

                dept.DataSource = cmd.ExecuteReader();

                dept.DataTextField = "dept_description";

                dept.DataValueField = "dept_id";

                dept.DataBind();

            }

            catch (Exception ex)

            {

                throw ex;

            }

            finally

            {

                

            

            }

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("insert into faculty_registration(fac_id,password,dept_id) values('" + fac_id.Text + "','" + pass.Text + "','" + dept.SelectedValue + "')", con);
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}