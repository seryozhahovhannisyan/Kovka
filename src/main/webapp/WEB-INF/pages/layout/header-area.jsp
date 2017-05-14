<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="<%=request.getContextPath()%>/css/header.css" rel="stylesheet">

<section class="header_section" ng-controller="mainLoginFormCtrl as login" id="header_section">
    <div class="full_page_fixed_div" ng-style="login.fullPageFixedDiv"
         ng-click="login.closeLoginFormOnClickBody()"></div>
    <div class="main-header-padding-top">

        <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right main_header_right_block">
        </div>
    </div>
</section>
