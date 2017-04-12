<%--
  Created by IntelliJ IDEA.
  User: Serozh
  Date: 7/29/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<script src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js" ></script>
<script src="<%=request.getContextPath()%>/libs/js/angular/ng-table.min.js" type="text/javascript" ></script>
<script src="<%=request.getContextPath()%>/js/cashier/object-list.js" type="text/javascript"></script>

<link href="<%=request.getContextPath()%>/css/template/cashier.css" type="text/css" rel="stylesheet">



<script type="text/javascript"  >

    var contextPath = '<%=request.getContextPath()%>';
    var object = 'company_form_request';
    var itemsCount = '<s:property value="dataCount"/>';
    var columns = [
        {title: 'title', field: 'title', visible : true},
        {title: 'reason', field: 'reason', visible : true},
        {title: 'amount', field: 'amount', visible : true},
        {title: 'currencyType', field: 'currencyType', visible : true},
        {title: 'offeredAt', field: 'offeredAt', visible : true},
        {title: 'status', field: 'status', visible : true},
        {title: 'company name', field: 'company.name', visible : true},
        {title: 'company address', field: 'company.address', visible : true},
        {title: 'company city', field: 'company.city', visible : true},
        {title: 'company street', field: 'company.street', visible : true}
    ];

    /*function testOk(){
        $.ajax({
            url: "offer-to-provide.htm",
            type: "post",
            dataType: "json",
            async: true,
            data: {
                secretKey: '6rtiwkjxhpyx6hu8sjgslql1i4yygb186yk9du7a3ckcr43llakfugxqyvh8ysjn',
                clientKey: 'mwh2j580rytap024tiv8u9diap18n9aa3r4za10nc750aflh7be9gple5wticnuq',
                title: 'title',
                reason: 'reason',
                amount: '1666666666060656BDDDDDDDDDFDFDFD9555555555F5F5550666666666060616B888888888F8F8E8F444444444F4F4D4266666666606069637777777770707D710000000000000401999999999090969EDDDDDDDDDFDFDBD2777777777070797B888888888F8F8E829999999990909A93FFFFFFFFF0F0FFFB333333333F3F3C3',
                currencyType: '1444444444040454D444444444F4F454AAAAAAAAAAFAFAAA2DDDDDDDDD0D0DBDCFFFFFFFFFFFFF3F0DDDDDDDDD0D0D3DBFFFFFFFFFFFFFFF6EEEEEEEEE0E0EBE29999999990909A9499999999909092939999999990909E99444444444F4F454266666666606069633333333330303C3B999999999F9F9E90CCCCCCCCC0C0C3C'
            },
            success: function (data) {
                if (data != null && data.dto.responseStatus == "SUCCESS") {
                    //lastScrollTop = 0 ;
                    alert('success');
                }
                else {
                    alert('error');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert('error');
            }
        })
    }

    function test(){
        $.ajax({
            url: "check-company-balance-provided-by-merchant.htm",
            type: "post",
            dataType: "json",
            async: true,
            data: {
                secretKey: '6rtiwkjxhpyx6hu8sjgslql1i4yygb186yk9du7a3ckcr43llakfugxqyvh8ysjn',
                clientKey: 'mwh2j580rytap024tiv8u9diap18n9aa3r4za10nc750aflh7be9gple5wticnuq'
            },
            success: function (data) {
                console.log('data',data)
                if (data != null && data.dto.responseStatus == "SUCCESS") {
                    //lastScrollTop = 0 ;

                    alert('success');
                }
                else {
                    alert('error');
                }
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert('error');
            }
        })
    }*/

</script>

