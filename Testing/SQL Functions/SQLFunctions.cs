using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using Antlr.Runtime.Misc;
using System.Xml.Linq;
using HuarITSolutions.Model;
using WebGrease.Css.Ast;
using System.Web.Util;

namespace HuarITSolutions.Class
{
    public class SQLFunctions
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

        public List<ApprovedGamesModel> getApprovedGames()
        {
            List<ApprovedGamesModel> _appGames = new List<ApprovedGamesModel>();

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
                            ApprovedGamesModel chart = new ApprovedGamesModel();
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
        public void updateGameSettingsMenu(string gameCode, string printCode, string highBet, string lowBet, string lowBetLimit, string highBetLimit, string commAdmin, string commCoor, string adPay, string coorPay)
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
        public List<ControlledCombinationsModel> getControlledCombinations(string gameCode)
        {
            List<ControlledCombinationsModel> controlledCombi = new List<ControlledCombinationsModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnControlledCombinations(@gamecode) Order by GameCode, Combination", conn);
                command.Parameters.AddWithValue("@gamecode", gameCode);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            ControlledCombinationsModel cCOmbi = new ControlledCombinationsModel();
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
        public List<LowWinningCombinationsModel> getLowWinningCombinations(string gameCode)
        {
            List<LowWinningCombinationsModel> controlledCombi = new List<LowWinningCombinationsModel>();

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
                            LowWinningCombinationsModel cCOmbi = new LowWinningCombinationsModel();
                            cCOmbi.Id = int.Parse(reader[0].ToString());
                            cCOmbi.GameCode = reader[1].ToString();
                            cCOmbi.Combination = reader[2].ToString();


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
        public List<SalesRepresentativeModel> getSalesRepresentatives()
        {
            List<SalesRepresentativeModel> salesRepresentative = new List<SalesRepresentativeModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnSalesRepresentatives()", conn);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            SalesRepresentativeModel salesRep = new SalesRepresentativeModel();
                            salesRep.UserID = reader[0].ToString();
                            salesRep.UserName = reader[1].ToString();
                            salesRep.DeviceId = reader[2].ToString();//reader[2] == DBNull.Value ? 0 : Int32.Parse(reader[2].ToString());
                            salesRep.Name = reader[3].ToString();
                            salesRep.Address = reader[4].ToString();
                            salesRep.Area = reader[5].ToString();
                            salesRep.MobileNumber = reader[6] == DBNull.Value ? "" : reader[6].ToString();
                            salesRep.MobileNumber2 = reader[7] == DBNull.Value ? "" : reader[7].ToString();
                            salesRep.Role = reader[7] == DBNull.Value ? "" : reader[8].ToString();
                            salesRep.PassWord = reader[9].ToString();
                            salesRep.Coordinator = reader[10] == DBNull.Value ? "" : reader[10].ToString();
                            salesRep.Active = Convert.ToBoolean(reader[11]);
                            salesRep.Latittude = reader[12] == DBNull.Value ? "" : reader[12].ToString();
                            salesRep.Longitude = reader[13] == DBNull.Value ? "" : reader[13].ToString();
                            salesRep.GroupAccount =reader[14].ToString();
                            salesRep.CommissionType = reader[15].ToString();
                            salesRep.BackPayType = reader[16].ToString();
                            salesRep.Cluster = reader[17].ToString();


                            salesRepresentative.Add(salesRep);
                        }
                        return salesRepresentative;
                    }
                }
                catch (Exception ex)
                {
                    return salesRepresentative;
                }
            }
        }
        public void saveSalesRepresentatives(string username, string name, string address, string area, string mobileNumber, string password, bool active, string groupAccount, string commissionType, string backPayType, int counter, string cluster)
        {
            var storedProcName = "spSave_SalesRep";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@UserName", SqlDbType.VarChar).Value = username;
                        command.Parameters.Add("@Name", SqlDbType.VarChar).Value = name;
                        command.Parameters.Add("@Address", SqlDbType.VarChar).Value = address;
                        command.Parameters.Add("@Area", SqlDbType.VarChar).Value = area;
                        command.Parameters.Add("@MobileNumber", SqlDbType.VarChar).Value = mobileNumber;
                        command.Parameters.Add("@PassWord", SqlDbType.VarChar).Value = password;
                        command.Parameters.Add("@Active", SqlDbType.VarChar).Value = active;
                        command.Parameters.Add("@GroupAccount", SqlDbType.VarChar).Value = groupAccount;
                        command.Parameters.Add("@CommissionType", SqlDbType.VarChar).Value = commissionType;
                        command.Parameters.Add("@BackPayType", SqlDbType.VarChar).Value = backPayType;
                        command.Parameters.Add("@Counter", SqlDbType.VarChar).Value = counter;
                        command.Parameters.Add("@Cluster", SqlDbType.VarChar).Value = cluster;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void deleteSalesRepresentatives(string outletCode)
        {
            var storedProcName = "spDelete_SalesRep";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@OutletCode", SqlDbType.VarChar).Value = outletCode;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public List<GameCodeModel> getCurrentGameCode()
        {
            List<GameCodeModel> gameCode = new List<GameCodeModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnCurrentGameCode()", conn);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            GameCodeModel gameC = new GameCodeModel();

                            gameCode.Add(gameC);
                        }
                        return gameCode;
                    }
                }
                catch (Exception ex)
                {
                    return gameCode;
                }
            }
        }
        public List<BetSummary> getBetSummary(DateTime drawDate, string gameCode)
        {
            List<BetSummary> betSummary = new List<BetSummary>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnBetSummary(@DrawDate, @GameCode)", conn);
                command.Parameters.AddWithValue("@DrawDate", drawDate);
                command.Parameters.AddWithValue("@GameCode", gameCode);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            BetSummary betS = new BetSummary();

                            betSummary.Add(betS);
                        }
                        return betSummary;
                    }
                }
                catch (Exception ex)
                {
                    return betSummary;
                }
            }
        }
        public List<UsersModel> getUserActive(DateTime drawDate, string stat)
        {
            List<UsersModel> userLists = new List<UsersModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnUsers(@drawDate) Where ActiveToday=@stat Order by UserName", conn);
                command.Parameters.AddWithValue("@drawDate", drawDate);
                command.Parameters.AddWithValue("@stat", stat);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            UsersModel user = new UsersModel();

                            userLists.Add(user);
                        }
                        return userLists;
                    }
                }
                catch (Exception ex)
                {
                    return userLists;
                }
            }
        }
        public List<SalesSummaryModel> getSalesSummary(DateTime drawDate, string outletCode)
        {
            List<SalesSummaryModel> salesSum = new List<SalesSummaryModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select Code, Gross, Commission = Com, BetAmount, PayOut, BackPay, NetAmount, ReceiveBy = RecieveBy, DrawDate from SummaryPerAccount(@outletcode, @drawdate) Order by Code ASC", conn);
                command.Parameters.AddWithValue("@outletcode", outletCode);
                command.Parameters.AddWithValue("@drawdate", drawDate);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            SalesSummaryModel sales = new SalesSummaryModel();

                            salesSum.Add(sales);
                        }
                        return salesSum;
                    }
                }
                catch (Exception ex)
                {
                    return salesSum;
                }
            }
        }
        public List<SalesSummaryModel> getSalesSummaryOverAll(DateTime drawDate, string accountType)
        {
            List<SalesSummaryModel> salesSum = new List<SalesSummaryModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select Code, Gross, Commission = Com, BetAmount, PayOut, BackPay, NetAmount, ReceiveBy = RecieveBy, DrawDate from SummaryOverAll(@drawDate,@accountType) Order by Code ASC", conn);
                command.Parameters.AddWithValue("@drawdate", drawDate);
                command.Parameters.AddWithValue("@accountType", accountType);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            SalesSummaryModel sales = new SalesSummaryModel();

                            salesSum.Add(sales);
                        }
                        return salesSum;
                    }
                }
                catch (Exception ex)
                {
                    return salesSum;
                }
            }
        }
        public void saveWinningCombination(DateTime DrawDate, string DrawGameCode, string WinningCombination)
        {
            var storedProcName = "spSaveWinningCombination";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@DrawDate", SqlDbType.VarChar).Value = DrawDate;
                        command.Parameters.Add("@DrawGameCode", SqlDbType.VarChar).Value = DrawGameCode;
                        command.Parameters.Add("@WinningCombination", SqlDbType.VarChar).Value = WinningCombination;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public List<SearchTransactionModel> getSearchTransaction(DateTime drawDate, int transactionID,string outletCode)
        {
            List<SearchTransactionModel> searchTransaction = new List<SearchTransactionModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("Select * From fnSearchTransaction(@DrawDate,@TransactionID,@OutletCode)", conn);
                command.Parameters.AddWithValue("@DrawDate", drawDate);
                command.Parameters.AddWithValue("@TransactionID", transactionID);
                command.Parameters.AddWithValue("@OutletCode", outletCode);

                try
                {
                    conn.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            SearchTransactionModel searchTran = new SearchTransactionModel();

                            searchTransaction.Add(searchTran);
                        }
                        return searchTransaction;
                    }
                }
                catch (Exception ex)
                {
                    return searchTransaction;
                }
            }
        }
        public void deleteTransaction(string smsID, string OutletCode, string UserAcct)
        {
            var storedProcName = "spDeleteTransaction";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@smsID", SqlDbType.VarChar).Value = smsID;
                        command.Parameters.Add("@OutletCode", SqlDbType.VarChar).Value = OutletCode;
                        command.Parameters.Add("@UserAcct", SqlDbType.VarChar).Value = UserAcct;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void saveSalesReference(DateTime DrawDate, string GameCode)
        {
            var storedProcName = "spSave_SalesReference";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@DrawDate", SqlDbType.VarChar).Value = DrawDate;
                        command.Parameters.Add("@DrawGameCode", SqlDbType.VarChar).Value = GameCode;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }
        public void insertSalesSummary(string Description, DateTime DrawDate)
        {
            var storedProcName = "spInsert_SalesSummary";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    using (SqlCommand command = new SqlCommand(storedProcName, conn))
                    {
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@Description", SqlDbType.VarChar).Value = Description;
                        command.Parameters.Add("@DrawDate", SqlDbType.VarChar).Value = DrawDate;
                        conn.Open();
                        command.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }

    }
}