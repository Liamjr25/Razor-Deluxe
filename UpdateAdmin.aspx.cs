using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RazorDeluxe
{
    public partial class UpdateAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }

        

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txtId1.Text = GridView1.Rows[0].Cells[0].Text;
                txtUsername.Text = GridView1.Rows[0].Cells[1].Text;
                txtPassword.Text = GridView1.Rows[0].Cells[2].Text;
                txtFirstName.Text = GridView1.Rows[0].Cells[3].Text;
                txtLastName.Text = GridView1.Rows[0].Cells[4].Text;
            }
        }

      
    }
}