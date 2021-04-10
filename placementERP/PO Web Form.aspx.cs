using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace placementERP
{
    public partial class PO_Web_Form : System.Web.UI.Page
    {
        PODatabase db1 = new PODatabase();
        DataTable tbl;
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.Visible = false;
                DataSet ds= db1.driveDropdown();
                drive_drop.DataTextField = ds.Tables[0].Columns["company_name"].ToString();       
                drive_drop.DataValueField = ds.Tables[0].Columns["placement_id"].ToString();
                drive_drop.DataSource = ds.Tables[0];  
                drive_drop.DataBind();
                
            }



        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            string dept = dept_drop.SelectedValue;
            string cgpa = cgpa_txt.Text;
            string tenth = tenth_txt.Text;
            string hs = hs_txt.Text;
            string arrearNo = arrearNo_txt.Text;
            string arrearHistory = arrearHistory_drop.SelectedValue;

            GridView1.Visible = true;

            tbl = db1.showGridview(dept,cgpa,tenth,hs,arrearNo,arrearHistory);
            GridView1.DataSource = tbl;
            GridView1.DataBind();

        }
    }
}