<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #button_upload{
            width: 50%;
            height: 120px;
            padding: 10px;
            line-height: 30px;
            border:5px solid black;
            margin: auto auto;
            text-align:center;
        }
        #txt_id {
            width: 60%;
            height:70px;
            text-align: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="button_upload">
        <asp:TextBox ID="txt_id" runat="server" TextMode="MultiLine"></asp:TextBox><br>
        <input id="UpLoad" type="file" runat="server" />
        <asp:Button runat="server" Text="上传" ID="btnUpLoad" OnClick="btnUpLoad_Click" />
    </div>
    </form>
</body>
</html>
