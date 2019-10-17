using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        Menu menu = (Menu)sender;
        MenuItem item = menu.SelectedItem;
        if (item.Text == "DEPARTMENT")
        {
            item.Selected = true;
            Response.Redirect("Admin_add_department.aspx?item=" + item.Text);
        }
    }
}
