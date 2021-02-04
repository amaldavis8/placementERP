using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace placementERP
{
    public class PODatabase
    {
        string connectionString = "datasource=182.50.133.87;port=3306;Database=edoc;username=edoc;password=edoc@cce123;convert zero datetime=True";

        
        public DataTable showGridview(string dept,string cgpa,string tenth,string hs,string arrearNo,string arrearHistory)
        {
            DataTable dt=new DataTable();
            /*MySqlConnection gridCon = new MySqlConnection(connectionString);
            gridCon.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT stud_id,fir_name,sec_name,las_name,dept,cgpa,sslc,hse,back_logs,arrear_history from stud_details where dept='"+dept+"' and cgpa>="+cgpa+" and sslc>="+tenth+" and hse>="+hs+" and back_logs<="+arrearNo+" and arrear_history='"+ arrearHistory+"';", gridCon);
            da.Fill(dt);
            gridCon.Close();
            return dt;
            */


            string Query = "SELECT stud_id, fir_name, sec_name, las_name, dept, cgpa, sslc, hse, back_logs, arrear_history from stud_details where dept = '"+dept+"' and cgpa>= "+cgpa+" and sslc>= "+tenth+" and hse>= "+hs+" and back_logs<= "+arrearNo+" and arrear_history = '"+ arrearHistory+"'; ";
            MySqlConnection MyConn2 = new MySqlConnection(connectionString);
            MySqlCommand MyCommand2 = new MySqlCommand(Query, MyConn2);
            try
            {

                //Display query

                MyConn2.Open();
                //For offline connection we weill use  MySqlDataAdapter class.
                MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                MyAdapter.SelectCommand = MyCommand2;

                MyAdapter.Fill(dt);

                MyConn2.Close();
                
                
                return dt;
                
            }
            catch (Exception ex)
            {
                MyConn2.Close();
                
                dt = null;
                return dt;
            }



        }


    }
}