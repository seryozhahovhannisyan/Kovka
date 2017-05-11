<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<script type="text/javascript">
    $(document).keydown(function (e) {
        if (e.which == 27) {
            $(".curent_bal_div").hide();
        }
    });
</script>


<link rel="stylesheet" href="<%=request.getContextPath()%>/css/cashier/wallet_login.css" media="screen">

<!-- page content -->
<div style="min-height: 890px;" class="right_col" role="main">
    <div class="">
        <div class="row">
            <div class="hello_div_parent">
                <s:text name="page.home.title">Welcome</s:text>
                <div class="name_div">
                    <s:property value="#session.cashier.name"/>&nbsp; <s:property value="#session.cashier.surname"/>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="user_text_div col-lg-6 col-md-6 col-sm-6 col-xs-8">
                <!-- message box -->
                <div class="box-info"
                     <s:if test="%{#session.info == null || #session.info == ''}">style="display: none"</s:if>>
                    <s:property value="#session.info"/>
                    <s:set var="info" scope="session" value=""/>
                </div>

                <div class="box-hint"
                     <s:if test="%{#session.message == null || #session.message == ''}">style="display: none"</s:if>>
                    <s:property value="#session.message"/>
                    <s:set var="message" scope="session" value=""/>
                </div>
                <!-- message box -->
            </div>
        </div>
    </div>
</div>
<!-- /page content -->