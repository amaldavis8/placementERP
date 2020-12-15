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
            string checkuser = "select count(*) from login where id=" + user + ";";
            MySqlCommand loginCmd = new MySqlCommand(checkuser, loginCon);
            int temp = Convert.ToInt32(loginCmd.ExecuteScalar().ToString());
            loginCon.Close();

            if (temp == 1)
            {
                loginCon.Open();
                string checkpsw = "select psw,type from login where id=" + user + ";";
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

        public string[] details(string user)
        {
            
           
                MySqlConnection detailsCon = new MySqlConnection(connectionString);
                detailsCon.Open();
                string fetch = "select cgpa,back_logs,sslc,hse,study_gap from stud_details where stud_id=" + user + ";";
                MySqlCommand detailsCmd = new MySqlCommand(fetch, detailsCon);

                MySqlDataReader MyReader2;
                MyReader2 = detailsCmd.ExecuteReader();
                string[] s = new string[5];

                while (MyReader2.Read())
                {
                    s[0] = Convert.ToString(MyReader2["cgpa"]);
                    s[1] = Convert.ToString(MyReader2["back_logs"]);
                    s[2] = Convert.ToString(MyReader2["sslc"]);
                    s[3] = Convert.ToString(MyReader2["hse"]);
                    s[4] = Convert.ToString(MyReader2["study_gap"]);
                }
                detailsCon.Close();
                return s;
            
            
        }



    }
}