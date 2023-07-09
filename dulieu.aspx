<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dulieu.aspx.cs" Inherits="dulieu" %>


<%@ Register Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dữ liệu cảm biến</title>
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
                <asp:Literal ID="Literal_HienThiGiaTriCamBien" runat="server"></asp:Literal>
            </article>
        </div>
    </form>
</body>
</html>