<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_headings.aspx.cs" Inherits="SEOtool.frm_headings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Heading Tags Validator</h2>
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


    <div id="penalheading" runat="server" visible="false" class="panel panel-primary">
        <div class="panel-heading">Your Heading tag</div>
        <div class="panel-body">
            <div class="pricing-area text-center">
                <div class="row">

                    <div class="col-sm-6 col-md-2 plan price-one wow fadeInDown">
                        <ul>
                            <li class="heading-one">
                                <h1>H1</h1>
                            </li>
                            <li>
                                <asp:Label ID="lblh1" runat="server" Text="" ForeColor="Black"></asp:Label></li>
                            <li class="plan-action">
                                <asp:Button ID="btnh1" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh1_Click" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-2 plan price-two wow fadeInDown">
                        <ul>
                            <li class="heading-two">
                                <h1>H2</h1>

                            </li>
                            <li>
                                <asp:Label ID="lblh2" runat="server" Text="" ForeColor="Black"></asp:Label></li>

                            <li class="plan-action">
                                <asp:Button ID="btnh2" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh2_Click" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-2 plan price-three wow fadeInDown">

                        <ul>
                            <li class="heading-three">
                                <h1>H3</h1>

                            </li>
                            <li>
                                <asp:Label ID="lblh3" runat="server" Text="" ForeColor="Black"></asp:Label></li>

                            <li class="plan-action">
                                <asp:Button ID="btnh3" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh3_Click" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-2 plan price-four wow fadeInDown">
                        <ul>
                            <li class="heading-four">
                                <h1>H4</h1>

                            </li>
                            <li>
                                <asp:Label ID="lblh4" runat="server" Text="" ForeColor="Black"></asp:Label></li>

                            <li class="plan-action">
                                <asp:Button ID="btnh4" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh4_Click" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-2 plan price-five wow fadeInDown">
                        <ul>
                            <li class="heading-five">
                                <h1>H5</h1>

                            </li>
                            <li>
                                <asp:Label ID="lblh5" runat="server" Text="" ForeColor="Black"></asp:Label></li>

                            <li class="plan-action">
                                <asp:Button ID="btnh5" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh5_Click" />
                            </li>
                        </ul>
                    </div>

                    <div class="col-sm-6 col-md-2 plan price-six wow fadeInDown">
                        <ul>
                            <li class="heading-six">
                                <h1>H6</h1>

                            </li>
                            <li>
                                <asp:Label ID="lblh6" runat="server" Text="" ForeColor="Black"></asp:Label></li>

                            <li class="plan-action">
                                <asp:Button ID="btnh6" runat="server" Text="View" CssClass="btn btn-primary" OnClick="btnh6_Click" />

                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div>
                <h3>
                    <p id="prun" runat="server"></p> <asp:Label ID="lblres" runat="server"></asp:Label></h3>
            </div>
            <asp:Label ID="lblheadings" runat="server"></asp:Label>
        </div>
    </div>
    <br />
    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">

            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">What is Heading Tag?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            Heading tag is gernally used for display headings in our webpage. Heading tags are part of the HTML coding for a Web page. Headings are defined with H1 to H6 tags. The H1 tag defines the most important heading on the page (usually the largest or boldest, too), whereas H6 indicates the lowest-level heading. 
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">SEO Policy for Heading tag
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p>
                            One H1 Element (tag as it is commonly talked about)<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            As many as required H2 elements to denote sections on the page (you should really only need one or two or 3 if you are keeping your page concise.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Consider using H3 Elements for useful link groups to other relevant sources but recent advice (2013) would be to try and keep headings for TEXT content and not to group template navigation, for instance.<br />

                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
</asp:Content>
