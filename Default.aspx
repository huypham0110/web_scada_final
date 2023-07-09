<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit"
    Namespace="AjaxControlToolkit" TagPrefix="asp"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới thiệu</title>
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
            text-align: center;
        }

        .text{
            text-align: center;
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
            <div class="text container" >
                <h1 style="color: #0077b5"> FINAL PROJECT - SCADA</h1>
                <h3 style="color: #0077b5; font-size: 150%; text-align: center">ĐỀ TÀI: HỆ THỐNG PHA CHẾ NƯỚC CHANH TỰ ĐỘNG</h3>
                <hr />

                <h3> - Một số hình ảnh hệ thống - </h3>
                <img src="image/gioi_thieu.jpg" width="1000" />
                <i>Màn hình giới thiệu</i> <br />
                 
                <br /> <img src="image/giao_dien_chinh.jpg" width="1000" />
                <i>Màn hình chính</i> <br />

                <br /> <img src="image/nhap_cong_thuc.jpg" width="1000" />
                <i>Màn hình nhập công thức</i> <br />

                <br /> <img src="image/xem_thong_so.jpg" width="1000" />
                <i>Màn hình xem thông số</i> <br />

                <br /> <img src="image/dk_man.jpg" width="1000" />
                <i>Màn hình chế độ Manual</i> <br />
                <hr />

                <h3> - GIẢNG VIÊN HƯỚNG DẪN - </h3>
                <i>TS. Nguyễn Văn Thái</i> <br />
                <i>Bộ môn: Điều khiển tự động, khoa Điện-Điện tử</i><br />
                <i>Phòng làm việc: 3DVisionLab, phòng 301, tầng 3 tòa nhà Viện Sư phạm Kỹ thuật Tp HCM</i><br />
                <i>Email: nguyenvanthai@hcmute.edu.vn</i><br />
                <i>Số điện thoại di động: 0902 80 7576</i><br />
                <hr />

                <h3> - SINH VIÊN THỰC HIỆN - </h3>
                <i>Nguyễn Công Hạnh</i><br />
                <i>MSSV: 20151184</i><br />
                <i>Email: 20151184@student.hcmute.edu.vn</i><br />

                <br /><i>Phạm Quang Huy</i><br />
                <i>MSSV: 20151482</i><br />
                <i>Email: 20151482@student.hcmute.edu.vn</i><br />

                <br /><i>Nguyễn Văn Kế</i><br />
                <i>MSSV: 20151491</i><br />
                <i>Email: 20151491@student.hcmute.edu.vn</i><br />

                <br /><i>Phù Trung Thông</i><br />
                <i>MSSV: 20151571</i><br />
                <i>Email: 20151571@student.hcmute.edu.vn</i><br />
                <hr />
            </div>
        </div>
    </form>
</body>
</html>
