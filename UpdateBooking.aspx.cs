using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RazorDeluxe
{
    public partial class UpdateBooking : System.Web.UI.Page
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
                txtId.Text = GridView1.Rows[0].Cells[0].Text;
                txtVehicleBrand.Text = GridView1.Rows[0].Cells[1].Text;
                txtPrice.Text = GridView1.Rows[0].Cells[2].Text;
                txtCardNumber.Text = GridView1.Rows[0].Cells[3].Text;
                txtCarCode.Text = GridView1.Rows[0].Cells[4].Text;
                txtBankNumber.Text = GridView1.Rows[0].Cells[5].Text;
                txtCVV.Text = GridView1.Rows[0].Cells[6].Text;
                txtFirstName.Text = GridView1.Rows[0].Cells[7].Text;
                txtLastName.Text = GridView1.Rows[0].Cells[8].Text;
                txtEMail.Text = GridView1.Rows[0].Cells[9].Text;
                txtCarID.Text = GridView1.Rows[0].Cells[10].Text;
                txtModel.Text = GridView1.Rows[0].Cells[11].Text;
                txtBankName.Text = GridView1.Rows[0].Cells[12].Text;
                txtBookingId.Text = GridView1.Rows[0].Cells[13].Text;
                txtDate.Text = GridView1.Rows[0].Cells[14].Text;
                txtTotal.Text = GridView1.Rows[0].Cells[15].Text;
        }

        }

        
    }
}