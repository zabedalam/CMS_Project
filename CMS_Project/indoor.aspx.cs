using System;
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
            sqlsel = "select * from Item where Selection_Id=1";
            ShowMyData();
            
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