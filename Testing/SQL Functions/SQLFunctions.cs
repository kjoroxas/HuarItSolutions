using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using HuarITSolutions.Model;
using Testing.Model;

namespace HuarITSolutions.Class
{
    public class SQLFunctions
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

        public List<ApprovedGames> getApprovedGames()
        {
            List<ApprovedGames> _appGames = new List<ApprovedGames>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("select * from fnApprovedGames()", conn);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {

                        while (reader.Read())
                        {
                            ApprovedGames chart = new ApprovedGames();
                            chart.Id = int.Parse(reader[0].ToString());
                            chart.GameCode = reader[1].ToString();
                            chart.PrintDescription = reader[2].ToString();
                            chart.TextFieldCount = int.Parse(reader[3].ToString());
                            chart.MaxCombi = int.Parse(reader[4].ToString());
                            chart.CombiLength = int.Parse(reader[5].ToString());
                            chart.IsActive = bool.Parse(reader[6].ToString());
                            chart.IsLocal = bool.Parse(reader[7].ToString());
                            // chart.DateTimeCreadted = DateTime.Parse(reader[8].ToString());
                            if (reader.IsDBNull(8))
                            {
                                chart.DateTimeCreadted = null;
                            }
                            else
                            {
                                chart.DateTimeCreadted = DateTime.Parse(reader[8].ToString());
                            }

                            chart.WinningValueHigh = decimal.Parse(reader[9].ToString());
                            chart.WinningValueLow = decimal.Parse(reader[10].ToString());
                            chart.CommissionA = decimal.Parse(reader[11].ToString());
                            chart.CommissionB = decimal.Parse(reader[12].ToString());
                            chart.LowEndingLimit = int.Parse(reader[13].ToString());
                            chart.HighEndingLimit = int.Parse(reader[14].ToString());
                            chart.BackPayTypeA = decimal.Parse(reader[15].ToString());
                            chart.BackPayTypeB = decimal.Parse(reader[16].ToString());

                            _appGames.Add(chart);
                        }
                        return _appGames;
                    }
                }
                catch (Exception ex)
                {
                    return _appGames;
                }
            }

        }

        public void updateGameSettings(string gameCode, string printCode, string highBet, string lowBet, string lowBetLimit, string highBetLimit, string commAdmin, string commCoor, string adPay, string coorPay)
        {
            var storedProcName = "spUpdate_GameSettings";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@GameCode", SqlDbType.VarChar).Value = gameCode;
                        command.Parameters.Add("@PrintDescription", SqlDbType.VarChar).Value = printCode;
                        command.Parameters.Add("@WinningValueHigh", SqlDbType.VarChar).Value = highBet;
                        command.Parameters.Add("@WinningValueLow", SqlDbType.VarChar).Value = lowBet;
                        command.Parameters.Add("@LowEndingLimit", SqlDbType.VarChar).Value = lowBetLimit;
                        command.Parameters.Add("@HighEndingLimit", SqlDbType.VarChar).Value = highBetLimit;
                        command.Parameters.Add("@CommissionA", SqlDbType.VarChar).Value = commAdmin;
                        command.Parameters.Add("@CommissionB", SqlDbType.VarChar).Value = commCoor;
                        command.Parameters.Add("@BackPayTypeA", SqlDbType.VarChar).Value = adPay;
                        command.Parameters.Add("@BackPayTypeB", SqlDbType.VarChar).Value = coorPay;

                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch(Exception ex)
                {
                }
            }
        }
        public void saveControlledCombination(string gameCode, string combination, string betLimit)
        {
            var storedProcName = "spSave_ControlledCombination";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@GameCode", SqlDbType.VarChar).Value = gameCode;
                        command.Parameters.Add("@Combination", SqlDbType.VarChar).Value = combination;
                        command.Parameters.Add("@BetLimit", SqlDbType.VarChar).Value = betLimit;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void deleteControllerCombination(int id)
        {
            var storedProcName = "spDeleteControlledCombi";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@Id", SqlDbType.VarChar).Value = id;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void saveLowWinCombination(string gameCode, string combination)
        {
            var storedProcName = "spSave_LowWinCombination";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@GameCode", SqlDbType.VarChar).Value = gameCode;
                        command.Parameters.Add("@Combination", SqlDbType.VarChar).Value = combination;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void deleteLowWinningCombination(string gameCode, string combination)
        {
            var storedProcName = "spDeleteLowWinningCombination";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@GameCode", SqlDbType.VarChar).Value = gameCode;
                        command.Parameters.Add("@Combination", SqlDbType.VarChar).Value = combination;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }

        public List<ControlledCombinations> getControlledCombinations(string gameCode)
        {
            List<ControlledCombinations> controlledCombi = new List<ControlledCombinations>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnLowWinCombinations(@gamecode) Order by GameCode, Combination", conn);
                command.Parameters.AddWithValue("@gamecode", gameCode);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ControlledCombinations cCOmbi = new ControlledCombinations();
                            cCOmbi.Id = int.Parse(reader[0].ToString());
                            cCOmbi.GameCode = reader[1].ToString();
                            cCOmbi.Combination = reader[2].ToString();
                            cCOmbi.BetLimit = decimal.Parse(reader[3].ToString());
                            

                            controlledCombi.Add(cCOmbi);
                        }
                        return controlledCombi;
                    }
                }
                catch (Exception ex)
                {
                    return controlledCombi;
                }
            }

        }

        public List<ControlledCombinations> getLowWinningCombinations(string gameCode)
        {
            List<ControlledCombinations> controlledCombi = new List<ControlledCombinations>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnLowWinCombinations(@gamecode) Order by GameCode, Combination", conn);
                command.Parameters.AddWithValue("@gamecode", gameCode);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ControlledCombinations cCOmbi = new ControlledCombinations();
                            cCOmbi.Id = int.Parse(reader[0].ToString());
                            cCOmbi.GameCode = reader[1].ToString();
                            cCOmbi.Combination = reader[2].ToString();
                            cCOmbi.BetLimit = decimal.Parse(reader[3].ToString());


                            controlledCombi.Add(cCOmbi);
                        }
                        return controlledCombi;
                    }
                }
                catch (Exception ex)
                {
                    return controlledCombi;
                }
            }

        }

    }
}