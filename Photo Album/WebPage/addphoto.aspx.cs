using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class WebPage_addphoto : System.Web.UI.Page
{
    public SqlConnection conn = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\savePhotos.mdf; Integrated Security = True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        captureTextBox.Text = "";
        Label1.Visible = false;
        captureTextBox.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension == ".bmp" || extension == ".ico" || extension == ".jpeg" || extension == ".jpg" || extension == ".gif" || extension == ".tiff" || extension == ".png")
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/upload/" + "/" + str));
                string imgpath = "~/Images/upload/" + "/" + str.ToString();
                SqlCommand cmd = new SqlCommand("insert into [dbo].[photoUpload] (captureBy, photo)values (@captureBy, @photo)", conn);
                cmd.Parameters.AddWithValue("@captureBy", captureTextBox.Text);
                cmd.Parameters.AddWithValue("@photo", imgpath);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label1.Text = "Photo Saved";
                Label1.ForeColor = System.Drawing.Color.GreenYellow;
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "This format is not accepted! Please try bmp, ico, jpeg, jpg, gif, till or png";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Oops! Something went wrong, please upload a photo!";
            Label1.ForeColor = System.Drawing.Color.Red;

            //Label1.Visible = true;
            //Label1.Text = "Plz upload the image!!!!";
            //Label1.Text = "This format is not accepte, Please try bmp, ico, jpeg, jpg, gif, till and png";

        }

        /*try
        {
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (FileUpload1.HasFile)
            {
                if (extension == "bmp" || extension == "ico" || extension == "jpeg" || extension == "jpg" || extension == "gif" || extension == "tiff" || extension == "png")
                {
                    string str = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/upload/" + str));
                    string imgpath = "~/Images/upload/" + "/" + str.ToString();
                    SqlCommand cmd = new SqlCommand("insert into [dbo].[photoUpload] (captureDate, captureBy, photo)values (@captureDate, @captureBy, @photo))", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {          
                    string strname = FileUpload1.FileName.ToString();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/upload/") + strname);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("insert into upload1 values('" + strname + "')", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label1.Visible = true;
                    Label1.Text = "Image Uploaded successfully";
                    //TextBox1.Text = "";
                }

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Image Uploaded successfully";

                //Label1.Visible = true;
                //Label1.Text = "Plz upload the image!!!!";
                //Label1.Text = "This format is not accepte, Please try bmp, ico, jpeg, jpg, gif, till and png";

            }

        }
        catch (Exception ex)
        {
            throw ex;
        }*/
    }
}