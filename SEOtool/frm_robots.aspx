<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_robots.aspx.cs" Inherits="SEOtool.frm_robots" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Robots.txt file Validator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Robots.txt Validator</h2>
        </div>
        <div class="row contact-wrap">
            <div id="main-contact-form" class="contact-form">
                <label>Enter URL</label>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:TextBox ID="txturl" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <asp:Button ID="btnurl" runat="server" CssClass="btn btn-primary btn-lg" OnClick="btnurl_Click" Text="Cheack Website!" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <%--<asp:RegularExpressionValidator ID="RED1" runat="server" ControlToValidate="txturl" Display="Dynamic" ErrorMessage="URL is not in valid Format!" CssClass="form-group" ValidationExpression="[\w-].[\w-]"></asp:RegularExpressionValidator>--%>
                        </div>
                        <div class="form-group">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txturl" Display="Dynamic" ErrorMessage="Please Enter the URL first." CssClass="form-group"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div id="penalrobot" runat="server" visible="false" class="panel panel-success">
        <div class="panel-heading">So, What is result?</div>
        <div class="panel-body">
            <p id="prun" runat="server"></p><asp:Label ID="lblrobots" runat="server"></asp:Label>
        </div>
    </div>
    

    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">
            <h2>Robot.Txt Info</h2>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">What is Robots.Txt?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            Robots.txt is a text (not html) file you put on your site to tell search robots which pages you would like them not to visit. Robots.txt is by no means mandatory for search engines but generally search engines obey what they are asked not to do. It is important to clarify that robots.txt is not a way from preventing search engines from crawling your site (i.e. it is not a firewall, or a kind of password protection) and the fact that you put a robots.txt file is something like putting a note “Please, do not enter” on an unlocked door – e.g. you cannot prevent thieves from coming in but the good guys will not open to door and enter. That is why we say that if you have really sen	sitive data, it is too naïve to rely on robots.txt to protect it from being indexed and displayed in search results.
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">Apply SEO policy before putting ROBOTS.txt
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p> Robots.txt file usually resides in your site’s root folder.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Don't use comments in the robots.txt file.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Use Robots.txt gernator tools.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Don't use white space at the beginning of a line.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Be sure to use the right case. The file names on your server are case sensitve.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Don't change the order of the commands. <br />
                            <p class="glyphicon glyphicon-hand-right"></p> Don't use more than one directory in a Disallow line.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> There is no "Allow" command.<br />
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <!--/#accordion1-->
</asp:Content>
