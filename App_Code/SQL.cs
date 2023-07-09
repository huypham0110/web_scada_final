using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for SQL
/// </summary>
public class SQL
{
    public string connectionString;

    public SQL(string maKetNoi)
    {
        this.connectionString = maKetNoi;
    }

    /// <summary>
    /// Get data from tabele "sensor_value" from database.
    /// </summary>
    public DataTable GetSensor()
    {
        string strSQL = "select * from sensor_value order by Time desc";

        return GetData(strSQL, connectionString);
    }
    public DataTable GetSensor(
        string sensor,
        string startTime,
        string endTime)
    {
        string _strSQL;
        if ((startTime != "") && (endTime != ""))
        {
            _strSQL = "select * from sensor_value " +
                       "where Sensor = N'" + sensor + "' " +
                       "and Time > CONVERT(datetime, N'" + startTime + "', 103) " +
                       "and Time < CONVERT(datetime, N'" + endTime + "',103) order by Time desc";
        }
        else if (startTime != "")
        {
            _strSQL = "select * from sensor_value " +
                        "where Sensor = N'" + sensor + "' " +
                        "and Time > CONVERT(datetime, N'" + startTime + "', 103) order by Time desc";
        }
        else if ((startTime == "") && (endTime != ""))
        {
            _strSQL = "select * from sensor_value " +
                       "where Sensor = N'" + sensor + "' " +
                       "and Time < CONVERT(datetime, N'" + endTime + "', 103) order by Time desc";
        }
        else 
        {
            _strSQL = "select * from sensor_value " +
                       "where Sensor = N'" + sensor + "' order by Time desc";
        }

        return GetData(_strSQL, connectionString);
    }
    public DataTable get_user()
    {
        string strSQL = "select * from login";
        return GetData(strSQL, connectionString);
    }

    //==========================================
    /// <summary>
    /// Get data from database.
    /// </summary>
    /// <param name="selectCommand">The SQL command.</param>
    /// <param name="connectionString">The string is used to connect to the database.</param>
    /// <returns></returns>
    public System.Data.DataTable GetData(string selectCommand, string connectionString)
    {
        try
        {
            // Create a new data adapter based on specified query.
            SqlDataAdapter dataAdapter = new SqlDataAdapter(selectCommand, connectionString);

            // Creat a command builder to generate SQL update, insert, and
            // delete commands based on selectCommand. There are used to
            // update the database.
            SqlCommandBuilder commandBuilder = new SqlCommandBuilder(dataAdapter);

            // Populate a new data table and bind it to the BindingSource
            System.Data.DataTable table = new System.Data.DataTable();
            table.Locale = System.Globalization.CultureInfo.InvariantCulture;
            dataAdapter.Fill(table);

            return table;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    //==========================================
}