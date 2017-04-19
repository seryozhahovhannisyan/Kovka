<%--
  Created by IntelliJ IDEA.
  User: Serozh
  Date: 7/29/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<script src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js"></script>
<script src="<%=request.getContextPath()%>/libs/js/angular/ng-table.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/sketch/object-list.js" type="text/javascript"></script>

<link href="<%=request.getContextPath()%>/css/template/cashier.css" type="text/css" rel="stylesheet">


<script type="text/javascript">
    var contextPath = '<%=request.getContextPath()%>';
    var object = 'company_form_request';
    var itemsCount = '<s:property value="dataCount"/>';
    var columns = [
        {title: 'name', field: 'name', visible: true},
        {title: 'shortDesc', field: 'shortDesc', visible: true},
        {title: 'title', field: 'title', visible: true},
        {title: 'status', field: 'status', visible: true},
        {title: 'order', field: 'order', requestedAt: true}
    ];
</script>

<div class="right_col" role="main" style="min-height: 2519px;" ng-controller="listController">
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        <s:text name="sketches.title">Sketch</s:text>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <div class="row">
                        <div class="add_div_brch_parent"  ng-click =add_new_records('sketch') >
                            <div class="add_div_brch"  ></div>
                            <div ><s:text name="page.branches.main.add.record" >Add new record</s:text></div>
                        </div>
                        <div class="add_div_brch_parent"  ng-click =add_new_product('sketch') >
                            <div class="add_div_brch"  ></div>
                            <div >Add new product</div>
                        </div>
                        <div class="add_div_brch_parent" ng-click =deleteSelectedRow('sketch')>
                            <div class="delete_div_brch" ></div>
                            <div><s:text name="page.branches.main.delete.marked">Delete marked</s:text></div>
                        </div>
                        <div class="add_div_brch_parent" ng-click =add_new_image('sketch') >
                            <div class="add_div_brch" ></div>
                            Add new Image
                        </div>
                    </div>

                    <div class="row">
                        <div id="listContent">
                            <s:if test="%{dataCount != 0}">
                                <%--<form action="#" method="post">--%>
                                <div class="btn-group">
                                    <label class="btn btn-primary"
                                           ng-repeat="column in columns"
                                        <%--ng-class="column.visible ? 'btn btn-primary ng-scope ng-binding' : 'btn btn-primary ng-scope ng-binding column-unchecked'"--%>
                                    >
                                        <input type="checkbox" ng-model="column.visible"
                                               ng-disabled="disable_labels($index)"/>

                                        <span>{{column.title}}</span>
                                    </label>
                                </div>
                                <div class="table_parent_div">
                                    <table ng-table="tableParams" show-filter="true"
                                           class="table table_br_csh  table-bordered table-striped listItems">
                                        <div class="form-group pull-right">
                                            <input type="text" class="form-control breanch_search"
                                                   ng-model="serch_val"
                                                   placeholder="<s:text  name="page.login.bracnh.search"> Search for...</s:text>">
                                            <buutton class="btn btn-default branch_search_button"
                                                     ng-click=tableParams.filter(serch_val)>
                                                <s:text name="page.branches.main.list.table.go">GO</s:text>
                                            </buutton>
                                        </div>
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th ng-repeat="column in columns" ng-show="column.visible"
                                                ng-bind-html="column.title"
                                                class="text-center sortable" ng-class="{
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
                                                <input type="checkbox" name="checkbox_{{item.id}}"
                                                       ng-click="updateSelection($event, item.id)"
                                                       ng-checked="checked.checked_all"/>
                                            </td>
                                            <td ng-show="columns[0].visible" sortable="columns[0].field">
                                                {{item.currentInfo.name ? item.currentInfo.name : '-'}}
                                            </td>
                                            <td ng-show="columns[1].visible" sortable="columns[1].field">
                                                {{item.currentInfo.shortDesc ? item.currentInfo.shortDesc : '-'}}
                                            </td>
                                            <td ng-show="columns[2].visible" sortable="columns[2].field">
                                                {{item.currentInfo.title ? item.currentInfo.title : '-'}}
                                            </td>

                                            <td ng-show="columns[3].visible" sortable="columns[3].field">
                                                {{item.status ? item.status : '-'}}
                                            </td>

                                            <td ng-show="columns[4].visible" sortable="columns[4].field">
                                                {{item.order ? item.order : '-'}}
                                            </td>

                                            <td class="edit_td" ng-click="dropdown_tds($event)">
                                                <span>EDIT <i class="fa fa-sort-desc" aria-hidden="true"></i></span>
                                                <ul class="branches_crud_ul">
                                                    <li data-id="{{item.id}}" ng-click="verify($event)">
                                                        <i class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                        Verify
                                                    </li>
                                                </ul>
                                            </td>


                                        </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <input type="hidden" ng-model="itemsCount" ng-init='itemsCount=${dataCount}'/>
                                <input type="hidden" ng-model="actionPath" ng-init="actionPath='sketch-list.htm'"/>
                                <input type="hidden" ng-model="actionVerifyPath"
                                       ng-init="actionPathAdd='pre-company-form-request-verify.htm'"/>

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