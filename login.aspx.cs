using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class login : System.Web.UI.Page
{
    SQL _sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ConStr"].ToString();
        _sql = new SQL(connectionString);
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        int allow = new int();
        allow = 0;
        DataTable cb = _sql.get_user();
        if (cb.Rows.Count > 0)
        {
            for (int j = 0; j < cb.Rows.Count; j++)
            {
                string strId = cb.Rows[j]["id"].ToString().Trim();
                string strPw = cb.Rows[j]["pw"].ToString().Trim();
                if (accountname.Text == strId)
                {
                    if (password.Text == strPw)
                    {
                        allow = 1;
                    }
                }
            }
        }
        if (allow == 1)
        {
            Server.Transfer("Default.aspx", false);
        }
        if (allow == 0)
        {
            alert.Text = "ID OR PASSWORD INCORRECT";
        }
    }
}