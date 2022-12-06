using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=AdelphiPharmacy;Integrated Security=True");
    DataTable dt = new DataTable();
    public string userNameL;
    public string PassWordL;
    public string userNameTemp;
    public string PassWordTemp;
    public string AuthenticiyUser;

    public string Client;
    public string SaleMan;
    public string Manager;
    public string Admin;

    public void hidfield()
    {
        txtEmail.Visible = false;
        txtPassword.Visible = false;
        txtUserName.Visible = false;
        ddbxAuthenticity.Visible = false;
        lblUserN.Visible = false;
        lblpswd.Visible = false;
        lblAuthentication.Visible = false;
        lblEmail.Visible = false;
        lblUserRegistration.Visible = false;
    }   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Login lastpage = (Login)Context.Handler;
            lblloginSession.Text = lastpage.Name;
            lblAuthenticiy.Text = lastpage.Aunthic;           
            lblUserExist.Visible = false;

            //Client View
            if (lblAuthenticiy.Text == "Client")
            {
                btnPurchase.Visible = false;
                hidfield();
            }
            //Saleman View

            else if (lblAuthenticiy.Text == "SaleMan")
            {
                btnPurchase.Visible = true;
                hidfield();

            }
            //Manager View
            else if (lblAuthenticiy.Text == "Manager")
            {
                hidfield();
            }
            //Admin View
            else if (lblAuthenticiy.Text == "Admin")
            {
                btnPurchase.Visible = true; ;
            }
            
        }
        else
        {
           
        }      
       
    }
    protected void btnItem_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Item.aspx");
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
    protected void btnSupplier_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    Response.Redirect("Supplier.aspx");
        //}
        //catch
        //{
        //    // handle exception here
        //}
        //finally
        //{
        //    // final cleanup code
        //}
    }
    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Purchase.aspx");
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
    protected void btnSale_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("SaleInvoice.aspx");
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
    protected void btnDashboard_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Dashboard.aspx");
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
    protected void btnReports_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Reports.aspx");
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
    public void DgvBind()
    {
        try
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tbRegistration", con);
            SqlDataReader sDr = cmd.ExecuteReader();
            if (sDr.HasRows == true)
            {
                dgvUserList.DataSource = sDr;
                dgvUserList.DataBind();
            }
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
            Console.Write("Error occurred." + ex.Message);
        }
        finally
        {
            Console.Write("Page is not load");
        }
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        try
        {
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
    public void CheckData()
    {
        try
        {
            userNameL = txtUserName.Text;
            PassWordL = txtPassword.Text;

            con.Open();

            string query = "Select UserName,Password from tbRegistration where Password='" + PassWordL + "' and UserName='" + userNameL + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                userNameTemp = dr[0].ToString();
                PassWordTemp = dr[1].ToString();
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
    public void InsertData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tbRegistration (username,password,email,authority)values('" + txtUserName.Text + "','" + txtPassword.Text + "','" + txtEmail.Text + "','" + ddbxAuthenticity.SelectedItem.ToString() + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            CheckData();
            if ((userNameL == userNameTemp) && (PassWordTemp == PassWordL))
            {
                lblUserExist.Visible = true;
            }
            else
            {
                
                InsertData();
                DgvBind();
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
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Home.aspx");
    }
}