using System;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;

namespace NCC.ClearView.Application.Core
{
	public class MaintenanceWindow
	{
		private string dsn = "";
		private int user = 0;
		private SqlParameter[] arParams;
        public MaintenanceWindow(int _user, string _dsn)
		{
			user = _user;
			dsn = _dsn;
		}
        public DataSet Gets(int _enabled)
        {
            arParams = new SqlParameter[1];
            arParams[0] = new SqlParameter("@enabled", _enabled);
            return SqlHelper.ExecuteDataset(dsn, CommandType.StoredProcedure, "pr_getMaintenanceWindows", arParams);
        }
        public DataSet Get(int _id)
        {
            arParams = new SqlParameter[1];
            arParams[0] = new SqlParameter("@id", _id);
            return SqlHelper.ExecuteDataset(dsn, CommandType.StoredProcedure, "pr_getMaintenanceWindow", arParams);
        }
        public string Get(int _id, string _column)
        {
            DataSet ds = Get(_id);
            if (ds.Tables[0].Rows.Count > 0)
                return ds.Tables[0].Rows[0][_column].ToString();
            else
                return "";
        }
        public void Add(string _name, int _display, int _enabled)
		{
			arParams = new SqlParameter[3];
            arParams[0] = new SqlParameter("@name", _name);
            arParams[1] = new SqlParameter("@display", _display);
            arParams[2] = new SqlParameter("@enabled", _enabled);
            SqlHelper.ExecuteNonQuery(dsn, CommandType.StoredProcedure, "pr_addMaintenanceWindow", arParams);
		}
        public void Update(int _id, string _name, int _enabled)
        {
            arParams = new SqlParameter[3];
            arParams[0] = new SqlParameter("@id", _id);
            arParams[1] = new SqlParameter("@name", _name);
            arParams[2] = new SqlParameter("@enabled", _enabled);
            SqlHelper.ExecuteNonQuery(dsn, CommandType.StoredProcedure, "pr_updateMaintenanceWindow", arParams);
        }
        public void UpdateOrder(int _id, int _display)
        {
            arParams = new SqlParameter[2];
            arParams[0] = new SqlParameter("@id", _id);
            arParams[1] = new SqlParameter("@display", _display);
            SqlHelper.ExecuteNonQuery(dsn, CommandType.StoredProcedure, "pr_updateMaintenanceWindowOrder", arParams);
        }
        public void Enable(int _id, int _enabled)
        {
            arParams = new SqlParameter[2];
            arParams[0] = new SqlParameter("@id", _id);
            arParams[1] = new SqlParameter("@enabled", _enabled);
            SqlHelper.ExecuteNonQuery(dsn, CommandType.StoredProcedure, "pr_updateMaintenanceWindowEnabled", arParams);
        }
        public void Delete(int _id)
        {
            arParams = new SqlParameter[1];
            arParams[0] = new SqlParameter("@id", _id);
            SqlHelper.ExecuteNonQuery(dsn, CommandType.StoredProcedure, "pr_deleteMaintenanceWindow", arParams);
        }
    }
}
