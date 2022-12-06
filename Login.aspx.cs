using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string userNameL;
    public string PassWordL;
    public string userNameTemp;
    public string PassWordTemp;
    public string AuthicityRec;
   /// <summary>
   
    /// </summary>
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=AdelphiPharmacy;Integrated Security=True");
    DataTable dt = new DataTable();
    static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtauthenticity.Visible = false;
    }
    
    public void GetDataSID()
    {
        userNameL = txtUserName.Text;
        PassWordL = txtPassword.Text;

        con.Open();

        string query = "Select UserName,Password,authority from tbRegistration where Password='" + PassWordL + "' and UserName='" + userNameL + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            userNameTemp = dr[0].ToString();
            PassWordTemp = dr[1].ToString();
            txtauthenticity.Text = dr[2].ToString();
        }
        con.Close();
    }
    public string Name
    {
        get
        {
            return txtUserName.Text;
        }
    }
    public string Aunthic
    {
        get
        {
            return txtauthenticity.Text;
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {      
        try
        {

            GetDataSID();
            if ((userNameL == userNameTemp) && (PassWordTemp == PassWordL))
            {
                    Server.Transfer("Dashboard.aspx");                   
            }
            else
            {

            }
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
            Response.Redirect("SignUp.aspx");
        }
        catch
        {
            // handle exception here
        }
        finally
        {
            // final cleanup code
        }
    }
}