<div class="right_col" role="main" style="min-height: 2519px;" ng-controller="listController">
    <div class="clearfix"></div>
    <div class="row"   >
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                       Provider Offers
                        <%--<a onclick="testOk()">Test Ok</a>
                        <a onclick="test()">Test</a>--%>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                        <div class="row">
                            <div  id="listContent">
                                <s:if test="%{dataCount != 0}">
                                    <%--<form action="#" method="post">--%>
                                    <div class="btn-group">
                                        <label class="btn btn-primary"
                                               ng-repeat="column in columns"
                                               <%--ng-class="column.visible ? 'btn btn-primary ng-scope ng-binding' : 'btn btn-primary ng-scope ng-binding column-unchecked'"--%>
                                        >
                                            <input type="checkbox"  ng-model="column.visible" ng-disabled="disable_labels($index)"  />

                                            <span>{{column.title}}</span>
                                        </label>
                                    </div>
                                    <div class="table_parent_div">
                                        <table ng-table="tableParams"  show-filter="true" class="table table_br_csh  table-bordered table-striped listItems">
                                            <div class="form-group pull-right">
                                                <input type="text" class="form-control breanch_search"
                                                       ng-model="serch_val"
                                                       placeholder="<s:text  name="page.login.bracnh.search"> Search for...</s:text>">
                                                <buutton class="btn btn-default branch_search_button" ng-click=tableParams.filter(serch_val)>
                                                    <s:text name="page.branches.main.list.table.go">GO</s:text>
                                                </buutton>
                                            </div>
                                            <thead>
                                            <tr>
                                                <th></th>
                                                <th ng-repeat="column in columns" ng-show="column.visible"
                                                    ng-bind-html="column.title"
                                                    class="text-center sortable"  ng-class="{
                                            'sort-asc': tableParams.isSortBy(column.field, 'asc'),
                                            'sort-desc': tableParams.isSortBy(column.field, 'desc')
                                          }" style="vertical-align: top; text-align: center; min-width: 90px;"
                                                    ng-click="tableParams.sorting(column.field, tableParams.isSortBy(column.field, 'asc') ? 'desc' : 'asc')">

                                                </th>
                                                <th>Editing</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr ng-repeat="item in $data" ng-class-even="'tbl-row-even'"
                                                    ng-class="{'tbl_row_even': $even, 'tbl_row_odd': $odd }">
                                                    <td>
                                                        <input type="checkbox" name="id" />
                                                    </td>
                                                    <td ng-show="columns[0].visible" sortable="columns[0].field">
                                                        {{item.title ? item.title : '-'}}
                                                    </td>
                                                    <td ng-show="columns[1].visible" sortable="columns[1].field">
                                                        {{item.reason ? item.reason : '-'}}
                                                    </td>
                                                    <td ng-show="columns[2].visible" sortable="columns[2].field">
                                                        {{item.amount ? item.amount : '-'}}
                                                    </td>
                                                    <td ng-show="columns[3].visible" sortable="columns[3].field">
                                                        {{item.currencyType ? item.currencyType : '-'}}&nbsp;{{item.phone ? item.phone : '-'}}
                                                    </td>
                                                    <td ng-show="columns[4].visible" sortable="columns[4].field">
                                                        {{item.offeredAt ? item.offeredAt : '-'}}
                                                    </td>
                                                    <td ng-show="columns[5].visible" sortable="columns[5].field">
                                                        {{item.status ? item.status : '-'}}
                                                    </td>
                                                    <td ng-show="columns[6].visible" sortable="columns[6].field">
                                                        {{item.company.name ? item.company.name : '-'}}
                                                    </td>
                                                    <td ng-show="columns[7].visible" sortable="columns[7].field">
                                                        {{item.company.address ? item.company.address : '-'}}
                                                    </td>
                                                    <td ng-show="columns[8].visible" sortable="columns[8].field">
                                                        {{item.company.city ? item.company.city : '-'}}
                                                    </td>
                                                    <td ng-show="columns[9].visible" sortable="columns[9].field">
                                                        {{item.company.street ? item.company.street : '-'}}
                                                    </td>

                                                    <td class="edit_td" ng-click="dropdown_tds($event)">
                                                        <button ng-if='item.status == "PENDING"' data-id = "{{item.id}}"  ng-click = "reject_offer($event)" class="btn btn-danger"  type="button">Reject</button>
                                                        <button ng-if='item.status == "PENDING"' data-id = "{{item.id}}"  ng-click = "accept_offer($event)" class="btn btn-success" type="button">Accept</button>
                                                    </td>


                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <input type="hidden" ng-model="itemsCount" ng-init='itemsCount=${dataCount}'  />
                                    <input type="hidden" ng-model="actionPath" ng-init="actionPath='offer-list.htm'"/>
                                    <input type="hidden" ng-model="actionOfferRejectPath" ng-init="actionOfferRejectPath='reject-offer.htm'"/>
                                    <input type="hidden" ng-model="actionOfferAcceptPath" ng-init="actionOfferAcceptPath='accept-offer.htm'"/>

                                </s:if>
                                <s:else>
                                    <s:text name="page.branches.info.list.data.found">Data not found</s:text>
                                </s:else>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
