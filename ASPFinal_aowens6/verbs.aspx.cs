﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPFinal_aowens6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gvVerb_SelectedIndexChanged(object sender, EventArgs e)
        {
            frvVerb.PageIndex = gvVerb.SelectedRow.DataItemIndex;
        }
    }
}