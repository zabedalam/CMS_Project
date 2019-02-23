﻿using System;
using System.Collections;
using System.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CMS_Project
{
    public partial class Indoor : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"data source =.\sqlexpress;integrated security =true;database=CMS_DATABASE");
        SqlCommand cmd = null;
        SqlDataReader rdr = null;
        string sqlsel = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterIndoor.DataBind();
            //LabelMessage.Text = "No error message";

        }

        public void ShowMyData()
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlsel, conn);
                rdr = cmd.ExecuteReader();
                RepeaterIndoor.DataSource = rdr;
                RepeaterIndoor.DataBind();
                //LabelMessage.Text = "after databind";
            }
            catch (Exception ex)
            {
                LabelMessage.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ButtonShow_Click(object sender, EventArgs e)
        {
            sqlsel = "select top 5 * from Item";
            ShowMyData();
        }
    }
}