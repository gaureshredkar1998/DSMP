using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class Faculty_feedback_form : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"server=127.0.0.1;user id=root;pwd=Sawantwadi@123;database=audit_form");
    MySqlConnection con1 = new MySqlConnection("server = localhost; user id = root;pwd=Sawantwadi@123; database=questionnaire;persistsecurityinfo=True");
    MySqlDataReader rd;
    List<Label> label = new List<Label>();
    List<RadioButtonList> radio = new List<RadioButtonList>();
    protected void Page_Load(object sender, EventArgs e)
    {
    
    
        date_box.Text = DateTime.Now.Date.ToShortDateString();

        IList<string> fac_name = new List<string>();
        IList<String> sub = new List<String>();
        int count = 0;
        int fac_count = 1;
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select fac_name,sub from faculty_details_b",con);
        rd = cmd.ExecuteReader();
        while(rd.Read())
        {
            fac_name.Add(rd[0].ToString());
            sub.Add(rd[1].ToString());
        }
        faculty_name_box.Text = fac_name[0];
        subject_box.Text = sub[0];
        Questions_add();
        rd.Close();
     }

    void Add_faculty()
    {
       


       
        
    }
    
    void Questions_add()
    {
        con.Close();
        con1.Open();
        long count = 1;
       // MySqlDataReader dr;
        List<string> que_list = new List<string>();
        List<string> qu_id = new List<string>();

        MySqlCommand cmd = new MySqlCommand("select que_id,question from current_feedback_questions where que_id is not null", con1);
        rd = cmd.ExecuteReader();


        while (rd.Read())
        {
            qu_id.Add(rd[0].ToString());
            que_list.Add(count + ". " + rd[1].ToString());
            count++;
        }
        rd.Close();

        for (int i = 0; i < qu_id.Count; i++)
        {

            Label lbl = new Label();
            lbl.ID = "label_" + i;
            lbl.Text = que_list[i];
            Panel1.Controls.Add(lbl);


            RadioButtonList radio_button = new RadioButtonList();
            radio_button.ID = "radio_button_" + i;
            MySqlCommand cmd1 = new MySqlCommand("select options from current_feedback_questions where type='" + qu_id[i] + "'", con1);
            rd = cmd1.ExecuteReader();
            while (rd.Read())
            {
                radio_button.Items.Add(rd[0].ToString());
            }


            //radio_button.Style.Add("LEFT", "100px");
            Panel1.Controls.Add(radio_button);
            Panel1.Controls.Add(new LiteralControl("<br/>"));
            rd.Close();
        }

    } 
   

    

    protected void Button1_Click(object sender, EventArgs e)
    {

      
        
    }
}