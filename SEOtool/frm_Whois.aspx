<%@ Page Title="" Language="C#" MasterPageFile="~/mst_main.Master" AutoEventWireup="true" CodeBehind="frm_Whois.aspx.cs" Inherits="SEOtool.frm_Whois" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Whois Website Chacker | OnPageSEO</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-page jumbotron">
        <div class="center wow fadeInDown">
            <h2>Whois Website Information</h2>
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

    <div id="penalwho" runat="server" visible="false" class="panel panel-primary">
        <div class="panel-heading">Whois Information</div>
        <div class="panel-body">
            <asp:Label ID="lblwhois" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
</asp:Content>
