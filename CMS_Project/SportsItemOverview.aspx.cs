﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS_Project
{
    public partial class SportsItemOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewSportsItemOverview_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewSportsItemOverview.DataBind();
        }
    }
}