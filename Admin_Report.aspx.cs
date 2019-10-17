using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Report : System.Web.UI.Page
{

    MySqlConnection con = new MySqlConnection(@"server=localhost;user id=root;database=audit_form;persistsecurityinfo=True;allowuservariables=True;pwd=Sawantwadi@123");
    MySqlCommand cmd;
    MySqlDataReader rd;
   

    static double avg;
    static double marks=0;
    static double mrcount;
    static int count;
    List<string> fac_nm = new List<string>();

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd = new MySqlCommand("select fac_name from faculty_details_b ",con);
        MySqlCommand cmd1 = new MySqlCommand("select count(fac_name) from faculty_details_b",con);
        MySqlCommand cmd3;



        count = Convert.ToInt16(cmd1.ExecuteScalar());

        rd = cmd.ExecuteReader();
        

        while (rd.Read())
        {
            fac_nm.Add(rd[0].ToString());
        }

        rd.Close();
            
        for (int i = 0; i < count; i++)
        {

           
            MySqlCommand cmd2 = new MySqlCommand("select avg(Average) from fac_performance where fac_name='" + fac_nm[i] + "'", con);

          

          
            rd.Close();
            MySqlCommand cmd5 = new MySqlCommand("select count(fac_name) from fac_performance", con);

            mrcount = Convert.ToInt16(cmd5.ExecuteScalar());
            avg =Convert.ToDouble(cmd2.ExecuteScalar());
           

            string qr = "insert into fac_avg(fac_name,avg) values('" + fac_nm[i] + "','" + avg + "')";

          cmd3 = new MySqlCommand(qr, con);

            cmd3.ExecuteNonQuery();
            
        }

        MySqlCommand cmd4 = new MySqlCommand("select distinct(fac_name),avg from fac_avg ", con);
        MySqlDataReader dr = cmd4.ExecuteReader();

        GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();

        }
    }
