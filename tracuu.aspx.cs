using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tracuu : System.Web.UI.Page
{
    SQL mysql;
    string sensor;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        mysql = new SQL(connectionString);

    }

    void HienThiGiaTriCamBien(
        string sensor,
        string startTime,
        string endTime)
    {
        string html1 =
            "<br> <table>" +
            "<caption><h3>Kết quả tra cứu cảm biến " + sensor + "</h3></caption>"+
                "<tr>" +
                    "<th> Cảm biến </th>" +
                    "<th> Giá trị cảm biến </th>" +
                    "<th> Thời gian cập nhật </th>" +
                "</tr>";

        string html2 = "";
        DataTable cb = mysql.GetSensor(sensor, startTime, endTime);
        for (int i = 0; i < cb.Rows.Count; i++)
        {
            string tencambien = cb.Rows[i]["Sensor"].ToString();
            double giatri = Convert.ToDouble(cb.Rows[i]["Value"]);
            DateTime thoigian = Convert.ToDateTime(cb.Rows[i]["Time"]);

            html2 +=
                "<tr>" +
                    "<td>" + tencambien + "</td>" +
                    "<td>" + giatri.ToString() + "</td>" +
                    "<td>" + thoigian.ToString() + "</td>" +
                "</tr>";
        }

        string html3 = "</table>";
        Literal_HienThiTraCuu.Text = html1 + html2 + html3;
    }
    protected void btnXem_Click(object sender, EventArgs e)
    {
        sensor = tbxSensor.Text;
        string startTime = tbxStartTime.Text;
        string endTime = tbxEndTime.Text;
        HienThiGiaTriCamBien(sensor, startTime, endTime);
    }
}