<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_meta.aspx.cs" Inherits="SEOtool.frm_meta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Meta tag Validator</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Meta Tag Validator</h2>
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

    <div id="penalkey" runat="server" visible="false" class="panel panel-primary">
        <div class="panel-heading">Meta Keywords</div>
        <div class="panel-body">
            <asp:Label ID="lblkeyoword" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <div id="penaldesc" runat="server" visible="false" class="panel panel-success">
        <div class="panel-heading">Meta description</div>
        <div class="panel-body">
            <asp:Label ID="lblmetadesc" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">
            <h2>Meta tag</h2>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">What is Meta Tag?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            The meta tags are a very important part of the HTML code of your web page. They are read by the search engines but are not displayed as a part of your web page content. Usually they include a concise summary of the web page content and you should include your relevant keywords in them. Most meta tags are included within the 'header' html code of a website. They are title, description, keywords and robot tags, but currently the most important two are title and description. These two are displayed by search engines when listing your website in search results.
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">SEO Policy for meta Tag.
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p> Use synonyms. Use unique keywords in Meta.<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Recommended Length between 150 to 160 character.[Moz.com]<br />
                            <p class="glyphicon glyphicon-hand-right"></p> Avoid Duplicate Meta Description Tags. <br />
                            <p class="glyphicon glyphicon-hand-right"></p> Use keywords in your meta description tag. <br />
                            <p class="glyphicon glyphicon-hand-right"></p> Use a different meta description tag for each page, as each page is different and stands a better chance of being found if you place a good title and description on it.<br />
                             
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <!--/#accordion1-->
        </div>
    </div>
</asp:Content>
