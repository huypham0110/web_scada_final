<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tracuu.aspx.cs" Inherits="tracuu" %>


<%@ Register Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tra cứu</title>
    <style>
        .container{
            margin: 0px auto;
            max-width: 1000px;
        }

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        header {
            color: white;
            background-color: #0077b5;
            clear: right;
            display: flex;
            justify-content:space-between;
            align-content: center;
        }

        nav ul { 
            list-style-type: none; 
            padding: 0;
        }

        nav ul a { 
            text-decoration: none; 
            padding: 5px 20px;
            display: block;
            font-weight:bold;
            font-size: 1rem;
            font-family: arial, sans-serif;
        }

        article {
            display: flex;
            justify-content:center;
            font-family: arial, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <div class="container">
            <header>
                <img src="image/hcmute_header1.png" alt="" width="492" height="120" />
                <nav>
                    <ul>
                        <li><a href="Default.aspx" style="color: white;"> GIỚI THIỆU </a></li>
                        <li><a href="dulieu.aspx" style="color: white;"> DỮ LIỆU </a></li>
                        <li><a href="tracuu.aspx" style="color: white;"> TRA CỨU </a></li>
                    </ul>
                </nav>
            </header>
            <hr />

            <article>
                <div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <label for="tbxSensor">Tên cảm biến:</label>
                            <asp:TextBox ID="tbxSensor" runat="server" placeholder="Nhiet do"></asp:TextBox>

                            <label for="tbxStartTime">Thời gian bắt đầu:</label>
                            <asp:TextBox ID="tbxStartTime" runat="server" placeholder="dd/mm/yyyy hh:mm:ss"></asp:TextBox>

                            <label for="tbxEndTime">Thời gian kết thúc:</label>
                            <asp:TextBox ID="tbxEndTime" runat="server" placeholder="dd/mm/yyyy hh:mm:ss"></asp:TextBox>

                            <asp:Button ID="btnXem" runat="server"  Font-Size="Medium" Text="Tìm kiếm" OnClick="btnXem_Click" /> 
                            <br />

                            <asp:Literal ID="Literal_HienThiTraCuu" runat="server"></asp:Literal>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </article>
        </div>
    </form>
</body>
</html>