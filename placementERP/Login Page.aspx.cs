using System;
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
        //Database class defined in Database.cs file
        Database db;

        //loginCheck() returns respective account-type(S/P/R) to string 'a'
        string a;

        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            db = new Database();
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                //loginCheck() defined inside Database.cs file
                a = db.loginCheck(userid.Text, password.Text);

                if (a != "null")
                {
                    Session["New"] = userid.Text;

                    if (a=="S")
                    {
                        Response.Redirect("Student WebForm.aspx");
                    }
                    else if(a=="P")
                    {

                    }
                    else if(a=="R")
                    {

                    }  
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