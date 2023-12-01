using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data.Sql;
using System.Data;

namespace RazorDeluxe
{
    public partial class AddVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                    int lastID = 0;
            int newID = 0;

            //get last id
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                lastID = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);
            }
            newID = lastID + 1;
            txtID.Text = Convert.ToString(newID);
            int newCarsCode;
            string CodesubString = "";

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CodesubString = GridView1.Rows[i].Cells[12].Text;
                CodesubString = CodesubString.Substring(1);
            }

            newCarsCode = Convert.ToInt16(CodesubString) + 1;

            txtnewCarsCode.Text = "B" + Convert.ToString(newCarsCode);
        }

     
        protected void btnAdd_Click(object sender, EventArgs e)
        {
             if (fuImage.PostedFile != null)
            {

                string myImage = Path.GetFileName(fuImage.PostedFile.FileName);
                txtImages.Text = "Img/" + myImage;
                //Save files to disk

                fuImage.SaveAs(Server.MapPath("Img/" + myImage));
            }
            SqlDataSource1.Insert();
            Response.Redirect("AddVehicle.aspx");
        }
        }
    }
