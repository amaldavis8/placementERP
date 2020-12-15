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
        string ps, type;

        public string loginCheck(string user, string pass)
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
                string checkpsw = "select psw,type from login where stud_id="+user+";";
                MySqlCommand passCmd = new MySqlCommand(checkpsw, loginCon);
                MySqlDataReader MyReader;
                MyReader = passCmd.ExecuteReader();

                while (MyReader.Read())
                {
                    ps = Convert.ToString(MyReader["psw"]);
                    type = Convert.ToString(MyReader["type"]);
                }

                loginCon.Close();

                if (ps == pass)
                {
                    return type;
                }
                else
                    return "null";


            }
            else
                return "null";

        }
        
           
        



    }
}