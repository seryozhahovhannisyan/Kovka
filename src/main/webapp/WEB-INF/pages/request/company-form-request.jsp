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
        {title: 'companyName', field: 'companyName', visible : true},
        {title: 'companyAddress', field: 'companyAddress', visible : true},
        {title: 'companyEmail', field: 'companyEmail', visible : true},
        {title: 'companyPhoneCode', field: 'companyPhoneCode', visible : true},
        {title: 'companyPhone', field: 'companyPhone', visible : true},
        {title: 'countOfBranches', field: 'countOfBranches', visible : true},
        {title: 'countOfWorkers', field: 'countOfWorkers', visible : true},
        {title: 'contactName', field: 'contactName', visible : true},
        {title: 'contactLastName', field: 'contactLastName', visible : true},
        {title: 'contactEmail', field: 'contactEmail', visible : true},
        {title: 'contactPhoneCode', field: 'contactPhoneCode', visible : true},
        {title: 'contactPhone', field: 'contactPhone', visible : true},
        {title: 'message', field: 'message', visible : true},
        {title: 'status', field: 'status', visible : true},
        {title: 'requestedAt', field: 'status', requestedAt : true}
    ];
</script>

<div class="right_col" role="main" style="min-height: 2519px;" ng-controller="listController">
    <div class="clearfix"></div>
    <div class="row"   >
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        company-form-request
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
                                                        {{item.companyName ? item.companyName : '-'}}
                                                    </td>
                                                    <td ng-show="columns[1].visible" sortable="columns[1].field">
                                                        {{item.companyAddress ? item.companyAddress : '-'}}
                                                    </td>
                                                    <td ng-show="columns[2].visible" sortable="columns[2].field">
                                                        {{item.companyEmail ? item.companyEmail : '-'}}
                                                    </td>
                                                    <td ng-show="columns[3].visible" sortable="columns[3].field">
                                                        {{item.companyPhoneCode ? item.companyPhoneCode : '-'}}&nbsp;{{item.phone ? item.phone : '-'}}
                                                    </td>
                                                    <td ng-show="columns[4].visible" sortable="columns[4].field">
                                                        {{item.companyPhone ? item.companyPhone : '-'}}
                                                    </td>
                                                    <td ng-show="columns[5].visible" sortable="columns[5].field">
                                                        {{item.countOfBranches ? item.countOfBranches : '-'}}
                                                    </td>
                                                    <td ng-show="columns[6].visible" sortable="columns[6].field">
                                                        {{item.contactName ? item.contactName : '-'}}
                                                    </td>
                                                    <td ng-show="columns[7].visible" sortable="columns[7].field">
                                                        {{item.contactLastName ? item.contactLastName : '-'}}
                                                    </td>
                                                    <td ng-show="columns[8].visible" sortable="columns[8].field">
                                                        {{item.contactEmail ? item.contactEmail : '-'}}
                                                    </td>
                                                    <td ng-show="columns[9].visible" sortable="columns[9].field">
                                                        {{item.contactPhoneCode ? item.contactPhoneCode : '-'}}
                                                    </td>
                                                    <td ng-show="columns[10].visible" sortable="columns[10].field">
                                                        {{item.contactPhone ? item.contactPhone : '-'}}
                                                    </td>
                                                    <td ng-show="columns[11].visible" sortable="columns[11].field">
                                                        {{item.message ? item.message : '-'}}
                                                    </td>
                                                    <td ng-show="columns[12].visible" sortable="columns[12].field">
                                                        {{item.status ? item.status : '-'}}
                                                    </td>
                                                    <td ng-show="columns[13].visible" sortable="columns[13].field">
                                                        {{item.requestedAt ? item.requestedAt : '-'}}
                                                    </td>

                                                    <td class="edit_td" ng-click="dropdown_tds($event)">
                                                        <span>EDIT <i class="fa fa-sort-desc" aria-hidden="true"></i></span>
                                                        <ul class="branches_crud_ul">
                                                            <li   data-id = "{{item.id}}" ng-click = "verify($event)">
                                                                <i  class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                                Verify
                                                            </li>
                                                        </ul>
                                                    </td>


                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>

                                    <input type="hidden" ng-model="itemsCount" ng-init='itemsCount=${dataCount}'  />
                                    <input type="hidden" ng-model="actionPath" ng-init="actionPath='company-form-request-list.htm'"/>
                                    <input type="hidden" ng-model="actionVerifyPath" ng-init="actionVerifyPath='pre-company-form-request-verify.htm'"/>

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
