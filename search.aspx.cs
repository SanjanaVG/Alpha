using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace emppro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text = Request.QueryString["Parameter"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string ConnectionString;
            SqlConnection MyCon;
            ConnectionString = "server=WSLKCMP5F-582;user id=sa;password=slk@SOFT;database=Adventure Works";
            MyCon = new SqlConnection(ConnectionString);
      
            try
            {
            
                if (DropDownList1.SelectedIndex == 1)
                {
                    
                    int Val = int.Parse(TextBox1.Text);
                    string Query = "select EmpId,EmpName,DOB,Gender,ContactNo,EmailId,DOJ,Department,Designation from Tbl_Employee where EmpId ='" + Val + "'";
                    SqlCommand cmd = new SqlCommand(Query, MyCon);
                   SqlDataAdapter sde = new SqlDataAdapter();
                   DataSet ds = new DataSet();
                   sde.Fill(ds);
                    DataTable dt = ds.Tables["tabl"];
                   DataGrid1.DataSource = ds;
                   DataGrid1.DataBind();
                }
                else if (DropDownList1.SelectedIndex == 2)
                {
                    string Val = TextBox1.Text;
                    string Query = "select EmpId,EmpName,DOB,Gender,ContactNo,EmailId,DOJ,Department,Designation from Tbl_Employee where EmpName ='" + Val + "'";
                    SqlDataAdapter sde = new SqlDataAdapter(Query, MyCon);
                        DataSet ds = new DataSet();
                        sde.Fill(ds);
                        DataGrid1.DataSource = ds;
                        DataGrid1.DataBind();
                 }                
              }
            catch (Exception ee)
            {
                lblMsg.Text = "the error is" + ee;
            }
            finally { MyCon.Close(); }
          
            }

    
    }
    }

