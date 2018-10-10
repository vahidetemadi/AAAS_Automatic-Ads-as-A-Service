using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace automatic_ads
{
    public partial class SaleForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            desc.Text = types.SelectedItem.Value;
        }

        protected void types_SelectedIndexChanged(object sender, EventArgs e)
        {
            desc.Text = types.SelectedItem.Value;
        }

        protected void next_Click(object sender, EventArgs e)
        {
            Forms.ActiveViewIndex = 1;
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Forms.ActiveViewIndex = 0;
        }
    }
}