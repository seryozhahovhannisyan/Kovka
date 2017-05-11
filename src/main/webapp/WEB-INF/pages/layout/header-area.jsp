<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="<%=request.getContextPath()%>/css/header.css" rel="stylesheet">

<section class="header_section" ng-controller="mainLoginFormCtrl as login" id="header_section">
    <div class="full_page_fixed_div" ng-style="login.fullPageFixedDiv"
         ng-click="login.closeLoginFormOnClickBody()"></div>
    <div class="main-header-padding-top">
        <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <a href="start.htm">
                <img src="<%=request.getContextPath()%>/img/guest/logo-16.jpg"
                     alt="<s:text name="alt.main.Logo">Logo</s:text>"/>
            </a>
        </div>
        <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right main_header_right_block">

            <img src="<%=request.getContextPath()%>/img/main/merchant_header_right_icon.png"
                 alt="<s:text name="page.area.header.alt.Login.Icon">Login</s:text>"
                 ng-click="login.mainLoginFormShowHide()" class="merchant_header_right_icon"/>
        </div>
    </div>
    <form action="admin-entry.htm" method="post" autocomplete="off" du-parallax y="mainContent.background">
        <input type="password" style="display: none;"/>
        <div class="main-form-login-message"></div>
        <div class="main-login-form pull-right col-lg-4 col-md-6 col-sm-6 col-xs-8"
             ng-style="login.mainLoginFormDisplay">
            <div class="main_login_form_title">
                <s:text name="page.login.cashier.login">cashier login</s:text>
            </div>
            <div class=" clear_both col-lg-2 col-md-1 col-sm-1 col-xs-1"></div>
            <div class="form-group-username col-lg-8 col-md-10 col-sm-10 col-xs-10">
                <input type="text" class="form-control main_login_form_login" name="username"
                       placeholder="<s:text name="page.area.header.placeholder.Username">Username</s:text>"
                       autocomplete="off"/>
            </div>
            <div class=" clear_both col-lg-2 col-md-1 col-sm-1 col-xs-1"></div>
            <div class="form-group-password col-lg-8 col-md-10 col-sm-10 col-xs-10">
                <img ng-click="login.mainPasswordShowHideAndIconSrc()" class="main_show_hide_password"
                     ng-src="{{login.mainPasswordShowHideIconSrc}}"
                     alt="<s:text name="page.area.header.alt.Show.Hide.Password">Show/Hide Password</s:text>"/>
                <input type="{{login.inputType}}" class="form-control main_login_form_password" name="password"
                       placeholder="<s:text name="page.area.header.placeholder.Password">Password</s:text>"
                       autocomplete="new-password"/>
            </div>
            <div class="main_login_form_forgot_password col-lg-8 col-md-10 col-sm-10 col-xs-10">
                <a href="forgot-password.htm">
                    <s:text name="page.login.Forgot.Password">Forgot Password ?</s:text>
                </a>
            </div>
            <button type="submit" class="main_login_button col-lg-8 col-md-10 col-sm-10 col-xs-10">
                <s:text name="page.login.login.button">login</s:text>
            </button>
            <div class="main_login_form_dont_have_account">
                <s:text name="dont.have.an.account">Don't have an account ?</s:text>
                <a href="signup.htm">
                    <s:text name="page.login.sign.up">sign up</s:text>
                </a>
            </div>
        </div>
    </form>
</section>
