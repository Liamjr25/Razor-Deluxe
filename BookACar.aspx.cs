using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RazorDeluxe
{
    public partial class BookACar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int lastId = 0;
            int newId = 0;

            //get last id
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                lastId = Convert.ToInt16(GridView1.Rows[i].Cells[0].Text);
            }
            newId = lastId + 1;
            txtId.Text = Convert.ToString(newId);
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Insert();
            Response.Redirect("CartPage.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            {
                int i;
                foreach (DataListItem item in DataList1.Items)
                {
                    DataList1.SelectedIndex = e.Item.ItemIndex;
                    i = DataList1.SelectedIndex;
                    Session["DescSession"] = ((Label)DataList1.SelectedItem.FindControl("DescriptionLabel")).Text;
                    Session["TitleSession"] = ((Label)DataList1.SelectedItem.FindControl("TitleLabel")).Text;
                    Session["ImgSession"] = ((Label)DataList1.SelectedItem.FindControl("ImageLabel")).Text;
                    Session["PriceSession"] = ((Label)DataList1.SelectedItem.FindControl("PriceLabel")).Text;

                }

                Response.Redirect("CartPage.aspx");

            }

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CartPage.aspx");
        }

    }
}
  