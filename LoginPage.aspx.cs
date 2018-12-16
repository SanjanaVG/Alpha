using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace emp_repository
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string EId = TextBox1.Text;
                string Pass = TextBox2.Text;
               
                con.Open();
                string Query= "select * from Tbl_Employee where Emp_ID='"+EId+ "' and Password1='" +Pass+ "' ";
                SqlCommand cmd = new SqlCommand(Query, con);
                SqlDataReader Sdr = cmd.ExecuteReader();
                if(Sdr.Read())
                {
                    Response.Redirect("WebForm1.aspx",true);
                }
                else
                {
                    lblMsg.Text = "Invalid Credentials!!!!";
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}