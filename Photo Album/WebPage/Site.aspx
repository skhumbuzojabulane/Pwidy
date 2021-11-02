<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Site.aspx.cs" Inherits="WebPage_Site" Async="true"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <link href="../Content/siteExtraStyle.css" rel="stylesheet" />
    <script src="../Scripts/styling.js"></script>
    <html>
        <head>
        </head>
        <body>
            <div>
                <a href="addphoto.aspx">
                    <img src="../Images/SiteMenu/photo.png" />
                </a>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebPage/addphoto.aspx">Click to add photo.</asp:HyperLink>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false">
                <Columns>
                    <asp:BoundField DataField="Text" />
                    <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" />
                </Columns>
            </asp:GridView>
           
        </body>
    </html>
</asp:Content>

