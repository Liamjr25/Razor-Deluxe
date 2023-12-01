using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RazorDeluxe
{
    public partial class UpdateVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
        }



        protected void GridView1_DataBound1(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count > 0)
            {
                txtID.Text = GridView1.Rows[0].Cells[0].Text;
                txtBrandCompany.Text = GridView1.Rows[0].Cells[1].Text;
                txtModel.Text = GridView1.Rows[0].Cells[2].Text;
                txtYear.Text = GridView1.Rows[0].Cells[3].Text;
                txtTransmission.Text = GridView1.Rows[0].Cells[4].Text;
                txtFuelType.Text = GridView1.Rows[0].Cells[5].Text;
                txtPower.Text = GridView1.Rows[0].Cells[6].Text;
                txtEngineSize.Text = GridView1.Rows[0].Cells[7].Text;
                txtStandardFeatures.Text = GridView1.Rows[0].Cells[8].Text;
                txtTopspeed.Text = GridView1.Rows[0].Cells[9].Text;
                txtDescription.Text = GridView1.Rows[0].Cells[10].Text;
                txtImages.Text = GridView1.Rows[0].Cells[11].Text;
                txtCarsCode.Text = GridView1.Rows[0].Cells[12].Text;
                txtSeats.Text = GridView1.Rows[0].Cells[13].Text;
                txtFuelConsumption.Text = GridView1.Rows[0].Cells[14].Text;
            }
        }
    }
}

      