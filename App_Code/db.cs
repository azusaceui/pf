using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;

    public class db
    {
        public db()
        {
            //   
            // 此处: 添加构造函数   
            //   
        }
  
      public static string ConnectionString = "server=sql.zi-yo.org;DataBase=yjgd;Integrated Security=false;uid=enzoboa;Password=5157323";
        public static string ConnectionStringaa = "server=sql.zi-yo.org;DataBase=yjgd;Integrated Security=false;uid=enzoboa;Password=5157323";
        //根据sql语句返回一个DataSet  
        #region GetDataSet   
        public  static  DataSet GetDataSet(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);   
                SqlDataAdapter sda = new SqlDataAdapter();   
                sda.SelectCommand = sqlcom;   
                DataSet ds = new DataSet();   
                sda.Fill(ds);   
                sqlcom.Parameters.Clear();   
                return ds;   
            }   
        }  
        #endregion   
        //根据sql语句返回一个SqlDataReader  
        #region ExecSqlDataReader   
        public static SqlDataReader ExecSqlDataReader(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            SqlConnection conn = new SqlConnection(ConnectionString);   
            try  
            {   
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);   
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);   
                sqlcom.Parameters.Clear();   
                return sdr;   
            }   
            catch (Exception ex)   
            {   
                conn.Close();   
                throw ex;   
            }
        }
        #endregion
        #region ExecSqlDataReader1
        public static SqlDataReader ExecSqlDataReader1(string sql)
        {
            SqlCommand sqlcom = new SqlCommand();
            SqlConnection conn = new SqlConnection(ConnectionString);
            try
            {
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);
                sqlcom.Parameters.Clear();
                return sdr;
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
        } 
        #endregion   

        #region ExecSqlDataReaderaa
        public static SqlDataReader ExecSqlDataReaderaa(string sql)
        {
            SqlCommand sqlcom = new SqlCommand();
            SqlConnection conn = new SqlConnection(ConnectionStringaa);
            try
            {
                PrepareCommandaa(sqlcom, conn, CommandType.Text, sql);
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);
                sqlcom.Parameters.Clear();
                return sdr;
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
        }
        #endregion

        #region ExecSqlDataReaderaa1
        public static SqlDataReader ExecSqlDataReaderaa1(string sql)
        {
            SqlCommand sqlcom = new SqlCommand();
            SqlConnection conn = new SqlConnection(ConnectionStringaa);
            try
            {
                PrepareCommandaa(sqlcom, conn, CommandType.Text, sql);
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);
                sqlcom.Parameters.Clear();
                return sdr;
            }
            catch (Exception ex)
            {
                conn.Close();
                throw ex;
            }
        }
        #endregion
        //执行sql语句，返回影响行数  
        #region ExecCommand   
        public  static  int ExecCommand(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);   
                int rtn = sqlcom.ExecuteNonQuery();   
                sqlcom.Parameters.Clear();   
                return rtn;   
            }   
        }  
        #endregion   
        //执行SQL语句，无返回值  
        #region ExecNon   
        public  static  void ExecNon(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);   
                sqlcom.ExecuteNonQuery();   
                sqlcom.Parameters.Clear();   
            }
        }

        #endregion
        #region ExecNonaa
        public static void ExecNonaa(string sql)
        {
            SqlCommand sqlcom = new SqlCommand();
            using (SqlConnection conn = new SqlConnection(ConnectionStringaa))
            {
                PrepareCommandaa(sqlcom, conn, CommandType.Text, sql);
                sqlcom.ExecuteNonQuery();
                sqlcom.Parameters.Clear();
            }
        }  

        #endregion   
        //根据sql语句返回查询结果的第一行  
        #region ExecuteScalar   
        public static  object ExecuteScalar(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.Text, sql);   
                object rtn = sqlcom.ExecuteScalar();   
                sqlcom.Parameters.Clear();   
                return rtn;   
            }   
        }  
        #endregion   

        #region ExecuteScalaraa
        public static object ExecuteScalaraa(string sql)
        {
            SqlCommand sqlcom = new SqlCommand();
            using (SqlConnection conn = new SqlConnection(ConnectionStringaa))
            {
                PrepareCommandaa(sqlcom, conn, CommandType.Text, sql);
                object rtn = sqlcom.ExecuteScalar();
                sqlcom.Parameters.Clear();
                return rtn;
            }
        }
        #endregion   
        //执行存储过程无返回值，SQL语句含有参数  
        #region ExecSPCommand   
        public  static  void ExecSPCommand(string sql, System.Data.IDataParameter[] paramers)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                foreach (System.Data.IDataParameter paramer in paramers)   
                {   
                    sqlcom.Parameters.Add(paramer);   
                }   
                sqlcom.ExecuteNonQuery();   
                sqlcom.Parameters.Clear();   
            }   
        }  
        #endregion   
        //执行存储过程无返回值，SQL语句不含有参数  
        #region ExecSPCommand2   
        public  static  void ExecSPCommand2(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                sqlcom.ExecuteNonQuery();   
                sqlcom.Parameters.Clear();   
            }   
        }  
        #endregion   
        //执行存储过程，返回SqlDataReader，SQL语句含有参数  
        #region ExecSPSqlDataReader   
        public  static  SqlDataReader ExecSPSqlDataReader(string sql, System.Data.IDataParameter[] paramers)   
        {   
            SqlConnection conn = new SqlConnection(ConnectionString);   
            SqlCommand sqlcom = new SqlCommand();   
            try  
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                foreach (System.Data.IDataParameter paramer in paramers)   
                {   
                    sqlcom.Parameters.Add(paramer);   
                }   
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);   
                sqlcom.Parameters.Clear();   
                return sdr;   
            }   
            catch (Exception ex)   
            {   
                conn.Close();   
                throw ex;   
            }   
        }  
        #endregion   
        //执行存储过程，返回SqlDataReader，SQL语句不含有参数  
        #region ExecSPSqlDataReader2   
        public  static  SqlDataReader ExecSPSqlDataReader2(string sql)   
        {   
            SqlConnection conn = new SqlConnection(ConnectionString);   
            SqlCommand sqlcom = new SqlCommand();   
            try  
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                SqlDataReader sdr = sqlcom.ExecuteReader(CommandBehavior.CloseConnection);   
                sqlcom.Parameters.Clear();   
                return sdr;   
            }   
            catch (Exception ex)   
            {   
                conn.Close();   
                throw ex;   
            }   
        }  
        #endregion   
        //执行存储过程返回DataSet类型，SQL语句含有参数  
        #region ExecSPDataSet   
        public  static  DataSet ExecSPDataSet(string sql, System.Data.IDataParameter[] paramers)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                foreach (System.Data.IDataParameter paramer in paramers)   
                {   
                    sqlcom.Parameters.Add(paramer);   
                }   
                SqlDataAdapter sda = new SqlDataAdapter();   
                sda.SelectCommand = sqlcom;   
                DataSet ds = new DataSet();   
                sda.Fill(ds);   
                sqlcom.Parameters.Clear();   
                return ds;   
            }   
        }  
        #endregion   
        //执行存储过程返回DataSet类型，SQL语句不含有参数  
        #region ExecSPDataSet2   
        public  static  DataSet ExecSPDataSet2(string sql)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, sql);   
                SqlDataAdapter sda = new SqlDataAdapter();   
                sda.SelectCommand = sqlcom;   
                DataSet ds = new DataSet();   
                sda.Fill(ds);   
                sqlcom.Parameters.Clear();   
                return ds;   
            }   
        }  
        #endregion   
        ///利用存储过程分页  
        #region DataSelect   
        ///参数说明：   
        ///TableList 要取得的字段列表，全部为*   
        ///TableName 要查询的表名   
        ///SelectWhere 查询条件，不可为空   
        ///SelectOrderID 排序字段   
        ///SelectOrder 排序方式   
        ///intPageNo 当前页码   
        ///intPageSize 每页显示的记录数   
        ///RecordCount 返回值，查询出来的总记录数，传递参数时无需初始化   
        public  static  DataSet DataSelect(string TableList, string TableName, string SelectWhere, string SelectOrderId, string SelectOrder, int intPageNo, int intPageSize, out int RecordCount)   
        {   
            SqlCommand sqlcom = new SqlCommand();   
            using (SqlConnection conn = new SqlConnection(ConnectionString))   
            {   
                PrepareCommand(sqlcom, conn, CommandType.StoredProcedure, "getdataset");   
                sqlcom.Parameters.Add("@TableList", SqlDbType.VarChar, 500).Value = TableList;   
                sqlcom.Parameters.Add("@TableName", SqlDbType.VarChar, 100).Value = TableName;   
                sqlcom.Parameters.Add("@SelectWhere", SqlDbType.VarChar, 500).Value = SelectWhere;   
                sqlcom.Parameters.Add("@SelectOrderId", SqlDbType.VarChar, 20).Value = SelectOrderId;   
                sqlcom.Parameters.Add("@SelectOrder", SqlDbType.VarChar, 500).Value = SelectOrder;   
                sqlcom.Parameters.Add("@intPageNo", SqlDbType.Int).Value = intPageNo;   
                sqlcom.Parameters.Add("@intPageSize", SqlDbType.Int).Value = intPageSize;   
                sqlcom.Parameters.Add("@RecordCount", SqlDbType.Int).Direction = ParameterDirection.Output;   
                SqlDataAdapter da = new SqlDataAdapter();   
                da.SelectCommand = sqlcom;   
                DataSet ds = new DataSet();   
                da.Fill(ds);   
                RecordCount = (Int32)da.SelectCommand.Parameters["@RecordCount"].Value; //求出总记录数，该值是output出来的值   
                return ds;   
            }   
        }  
        #endregion   
        private static  void PrepareCommand(SqlCommand cmd, SqlConnection conn, CommandType cmdType, string cmdText)   
        {   
            if (conn.State != ConnectionState.Open)   
                conn.Open();   
            cmd.Connection = conn;   
            cmd.CommandText = cmdText;   
            cmd.CommandType = cmdType;   
        }

        private static void PrepareCommandaa(SqlCommand cmd, SqlConnection conn, CommandType cmdType, string cmdText)
        {
            if (conn.State != ConnectionState.Open)
                conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = cmdText;
            cmd.CommandType = cmdType;
        }  
    }  


