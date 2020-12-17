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
            if (!IsPostBack)
            {
                string user = Convert.ToString(Session["New"]);
                db = new Database();
                string[] s = new string[9];
               

                //details() defined inside Database.cs file
                s = db.details(user);


                cgpa.Text = s[0];
                arrears.Text = s[1];
                sslc.Text = s[2];
                hse.Text = s[3];
                studyGap.Text = s[4];
                fullname_txt.Text = s[5];
                dob_txt.Text = s[6];
                pin_txt.Text = s[7];
                email_txt.Text = s[8];
                cnt_no_txt.Text = s[9];
                DropDownList1.SelectedValue = s[10];
                city_txt.Text = s[11];
                double fcgpa = Convert.ToDouble(cgpa.Text);
                double percent = (fcgpa * 10) - 3.75;
                btechPer.Text = Convert.ToString(percent);
            }

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            db = new Database();
            string user = Convert.ToString(Session["New"]);
            db.updateDetails(user, cgpa.Text, arrears.Text, sslc.Text, hse.Text, studyGap.Text);

           
        }
    }
}