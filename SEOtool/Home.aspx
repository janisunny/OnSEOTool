<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SEOtool.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>SEOTool | Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <section id="services" class="service-item">
        <div class="container">
            <br />
            <div class="center wow fadeInDown">
                <h2>Our Validator Tools</h2>
                <p class="lead">
                    We are providing free On page SEO Validator tools
                    <br />
                    So, you can varify your webpage is SEO Optimized or not.
                </p>
            </div>

            <div class="rowtm">

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center>
                        <div class="media-body">
                            <a href="frm_img.aspx">
                            <h3 class="media-heading">Image Tag Validator</h3></a>
                        </div></center>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center><div class="media-body">
                            <a href="frm_meta.aspx">
                            <h3 class="media-heading">Meta Tag Validator</h3></a>
                                
                        </div></center>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center>
                        <div class="media-body">
                            <a href="frm_headings.aspx">
                            <h3 class="media-heading">Heading Tag Validator</h3></a>
                        </div>
                        </center>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center>
                        <div class="media-body">
                            <a href="frm_title.aspx">
                            <h3 class="media-heading">Title Tag Validator</h3></a>
                        </div>
                            </center>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center>
                        <div class="media-body">
                            <a href="frm_robots.aspx">
                            <h3 class="media-heading">Robots.txt File Validator</h3></a>
                        </div>
                        </center>
                    </div>
                </div>

                <div class="col-sm-6 col-md-4">
                    <div class="media services-wrap wow fadeInDown">
                        <center>
                        <div class="media-body">
                            <a href="frm_links.aspx">
                            <h3 class="media-heading">Link Analysis tool</h3>
                            </a>
                        </div>
                        </center>
                    </div>
                </div>
            </div>
            <!--/.row-->
        </div>
        <!--/.container-->
    </section>
</asp:Content>
