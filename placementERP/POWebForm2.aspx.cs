using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace placementERP
{
    public partial class POWebForm2 : System.Web.UI.Page
    {

        PODatabase db;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addplcmnt_btn_Click(object sender, EventArgs e)
        {
            db = new PODatabase();
            
            db.addDrive(cmpname_txt.Text, year_txt.Text, session_txt.Text, levels_txt.Text);
            
        }
    }
}