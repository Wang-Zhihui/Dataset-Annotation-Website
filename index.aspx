<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #login{
            width: 50%;
            padding: 10px;
            height: 30px;
            line-height: 30px;
            border:5px solid black;
            margin: auto auto;
            text-align:center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login">
        <div>
            <span >登陆码： </span>
            <asp:TextBox ID="txt_id" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" />
        </div>
    </div>
    </form>
</body>
</html>
