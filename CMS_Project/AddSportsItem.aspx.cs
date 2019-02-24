using System;
using System.Collections;
using System.IO;
using System.Data.SqlClient;
using System.Data;


namespace CMS_Project
{
    public partial class AddSportsItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string selectedValue = ddlImage.SelectedValue;
            ShowImages();
            ddlImage.SelectedValue = selectedValue;
        }

        private void ShowImages()
        {
            //Get all filepaths
            string[] images = Directory.GetFiles(Server.MapPath("~/Images/"));

            //Get all filenames and add them to an arraylist
            ArrayList imageList = new ArrayList();

            foreach (string image in images)
            {
                string imageName = image.Substring(image.LastIndexOf(@"\") + 1);
                imageList.Add(imageName);
            }

            //Set the arrayList as the dropdownview's datasource and refresh
            ddlImage.DataSource = imageList;
            ddlImage.DataBind();
        }

        private void ClearTextFields()
        {
            txtName.Text = "";
            txtPrice.Text = "";
            SelectionId.Text = "";
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"data source = .\sqlexpress; integrated security = true; database = CMS_DATABASE");
            SqlCommand cmd = null;

            try
            {
                conn.Open();

                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "MyInsertiondata";

                SqlParameter in1 = cmd.Parameters.Add("@Selection_Id", SqlDbType.Int);
                in1.Direction = ParameterDirection.Input;
                in1.Value = Convert.ToInt32(SelectionId.Text);

                SqlParameter in2 = cmd.Parameters.Add("@Item_name", SqlDbType.Text);
                in2.Direction = ParameterDirection.Input;
                in2.Value = txtName.Text;

                SqlParameter in3 = cmd.Parameters.Add("@Item_price", SqlDbType.Decimal);
                in3.Direction = ParameterDirection.Input;
                in3.Value = Convert.ToDecimal(txtPrice.Text);

                SqlParameter in4 = cmd.Parameters.Add("@Item_image", SqlDbType.NVarChar);
                in4.Direction = ParameterDirection.Input;
                in4.Value = ddlImage.SelectedValue;
                cmd.ExecuteNonQuery();
                ClearTextFields();
                
            }
            catch (Exception ex)
            {
                lblResult.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/Images/") + filename);
                lblResult.Text = "Image " + filename + " succesfully uploaded!";
                Page_Load(sender, e);
            }
            catch (Exception)
            {
                lblResult.Text = "Upload failed!";
            }
        }
    }
}