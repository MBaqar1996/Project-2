using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=AdelphiPharmacy;Integrated Security=True");
    DataTable dt = new DataTable();
    static int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        DgvBind();
    }
    public void DgvBind()
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from ItemRegistration", con);
            SqlDataReader sDr = cmd.ExecuteReader();
            if (sDr.HasRows == true)
            {
                dgvOrder.DataSource = sDr;
                dgvOrder.DataBind();
            }
            con.Close();
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
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Home.aspx");
    }
}