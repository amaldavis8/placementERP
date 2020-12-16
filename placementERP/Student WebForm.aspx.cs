using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace placementERP
{
    public partial class Student_WebForm : System.Web.UI.Page
    {
        //Database class defined in Database.cs file
        Database db;

        protected void Page_Load(object sender, EventArgs e)
        {
            string user = Convert.ToString(Session["New"]);
            db = new Database();
            string[] s = new string[5];

            //details() defined inside Database.cs file
            s = db.details(user);

            cgpa.Text = s[0];
            arrears.Text = s[1];
            sslc.Text = s[2];
            hse.Text = s[3];
            studyGap.Text = s[4];

            double fcgpa = Convert.ToDouble(cgpa.Text);
            double percent = (fcgpa * 10) - 3.75;
            btechPer.Text = Convert.ToString(percent);

        }

        
    }
}