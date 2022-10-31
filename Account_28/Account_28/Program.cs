using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment_02_Account_Details
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                string connectionstring = "Data Source=INLPF3KJ0JJ\\MSSQLSERVER01;Initial Catalog=Chaitanya;trusted_connection=true";
                SqlConnection sqlconn = new SqlConnection(connectionstring);
                sqlconn.Open();

                Console.WriteLine("Enter The Account Balance");

                long bal = Convert.ToInt64(Console.ReadLine());

                string query = @"select Acc_no,cus_name,balance,Account_Details.cus_Aadhar_no,Acc_opened_date,Last_transaction_date from Account_Details INNER JOIN cus_Information   ON Account_Details.cus_Aadhar_no = cus_Information.cus_Aadhar_no  WHERE Account_Details.balance>@bal";

                SqlCommand cmd = new SqlCommand(query, sqlconn);

                cmd.Parameters.Add("@bal", System.Data.SqlDbType.BigInt).Value = bal;

                SqlDataReader reader = cmd.ExecuteReader();



                while (reader.Read())
                {
                    Console.Write(reader[0] + "  ");
                    Console.Write(reader[1] + "  ");
                    Console.Write(reader[2] + "  ");
                    Console.Write(reader[3] + "  ");
                    Console.Write(reader[4] + "  ");
                    Console.Write(reader[5] + "  ");

                    Console.WriteLine();
                }
                Console.WriteLine("Execution successfully completed!!");
                reader.Close();
                sqlconn.Close();
                Console.ReadKey();
            }
            catch (SqlException exp)
            {
                Console.WriteLine(exp.Message);
                Console.WriteLine("Sql database related problem");
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine("General C# code related problem");
            }
        }
    }
}