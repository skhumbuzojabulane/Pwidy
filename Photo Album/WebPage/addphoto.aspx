﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addphoto.aspx.cs" Inherits="WebPage_addphoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link href="../Content/add.css" rel="stylesheet" />
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap"/>

    <style type="text/css">
        .auto-style1 {
            position: fixed;
            left: 0;
            bottom: 114px;
            width: 100%;
            background-color: red;
            color: white;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="load"></div>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <div>
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#66CCFF" BorderStyle="Ridge" />
                    <br />
                    <br />
                    <label for="captureDate">Capture Date</label>
                    <input type="date" name="Capture Date" id="captureDate"/>
                    <br />
                    <br />
                    Captured By:
                    <asp:TextBox ID="captureTextBox" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="addPhotoButton" runat="server" OnClick="Button1_Click" Text="Add Photo " Style="margin:0px" runat="server" BorderColor="#66CCFF" BorderStyle="Ridge"/>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
        <div class="auto-style1">
            <p>Pwidy Photo Album</p>
        </div>
    </form>
</body>
</html>

