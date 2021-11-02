<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Site.aspx.cs" Inherits="WebPage_Site" Async="true"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <link href="../Content/siteExtraStyle.css" rel="stylesheet" />
    <script src="../Scripts/styling.js"></script>
    <style> 
        #load{
            width: 100%;
            height: 100%;
            position: fixed;
            z-index: 9999;
            background: url("Images/Loader/Load.gif") no-repeat center center rgba(225,225,225,225)
        }
    </style>
    <script>
        document.onreadystatechange = function () {
            var state = document.readyState
            if (state == 'interactive') {
                document.getElementById("contents").style.visibility = "hidden";
            } else if (state == 'complete') {
                setTimeout(function () {
                    document.getElementById('interactive');
                    document.getElementById('load').style.visibility = "hidden";
                    document.getElementById('contents').style.visibility = "visible";
                }, 2000);
            }
        }
    </script>

    <html>
        <head>
        </head>
        <body>
            <div id="load"></div>
            <div>
                <a href="addphoto.aspx">
                    <img src="../Images/SiteMenu/photo.png" />
                </a>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebPage/addphoto.aspx">Click to add photo.</asp:HyperLink>
            </div>
           
        </body>
    </html>
</asp:Content>

