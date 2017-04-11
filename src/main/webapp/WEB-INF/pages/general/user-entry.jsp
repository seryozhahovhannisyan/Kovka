<%--
  Created by IntelliJ IDEA.
  User: David
  Date: 7/26/2016
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="<%=request.getContextPath()%>/css/user/user-entry.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/general/cashier-entry-controller.js"></script>

<div ng-controller="loginFormCtrl as loginForm">

    <div class="login_forward">
        <form action="admin-entry.htm" method="post" autocomplete="off" >
            <input type="password" style="display: none;" />
            <div class="form-login-message"></div>
            <div class="login-form col-lg-4 col-md-6 col-sm-6 col-xs-8" >
                <div class="login_form_title">
                    <s:text name="page.cashierEntry.user.login">USER LOGIN</s:text>
                </div>

                <div class="form-group-username ">
                    <input type="text" class="form-control login_form_login" name="username"
                           placeholder="<s:text name="page.cashierEntry.placeholder.Username">Username</s:text>"
                           autocomplete="off" />
                </div>

                <div class="form-group-password">
                    <img ng-click="loginForm.passwordShowHideAndIconSrc()" class="show_hide_password" ng-cloak ng-src="{{loginForm.passwordShowHideIconSrc}}"
                         alt="<s:text name="page.cashierEntry.alt.Show.Hide.Password">Show/Hide Password</s:text>"/>
                    <input type="{{loginForm.inputType}}" class="form-control login_form_password" name="password"
                           placeholder="<s:text name="page.cashierEntry.placeholder.Password">Password</s:text>"
                           autocomplete="new-password" />
                </div>
                <div class="login_form_forgot_password  ">
                    <a href="forgot-password.htm">
                        <s:text name="page.login.Forgot.Password">Forgot Password ?</s:text>
                    </a>
                </div>
                <button type="submit" class="login_button col-lg-8 col-md-10 col-sm-10 col-xs-10">
                    <s:text name="page.login.login.button">login</s:text>
                </button>
            </div>
        </form>
    </div>
    <div style="clear: both"></div>
</div>