<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_img.aspx.cs" Inherits="SEOtool.frm_img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Image alt Tag Validator onpage SEO</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Image Alt Tag Validator</h2>
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

    <section id="services" class="service-item">
        <div class="container">
            <div style="padding-top: 15px;">
                <asp:Repeater ID="rptimg" runat="server">
                    <ItemTemplate>

                        <div class="col-sm-6 col-md-4">
                            <div class="media services-wrap wow fadeInDown animated" style="visibility: visible;">
                                <div class="pull-left" style="background-color: lightslategrey">
                                    <asp:Image ID="imgthumb" runat="server" CssClass="img-responsive img-rounded" Width="81px" Height="81px" ImageUrl='<%# Eval("link")  %>' AlternateText="image loading fail!" />
                                </div>
                                <div class="media-body">
                                    <h6 class="media-heading">alt : <%# Eval("alt")%></h6>
                                    <p>
                                        Count : <%# Eval("size")%>
                                    </p>
                                    <div class="pull-right">
                                        <asp:Label ID="lblsym" runat="server" CssClass=' <%# Eval("class")%>'></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>



    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">

            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">What is Image Alt Property?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            “Alt text” stands for “alternative information.” According to the World Wide Web Consortium (W3C), the “alt” attribute specifies an alternate text for user agents that cannot display images, forms or applets. For example, the user agent Googlebot cannot “see” images directly. Instead, it relies on the information in the alt attribute to determine what the image is and what to display in search results.
                        </div>
                    </div>
                </div>



                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">SEO Policy for set Image Alt Property
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Thinking about what the user is looking for and trying to provide that with your images.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Providing lots of descriptive text.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            A strong caption and Related pictures.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Ability to rate pictures.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Immersing the user into an image centered experience.
                            <br />
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <!--/#accordion1-->

    <!--/.container-->
</asp:Content>
