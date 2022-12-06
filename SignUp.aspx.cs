using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=AdelphiPharmacy;Integrated Security=True");
    DataTable dt = new DataTable();
    static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Visible = false;
    }

    protected void chbxPassword_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void btnShowPsd_Click(object sender, EventArgs e)
    {
        try
        {                                      
        }
        catch
        {

        }
        finally
        {

        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Login.aspx");
        }
        catch (Exception ex)
        {
            Console.Write("Error occurred." + ex.Message);
        }
        finally
        {
            Console.Write("Page is not load");
        }
    }
    public void Clear()
    {
        try
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtEmail.Text = "";          
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void insertdata()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbRegistration (username,password,email)values('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();
        }
        catch (Exception ex)
        {
            Console.Write("Error occurred." + ex.Message);
        }
        finally
        {
            Console.Write("Page is not load");
        }
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        try
        {
            insertdata();
            Clear();
            lblMsg.Visible = true;
        }
        catch (Exception ex)
        {
            Console.Write("Error occurred." + ex.Message);
        }
        finally
        {
            Console.Write("Page is not load");
        }
    }
}