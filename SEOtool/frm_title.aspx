<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_title.aspx.cs" Inherits="SEOtool.frmtitle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Title Tag Validator</h2>
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


    <br />

    <div id="penaltitle" runat="server" visible="false" class="panel panel-danger">
        <div class="panel-heading">Your Title tag</div>
        <div class="panel-body">
            <asp:Label ID="lbltitle" runat="server"></asp:Label>
            <hr />
            <h3>
                    <p id="prun" runat="server"></p> <asp:Label ID="lblres" runat="server"></asp:Label></h3>
        </div>
    </div>
    <br />


    <hr />
    <div class="col-sm-12 wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
        <div class="accordion">
            <h2>Title Tag Info</h2>
            <div class="panel-group" id="accordion1">
                <div class="panel panel-default">
                    <div class="panel-heading active">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseOne1" data-toggle="collapse" data-parent="#accordion1">What is Title Tag?
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>

                    <div class="panel-collapse collapse in" id="collapseOne1">
                        <div class="panel-body">
                            Title tags—technically called title elements—define the title of a document. Title tags are often used on search engine results pages (SERPs) to display preview snippets for a given page, and are important both for SEO and social sharing.
                            <br />
                            The title element of a web page is meant to be an accurate and concise description of a page's content. This element is critical to both user experience and search engine optimization. It creates value in three specific areas: relevancy, browsing, and in the search engine results pages.
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <a class="accordion-toggle" href="#collapseFour1" data-toggle="collapse" data-parent="#accordion1">SEO Policy for Title tag
                                 
                                <i class="fa fa-angle-right pull-right"></i>
                            </a>
                        </h3>
                    </div>
                    <div class="panel-collapse collapse" id="collapseFour1">
                        <div class="panel-body">
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Optimal Length of Title 50 to 60 character.[moz.com].<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Place Important Keywords Close to the Front of the Title Tag.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Consider Readability and Emotional Impact.<br />
                            <p class="glyphicon glyphicon-hand-right"></p>
                            Recommend using the brand name at the end of a title tag.<br />

                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </div>
    <!--/#accordion1-->
</asp:Content>
