<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_links.aspx.cs" Inherits="SEOtool.frm_links" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Links Analysis</h2>
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

    <div class="panel panel-default">
        <div class="panel-heading">Links in Page</div>
        <div class="panel-body">
            <div class="row">
                <h3><b>External Links</b></h3>
                <br />
                <div class="col-md-12">
                    <asp:Label ID="lblex" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <h3><b>Internal Links</b></h3>
                <br />
                <div class="col-md-12">

                    <asp:Label ID="lblin" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">
            <h2>External Links Information</h2>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">Why to use external Links?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            Top SEOs believe that external links are the most important source of ranking power.<br />
                            External links pass "link juice" (ranking power) differently than internal links because the search engines consider them as third-party votes.<br />
                            Top SEOs don't believe that the "title" link attribute is used for rankings purposes.
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">SEO Policy for External Link [moz.com]
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The trustworthiness of the linking domain.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The popularity of the linking page.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The relevancy of the content between the source page and the target page.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The anchor text used in the link.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The amount of links to the same page on the source page.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The amount of domains that link to the target page.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The amount of variations that are used as anchor text to links to the target page.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                             The ownership relationship between the source and target domains.<br />
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>

</asp:Content>
