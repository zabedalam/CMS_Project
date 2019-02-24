using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CMS_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"data source =.\sqlexpress;integrated security =true;database=CMS_DATABASE");
        SqlCommand cmd = null;
        SqlDataReader rdr = null;
        string sqlsel = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            RepeaterOutdoor.DataBind();
            sqlsel = "select * from Item where Selection_Id=2";
            ShowMyData();
        }

        public void ShowMyData()
        {
            try
            {
                conn.Open();
                cmd = new SqlCommand(sqlsel, conn);
                rdr = cmd.ExecuteReader();
                RepeaterOutdoor.DataSource = rdr;
                RepeaterOutdoor.DataBind();
                
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

    }
}