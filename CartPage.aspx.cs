using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RazorDeluxe
{
    public partial class CartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            {
                int i;
                foreach (DataListItem item in DataList1.Items)
                {
                    DataList1.SelectedIndex = e.Item.ItemIndex;
                    i = DataList1.SelectedIndex;
                    Session["BrandCompanySession"] = ((Label)DataList1.SelectedItem.FindControl("BrandCompanyLabel")).Text;
                    Session["CarCodeSession"] = ((Label)DataList1.SelectedItem.FindControl("CarCodeLabel")).Text;
                    Session["PriceSession"] = ((Label)DataList1.SelectedItem.FindControl("PriceLabel")).Text;
                    Session["TotalSession"] = ((Label)DataList1.SelectedItem.FindControl("TotalLabel")).Text;

                }

               

            }

        }
       
    }
}