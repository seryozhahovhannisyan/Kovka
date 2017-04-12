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
                Help
                <div class="name_div">
                    Documentation
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->