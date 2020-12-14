using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace placementERP
{
    public class Database
    {
        string connectionString = "datasource=182.50.133.87;port=3306;Database=edoc;username=edoc;password=edoc@cce123;";

        public bool loginCheck(string user, string pass)
        {
            MySqlConnection loginCon = new MySqlConnection(connectionString);
            loginCon.Open();
            string checkuser = "select count(*) from login where stud_id=" +user+";";
            MySqlCommand loginCmd = new MySqlCommand(checkuser, loginCon);
            int temp = Convert.ToInt32(loginCmd.ExecuteScalar().ToString());
            loginCon.Close();

            if (temp == 1)
            {
                loginCon.Open();
                string checkpsw = "select psw from login where stud_id=" +user+";";
                MySqlCommand passCmd = new MySqlCommand(checkpsw, loginCon);
                string ps = passCmd.ExecuteScalar().ToString().Replace(" ", "");
                loginCon.Close();

                if (ps == pass)
                {
                    return true;
                }
                else
                    return false;


            }
            else
                return false;

        }
        
           
        



    }
}