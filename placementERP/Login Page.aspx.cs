﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace placementERP
{
    public partial class Login_Page : System.Web.UI.Page
    {
        Database db;
        bool a;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            db = new Database();
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                a = db.loginCheck(userid.Text, password.Text);

                if (a == true)
                {
                    Session["New"] = userid.Text;
                    Response.Redirect("Student WebForm.aspx");
                }
            

                else
                {
                    Response.Write("Invalid");
                }
                
            }
            catch (Exception ex)
            {
                Response.Write("Invalid");
            }

        }
       
    }
}