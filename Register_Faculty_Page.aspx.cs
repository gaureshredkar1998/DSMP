using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    //MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=admin;pwd=Sawantwadi@123");
    MySqlConnection con1 = new MySqlConnection(@"server=localhost;user id=root;database=audit_form;pwd=Sawantwadi@123");

    protected void Page_Load(object sender, EventArgs e)
    {
        con1.Open();

        if (!IsPostBack)

        {

            dept.Items.Clear();

            dept.Items.Add(new ListItem("--Select dept--", ""));

            dept.AppendDataBoundItems = true;

            String strQuery = "select dept_description,dept_id from department";



            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandType = CommandType.Text;

            cmd.CommandText = strQuery;

            cmd.Connection = con1;

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

    protected void fac_id_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

                string fetch = "select password from faculty_registration where fac_id='"+fac_id.Text+"'";
            
            MySqlCommand cmd1 = new MySqlCommand(fetch, con1);

            
            string pwd = cmd1.ExecuteScalar().ToString(); 
                
               if (fac_id.Text != "" && dept.SelectedValue != "" && f_name.Text != "" && m_name.Text != "" && l_name.Text != "" && nickname1.Text != "" && nickname2.Text != "" && nickname3.Text != "" && nickname4.Text != "" && email.Text != "" && password.Text != "" && statuslist.SelectedItem.Value != null)
            {
                if (pwd == password.Text)
                {
                    MySqlCommand cm = new MySqlCommand("insert into fac(fac_id,f_name,m_name,l_name,dept_id,status,nickname1,nickname2,nickname3,nickname4,email,password,rpassword) values('" + fac_id.Text + "','" + f_name.Text + "','" + m_name.Text + "','" + l_name.Text + "','" + dept.SelectedValue + "','" + statuslist.SelectedItem.Value + "','" + nickname1.Text + "','" + nickname2.Text + "','" + nickname3.Text + "','" + nickname4.Text + "','" + email.Text + "','" + password.Text + "','" + rpassword.Text + "')", con1);
                    cm.ExecuteNonQuery();
                
                Response.Write( "<script language='javascript'>window.alert('Registered successfully.'); window.location='faculty_LOgin_Page.aspx';</script>");
                
                 }

                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('faculty id or password is incorrect.');</script>");
                }
                        
            }

            else
            { warn_label.Text = "please complete all fields."; }
            
        
        
 
    }

    protected void l_name_TextChanged(object sender, EventArgs e)
    {

    }

    protected void nickname2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void dept_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void rpassword_TextChanged(object sender, EventArgs e)
    {

    }
}