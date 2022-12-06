using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Item : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=AdelphiPharmacy;Integrated Security=True");
    DataTable dt = new DataTable();
    static int count = 0;
    public void autoItemCode()
    {

        con.Open();
        int a;
        string query = "Select Max(ItemCode) from ItemRegistration";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            string val = dr[0].ToString();
            if (val == "")
            {
                txtItmC.Text = "0001";
            }
            else
            {
                a = Convert.ToInt32(dr[0].ToString());
                a++;
                txtItmC.Text = a.ToString();

                if (a > 0 && a < 10)
                {
                    txtItmC.Text = "000" + txtItmC.Text;
                }
                else if (a > 9 && a < 99)
                {
                    txtItmC.Text = "00" + txtItmC.Text;
                }
                else if (a > 99 && a < 999)
                {
                    txtItmC.Text = "0" + txtItmC.Text;
                }
            }
        }
        con.Close();
    }
    public void Clear()
    {
        try
        {
            txtItem.Text = "";
            txtCompany.Text = "";
            txtCategory.Text = "";
            txtPurchaseP.Text = "";                   
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void DateTimeSettings()
    {
        //txtDate.Text = DateTime.Now.ToString("dd-MMM-yyyy");
        //txtTime.Text = DateTime.Now.ToString("hh:mm:tt");
        DateTime date = new DateTime();
        date = DateTime.Now;
        string Date = date.ToString("dd-MMM-yyyy");
        txtDate.Text = Date;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {          
            //GetPendingRecieptno();
            if (!IsPostBack)
            {
                autoItemCode();

            }
            DateTimeSettings();
            if (!IsPostBack)
            {

            }
        }
        catch
        {

        }
        finally
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
        try
        {
            Response.Redirect("Supplier.aspx");
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
    protected void btnSale_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    Response.Redirect("SaleInvoice.aspx");
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
    protected void btnReports_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    Response.Redirect("Reports.aspx");
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
    public void InsertData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ItemRegistration (ItemCode,ItemName,Generic,Category,Company,Date,Sale)values('" + txtItmC.Text + "','" + txtItem.Text + "','" + txtGeneric.Text + "','" + txtCategory.Text + "','" + txtCompany.Text + "','" + txtDate.Text + "','" + txtPurchaseP.Text + "')", con);
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
            
            InsertData();
            Clear();
            autoItemCode();
            DgvBind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {      
        btnSave.Enabled = false;
    }
    public void DgvBind()
    {
         try
         {

             con.Open();
             SqlCommand cmd = new SqlCommand("Select * from ItemRegistration", con);
             SqlDataReader sDr = cmd.ExecuteReader();
             if(sDr.HasRows==true)
             {
                 dgvItem.DataSource = sDr;
                 dgvItem.DataBind();
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
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Clear();
        autoItemCode();
        btnSave.Enabled = true;
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Home.aspx");
    }
}