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

        //Filtering student list
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

        public bool addDrive(string cmpname, string year, string session, string levels)
        {
            string insertQuery = "Insert into placement(company_name,year,session,levels) values('"+cmpname+"',"+year+",'"+session+"',"+levels+");";
            MySqlConnection addCon = new MySqlConnection(connectionString);
            addCon.Open();

            MySqlCommand addCmd = new MySqlCommand(insertQuery, addCon);

            MySqlDataReader MyReader20;
            MyReader20 = addCmd.ExecuteReader();

            while (MyReader20.Read())
            {
            }

            addCon.Close();
            return true;
        }

        public DataSet driveDropdown()
        {
            string dropQuery = "Select * from placement;";
            MySqlConnection dropCon = new MySqlConnection(connectionString);
            dropCon.Open();
            MySqlCommand driveCmd = new MySqlCommand(dropQuery, dropCon);
            MySqlDataAdapter dropAdapter = new MySqlDataAdapter();
            DataSet ds = new DataSet();
            dropAdapter.SelectCommand = driveCmd;
            dropAdapter.Fill(ds);
            dropCon.Close();
    
            return ds;

        }


    }
}