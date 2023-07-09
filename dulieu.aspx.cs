using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class dulieu : System.Web.UI.Page
{
    SQL mysql;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        mysql = new SQL(connectionString);
        HienThiGiaTriCamBien();

        //HienThiGiaTriCamBien("Nhiet do", "28/5/2023 01:49:00", "28/5/2023 01:51:00");
    }

    void HienThiGiaTriCamBien()
    {
        string html1 =
             "<table>" +
                "<caption><h3>Dữ liệu giá trị cảm biến theo thời gian (cập nhật mỗi 1 phút)</h3></caption>" +
                "<tr>" +
                    "<th> Cảm biến </th>" +
                    "<th> Giá trị cảm biến </th>" +
                    "<th> Thời gian cập nhật </th>" +
                "</tr>";

        string html2 = "";
        DataTable cb = mysql.GetSensor();
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
        Literal_HienThiGiaTriCamBien.Text = html1 + html2 + html3;

    }
 
}