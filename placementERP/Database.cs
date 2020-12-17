﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace placementERP
{
    public class Database
    {
        string connectionString = "datasource=182.50.133.87;port=3306;Database=edoc;username=edoc;password=edoc@cce123;convert zero datetime=True";
        string ps, type;

        //loginCheck() 
        public string loginCheck(string user, string pass)
        {
            MySqlConnection loginCon = new MySqlConnection(connectionString);
            loginCon.Open();
            string checkuser = " select count(*) from login where id=" + user + "; ";
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

        //details()
        public string[] details(string user)
        {
            
                MySqlConnection detailsCon = new MySqlConnection(connectionString);
                detailsCon.Open();
                string fetch = "select cgpa,back_logs,sslc,hse,study_gap,fir_name,sec_name,las_name,cnt_no,eml_id,pin,dob,state,city from stud_details where stud_id=" + user + ";";
                MySqlCommand detailsCmd = new MySqlCommand(fetch, detailsCon);
                MySqlDataReader MyReader2;
                MyReader2 = detailsCmd.ExecuteReader();
                string[] s = new string[12];
            while (MyReader2.Read())
                {
                    s[0] = Convert.ToString(MyReader2["cgpa"]);
                    s[1] = Convert.ToString(MyReader2["back_logs"]);
                    s[2] = Convert.ToString(MyReader2["sslc"]);
                    s[3] = Convert.ToString(MyReader2["hse"]);
                    s[4] = Convert.ToString(MyReader2["study_gap"]);
                
                    if (Convert.ToString(MyReader2["sec_name"]) == "null")
                    {
                        s[5] = Convert.ToString(MyReader2["fir_name"]) + " " + Convert.ToString(MyReader2["las_name"]);
                    }
                    else
                    {
                        s[5] = Convert.ToString(MyReader2["fir_name"]) + " " + Convert.ToString(MyReader2["sec_name"]) + " " + Convert.ToString(MyReader2["las_name"]);
                    }
                    s[6] = Convert.ToString(MyReader2["dob"]);
                    s[7] = Convert.ToString(MyReader2["pin"]);
                    s[8] = Convert.ToString(MyReader2["eml_id"]);
                    s[9] = Convert.ToString(MyReader2["cnt_no"]);
                    s[10] = Convert.ToString(MyReader2["state"]);
                    s[11] = Convert.ToString(MyReader2["city"]);
            }
            detailsCon.Close();
            return s;
             
        }

        public bool updateDetails(string user,string cgpa,string arrears,string sslc,string hse,string study_gap)
        {
            string updateQuery = "Update stud_details set cgpa="+cgpa+",back_logs="+arrears+",sslc="+sslc+",hse="+hse+",study_gap="+study_gap+" where stud_id="+user+";";
            MySqlConnection updateCon = new MySqlConnection(connectionString);
            updateCon.Open();

            MySqlCommand updateCmd = new MySqlCommand(updateQuery, updateCon);

            MySqlDataReader MyReader3;
            MyReader3 = updateCmd.ExecuteReader();
            
            while(MyReader3.Read())
            {
            }

            updateCon.Close();
            return true;
        }



    }
}