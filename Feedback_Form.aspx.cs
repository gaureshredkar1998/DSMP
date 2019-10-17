using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
public partial class feedback_form : System.Web.UI.Page
{

    IList<string> fac_name = new List<string>();
    IList<String> sub = new List<String>();
    private int count = 0;
    static int fac_count = 1;

     
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id=root;pwd=Sawantwadi@123;database=audit_form");

    protected void Page_Load(object sender, EventArgs e)
    {

        string div = Request.QueryString["div"];
       

        String str = "select count(fac_name) from audit_form.faculty_details_b";

        MySqlDataReader rd;

        using (MySqlCommand cmd = new MySqlCommand(str, con))
        {
            con.Open();

            count = Convert.ToInt32(cmd.ExecuteScalar().ToString());         
            cmd.ExecuteNonQuery();
            con.Close();
        }


        try
        {


            using (MySqlCommand cmd = new MySqlCommand("Select fac_name,sub from faculty_details_b where divi='B'", con))
            {
                con.Open();
                using (rd = cmd.ExecuteReader())
                {
                    while (rd.Read())
                    {
                        fac_name.Add(rd[0].ToString());
                        sub.Add(rd[1].ToString());
                    }
                }
            }



        }
        catch (Exception ex)
        {
            Console.WriteLine(ex);
        }        TextBox17.Text = DateTime.Now.Date.ToShortDateString();
        if (fac_count == 1)
        {
            faculty_name_text.Text = fac_name[0];
            sub_text.Text = sub[0];
        }
        


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //faculty_name_text.Text = fac_name[0];

    }


    private int Pgcount
    {
        get
        {
            return  (int)Session["pgcount"];
        }

        set
        {

            ViewState["pgcount"] = value;

        }


    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = @"Data Source=localhost; Database=audit_form; User ID=root; Password='vikram1998'";



        if (faculty_name_text.Text == "" || sub_text.Text == "" /*|| impr_expt_text.Text == "" || add_cmnt_text.Text == ""*/)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Please fill all compulsory fields');</script>");
        }

        else
        {
            try
            {


                if (fac_count <= fac_name.Count)
                {

                    Response.Write(fac_count);


                    double sum = (Convert.ToDouble(RadioButtonList1.SelectedValue) + Convert.ToDouble(RadioButtonList2.SelectedValue) + Convert.ToDouble(RadioButtonList3.SelectedValue) + Convert.ToDouble(RadioButtonList4.SelectedValue) + Convert.ToDouble(RadioButtonList5.SelectedValue) + Convert.ToDouble(RadioButtonList6.SelectedValue) + Convert.ToDouble(RadioButtonList7.SelectedValue) + Convert.ToDouble(RadioButtonList8.SelectedValue) + Convert.ToDouble(RadioButtonList9.SelectedValue));
                    double avg = sum / 9.0;

                    String insert1 = "insert into fac_performance(fac_name,q1,q2,q3,q4,q5,q6,q7,q8,q9,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,Average) values('" + faculty_name_text.Text + "','" + RadioButtonList1.SelectedItem.Value + "','" + RadioButtonList2.SelectedItem.Value + "','" + RadioButtonList3.SelectedItem.Value + "','" + RadioButtonList4.SelectedItem.Value + "','" + RadioButtonList5.SelectedItem.Value + "','" + RadioButtonList6.SelectedItem.Value + "','" + RadioButtonList7.SelectedItem.Value + "','" + RadioButtonList8.SelectedItem.Value + "','" + RadioButtonList9.SelectedItem.Value + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + impr_expt_text.Text + "','" + add_cmnt_text.Text + "','" + avg + "')";

                    MySqlCommand cmd2 = new MySqlCommand(insert1, con);
                    cmd2.ExecuteNonQuery();
                    /* Sets every radiobuttonlist to null  */
                    {
                        RadioButtonList1.ClearSelection(); RadioButtonList2.ClearSelection(); RadioButtonList3.ClearSelection(); RadioButtonList4.ClearSelection(); RadioButtonList5.ClearSelection(); RadioButtonList6.ClearSelection(); RadioButtonList7.ClearSelection(); RadioButtonList8.ClearSelection(); RadioButtonList9.ClearSelection();

                        TextBox5.Text = String.Empty; TextBox6.Text = String.Empty; TextBox7.Text = String.Empty; TextBox8.Text = String.Empty; TextBox9.Text = String.Empty; TextBox10.Text = String.Empty; TextBox11.Text = String.Empty; TextBox12.Text = String.Empty; TextBox13.Text = String.Empty; impr_expt_text.Text = String.Empty; add_cmnt_text.Text = String.Empty;



                    }


                    if (fac_count == fac_name.Count) { Response.Redirect("Student_Login_Page.aspx"); }
                    else
                    {
                        faculty_name_text.Text = fac_name[fac_count];
                        sub_text.Text = sub[fac_count];

                        fac_count += 1;
                    }

                }



                else
                {
                    /*Button1.Text = "submit"; Session.Clear(); Session.Abandon(); */
                    /*Response.ExpiresAbsolute = DateTime.Now;
                    Response.Expires = 0;
                    Response.CacheControl = "no-cache";
                    */

                    Response.Redirect("Student_Login_Page.aspx");

                }
            }

            //}


            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            { con.Close(); }

        }


    }



    

    protected void div_text_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sub_text_TextChanged(object sender, EventArgs e)
    {
       
    }

    protected void impr_expt_text_TextChanged(object sender, EventArgs e)
    {

    }

    protected void add_cmnt_text_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList1.SelectedItem.Value);
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList2.SelectedItem.Value);
    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList3.SelectedItem.Value);
    }

    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList4.SelectedItem.Value);
    }

    protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList5.SelectedItem.Value);
    }

    protected void RadioButtonList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList6.SelectedItem.Value);
    }

    protected void RadioButtonList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList7.SelectedItem.Value);
    }

    protected void RadioButtonList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList8.SelectedItem.Value);
    }

    protected void RadioButtonList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        float mark;

        mark = float.Parse(RadioButtonList9.SelectedItem.Value);
    }

    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {
        TextBox17.Text = DateTime.Now.ToString();
    }
}