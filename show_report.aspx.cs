using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection("server=localhost;user id=root;pwd=Sawantwadi@123; persistsecurityinfo=True;database=audit_form");

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void dp1_selected_index_change(object sender, EventArgs e)
    {
        con.Open();


        

    }
}