using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class admin_add_division : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123;persistsecurityinfo=True;database=audit_form;allowuservariables=True");
    MySqlDataReader rd;
   
    static List<CheckBox> check_class = new List<CheckBox>();
    static List<string> check_dept = new List<string>();
    RadioButtonList RadioButtonList1 = new RadioButtonList();
    protected void Page_Load(object sender, EventArgs e)
   {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select cs.class_id,cs.class_name from  class_of_student as cs  ", con);
        rd = cmd.ExecuteReader();


        //MySqlCommand cmd1 = new MySqlCommand("select dd.dept_description,dd.dept_id from department as dd", con);


        RadioButtonList1.SelectedIndexChanged += new EventHandler(add_department);
        RadioButtonList1.AutoPostBack = true;
        Panel1.Controls.Add(RadioButtonList1);

        if (!IsPostBack)
        {
            //Session["dept_list"] = new List<CheckBox>();
            while (rd.Read())
            {
                //CheckBox ch = new CheckBox();
                //ch.ID = rd[1].ToString();
                //ch.Text = rd[0].ToString();
                //ch.AutoPostBack = true;
                RadioButtonList1.Items.Add(new ListItem(rd[1].ToString(), rd[0].ToString()));


                /*check_class.Add(ch);         
                Panel1.Controls.Add(ch);
                Panel1.Controls.Add(new LiteralControl("<br />"));*/
            }

            rd.Close();
            //check_dept = (List<CheckBox>)Session["dept_list"];
        }
    

            // rd = cmd1.ExecuteReader();
            /*while (rd.Read())
            {
                CheckBox ch = new CheckBox();
                ch.ID = rd[1].ToString();
                ch.Text = rd[0].ToString();
                check_dept.Add(ch);
                Panel2.Controls.Add(ch);

            }*/
            rd.Close();




        Panel1.Controls.Add(new LiteralControl("<br />"));

        Button btn = new Button();
        btn.Text = "SUBMIT";
        btn.Click += submit_click;
        Panel1.Controls.Add(btn);

    }

   
    protected void submit_click(Object sender,EventArgs e)
    {
        
        for(int i=0;i< CheckBoxList1.Items.Count;i++)
        {
            if (CheckBoxList1.Items[i].Selected==true)
            {
                MySqlCommand cmd = new MySqlCommand("insert into division_details(div_id,dept_id,class_id,div_name,status) values('"+id_box.Text+"','"+check_dept[i]+"','"+RadioButtonList1.SelectedItem.Value+"','"+name_box.Text+"','"+DropDownList1.SelectedItem+"')",con);
                cmd.ExecuteNonQuery();
                
            }
            Response.Write(check_dept.Count);

        }

        MySqlCommand cmd1 = new MySqlCommand("insert into division(div_id,class_id,status) values('"+id_box.Text+"','"+RadioButtonList1.SelectedItem.Value+"','"+DropDownList1.SelectedItem+"')",con);
        cmd1.ExecuteNonQuery();
        

        // Response.Write(check_dept.Count);
    }


    protected void add_department(Object sender,EventArgs e)
    {
        CheckBoxList1.Items.Clear();
        //CheckBox check=(sender as CheckBox);
        // if (check.Checked)
        //{
        MySqlCommand cmd1 = new MySqlCommand("select distinct dept_id,dept_description from department where dept_id in  (select dept_id from department_details where class_id= '"+RadioButtonList1.SelectedItem.Value+"')",con);

            rd = cmd1.ExecuteReader();

        {
            while (rd.Read())
            {
                /*CheckBox ch = new CheckBox();
                ch.ID = rd[0].ToString();
                ch.Text = rd[1].ToString();
                check_dept.Add(ch);
                Panel2.Controls.Add(ch);
                Panel2.Controls.Add(new LiteralControl("<br />"));*/
                CheckBoxList1.Items.Add(rd[1].ToString());
                check_dept.Add(rd[0].ToString());
            }
        }
            rd.Close();

        //Response.Write(check_dept.Count);
        //ViewState["check_dept"] = check_dept;
        //}

        

    }

    protected void id_box_TextChanged(object sender, EventArgs e)
    {

    }
}