<%@ page import="com.connectto.wallet.merchant.admin.web.util.Constants" %>
<%@ page import="com.connectto.wallet.merchant.admin.common.data.merchant.lcp.CurrencyType" %>
<%@ page import="com.connectto.wallet.merchant.admin.common.data.merchant.lcp.PartitionLCP" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link  href="<%=request.getContextPath()%>/css/template/companies.css" rel="stylesheet">
<link href="https://cdn.rawgit.com/summernote/summernote/v0.8.1/dist/summernote.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/summernote.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-summernote.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/template/companies.js"></script>

<script type="text/javascript">

var  cuerency_type = [

        <%for(CurrencyType currencyType : CurrencyType.values()){%>
            {
                company_name: '<%=currencyType.getName()%>',
                company_id: '<%=currencyType.getId()%>',
            },
        <%}%>
];

var  partition_type = [

    <%for(PartitionLCP partitionLCP : PartitionLCP.values()){%>
    {
        partition_name: '<%=partitionLCP.getName()%>',
        partition_id: '<%=partitionLCP.getId()%>',
    },
    <%}%>
];

//console.log("partition_type",partition_type)
</script>
<div class="right_col" role="main" style="min-height: 2519px;">
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Companies
                    </h2>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="row"  ng-cloak>
        <div class="form_parent_div col-lg-4 col-md-4 col-sm-6 col-xs-10" ng-controller = "adminCompanies">

            <form action="company-form-request-verify.htm" name=companyInfoEditAdmin method="post" novalidate="novalidate"  >
                <input type="hidden" name="formRequestId" value="<s:property value="formRequestId"/>">

                <div class="input_parent_div">
                    <input type="text" placeholder="response title" name="title" required="required" ng-model = "company.title">
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.title.$touched && companyInfoEditAdmin.title.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">

                <div ng-controller="callbacksCtrl" class="main_text_editor ">
                    <input type="hidden" ng-value ="summer_value" name="message">
                    <summernote name="message_summer" config="optionsSummernote"
                                on-init="init()" on-enter="enter()" on-focus="focus(evt)"
                                on-blur="blur(evt)" on-paste="paste(evt)" on-keyup="keyup(evt)"
                                on-keydown="keydown(evt)"
                                on-change="change(contents)"
                                on-image-upload="imageUpload(files)"
                                editable="editable" editor="editor">
                    </summernote>
                </div>
                </div>
                <div class="input_parent_div">
                    <input type="file" file-model="fileInfo">
                </div>

                <div class="input_parent_div">
                    <button type="button" class="plus_button" ng-click = plus()>+</button>
                    <input type="text"  class="add_input" placeholder="response remote addresses" ng-model = 'res_address'  ng-blur = 'blur_input_addres()' required   >
                    <input type="hidden"    name="allowedRemoteAddressValues" ng-value = 'addres_string'>
                    <div class="error_div" ng-show = "companyInfoEditAdmin.allowedRemoteAddressValues.$touched && companyInfoEditAdmin.allowedRemoteAddressValues.$error.required">
                        <span>This field is required</span>
                    </div>
                </div>

                <div class="input_parent_div">
                    <div class="request-form-group ">
                    <div class="ist_mult" on-item-click="addPartition()"
                    isteven-multi-select
                    input-model="partitionType"
                    output-model="partitionTypeOut"
                    button-label="name"
                    item-label="name"
                    tick-property="ticked"
                    selection-mode="multiple"
                    helper-elements="filter"
                    translation="select_partition"
                    >
                    </div>
                </div>
                    <input type="hidden" name="allowedPartitionValues" ng-value="partition">
                </div>


                <div class="input_parent_div">
                    <input type="number" placeholder="balance provided by merchant" name="balanceProvidedByMerchant" ng-model = 'company.balanceProvidedByMerchant' required >

                    <div class="error_div" ng-show = "companyInfoEditAdmin.balanceProvidedByMerchant.$touched && companyInfoEditAdmin.balanceProvidedByMerchant.$error.required">
                        <span>This field is required</span>
                    </div>
                </div>


                <div class="input_parent_div">
                    <input type="number" placeholder="accepted overpayment" name="acceptedOverpayment" required ng-model = 'company.acceptedOverpayment' >
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.acceptedOverpayment.$touched && companyInfoEditAdmin.acceptedOverpayment.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="maximum limit of transaction" name="maximumLimitOfTransaction" required ng-model = 'company.maximumLimitOfTransaction'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.maximumLimitOfTransaction.$touched && companyInfoEditAdmin.maximumLimitOfTransaction.$error.required">
                    <span>This field is required</span>
                </div>


                <div class="input_parent_div">
                    <div class="request-form-group ">
                        <div class="ist_mult" on-item-click="addCurrency()"
                             isteven-multi-select
                             input-model="cuerencyType"
                             output-model="cuerencyTypeOut"
                             button-label="name"
                             item-label="name"
                             tick-property="ticked"
                             selection-mode="single"
                             helper-elements="none"
                             translation="select_currency"
                        >
                        </div>
                    </div>
                    <input type="hidden" name="currencyType" ng-value="currency">
                </div>


                <div class="input_parent_div">


                    <div class="request-form-group ">
                        <div class="ist_mult" on-item-click="addRatevalue()"
                             isteven-multi-select
                             input-model="availableRateValues"
                             output-model="availableRateValuesOut"
                             button-label="name"
                             item-label="name"
                             tick-property="ticked"
                             selection-mode="multiple"
                             helper-elements="filter"
                             translation="select_rate"
                        >
                        </div>
                    </div>
                    <input type="hidden" name="availableRateValues" ng-value="rate">
                </div>






                <div class="input_parent_div">
                    <input type="number" placeholder="deposit fee percent" name="depositFeePercent" required ng-model = 'company.depositFeePercent'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.depositFeePercent.$touched && companyInfoEditAdmin.depositFeePercent.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="deposit minimum fee" name="depositMinFee" required ng-model = 'company.depositMinFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.depositMinFee.$touched && companyInfoEditAdmin.depositMinFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="deposit maximum fee" name="depositMaxFee" required ng-model = 'company.depositMaxFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.depositMaxFee.$touched && companyInfoEditAdmin.depositMaxFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="withdraw fee percent" name="withdrawFeePercent" required ng-model = 'company.withdrawFeePercent'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.withdrawFeePercent.$touched && companyInfoEditAdmin.withdrawFeePercent.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="withdraw minimum fee" name="withdrawMinFee" required ng-model = 'company.withdrawMinFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.withdrawMinFee.$touched && companyInfoEditAdmin.withdrawMinFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="withdraw maximum fee" name="withdrawMaxFee" required ng-model = 'company.withdrawMaxFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.withdrawMaxFee.$touched && companyInfoEditAdmin.withdrawMaxFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange deposit fee percent" name="exchangeDepositFeePercent" required ng-model = 'company.exchangeDepositFeePercent'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeDepositFeePercent.$touched && companyInfoEditAdmin.exchangeDepositFeePercent.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange deposit minimum fee" name="exchangeDepositMinFee" required ng-model = 'company.exchangeDepositMinFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeDepositMinFee.$touched && companyInfoEditAdmin.exchangeDepositMinFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange deposit maximum fee" name="exchangeDepositMaxFee" required ng-model = 'company.exchangeDepositMaxFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeDepositMaxFee.$touched && companyInfoEditAdmin.exchangeDepositMaxFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange withdraw fee percent" name="exchangeWithdrawFeePercent" required ng-model = 'company.exchangeWithdrawFeePercent'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeWithdrawFeePercent.$touched && companyInfoEditAdmin.exchangeWithdrawFeePercent.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange withdraw min fee" name="exchangeWithdrawMinFee" required ng-model = 'company.exchangeWithdrawMinFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeWithdrawMinFee.$touched && companyInfoEditAdmin.exchangeWithdrawMinFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div class="input_parent_div">
                    <input type="number" placeholder="exchange withdraw max fee" name="exchangeWithdrawMaxFee" required ng-model = 'company.exchangeWithdrawMaxFee'>
                </div>
                <div class="error_div" ng-show = "companyInfoEditAdmin.exchangeWithdrawMaxFee.$touched && companyInfoEditAdmin.exchangeWithdrawMaxFee.$error.required">
                    <span>This field is required</span>
                </div>
                <div align="center">
                    <button class="btn btn-success" >submit</button>
                </div>
            </form>
        </div>
    </div>

</div>
