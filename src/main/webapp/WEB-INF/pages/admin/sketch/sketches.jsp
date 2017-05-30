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
        {title: 'order', field: 'order', visible: true},
        {title: 'category', field: 'category', visible: true}
    ];
    $( function() {
        $( "#sortable" ).sortable();
        $( "#sortable" ).disableSelection();
    } );

    function sort() {
        $('.sort').each(function(index,item){
            var value = $(item).data('value');
            if(value>0){
                $('<input type="hidden" name="sortIdes" value="' + value + '"/>').appendTo('#sortForm');
            }
        });

        $('#sortForm').submit();
    }
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
                        <div class="add_div_brch_parent" ng-click=add_new_records('sketch')>
                            <div class="add_div_brch"></div>
                            <div><s:text name="label.add.record">Add new record</s:text></div>
                        </div>
                        <div class="add_div_brch_parent"  onclick="sort()" >
                            <div class="add_div_brch"></div>
                            <div><s:text name="label.sort">sort</s:text></div>
                        </div>

                    </div>

                    <div class="row">
                        <div id="listContent">
                            <s:if test="%{dataCount != 0}">

                                <div class="table_parent_div">
                                    <table id="tableId" ng-table="tableParams" show-filter="true"
                                           class="table table_br_csh  table-bordered table-striped listItems">

                                        <thead>
                                        <tr>
                                            <th ng-repeat="column in columns" ng-show="column.visible"
                                                ng-bind-html="column.title"
                                                class="text-center sortable" ng-class="{
                                            'sort-asc': tableParams.isSortBy(column.field, 'asc'),
                                            'sort-desc': tableParams.isSortBy(column.field, 'desc')
                                          }" style="vertical-align: top; text-align: center; min-width: 90px;"
                                                ng-click="tableParams.sorting(column.field, tableParams.isSortBy(column.field, 'asc') ? 'desc' : 'asc')">

                                            </th>
                                            <th><s:text name="label.image">Image</s:text></th>
                                            <th><s:text name="sketches.title.Product">Product</s:text></th>
                                            <th><s:text name="label.edit">Edit</s:text></th>
                                            <th><s:text name="label.delete">Delete</s:text></th>

                                        </tr>
                                        </thead>

                                        <form id="sortForm" action="admin-sketches-sort.htm" method="post">
                                            <tbody id="sortable">
                                            <tr id="row_{{item.id}}" ng-repeat="item in $data" ng-class-even="'tbl-row-even'"
                                                ng-class="{'tbl_row_even': $even, 'tbl_row_odd': $odd }">
                                                <td ng-show="columns[0].visible" sortable="columns[0].field"
                                                    class="sort" data-value="{{item.id}}">
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
                                                <td ng-show="columns[5].visible" sortable="columns[5].field">
                                                    {{item.category ? item.category : '-'}}
                                                </td>
                                                <td class="edit_td">
                                                    <a data-type="sketch" data-id="{{item.id}}"
                                                       ng-click="add_new_image($event)">
                                                        <i class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                        <s:text name="label.image">Image</s:text>
                                                    </a>
                                                </td>
                                                <td class="edit_td">
                                                    <a data-type="sketch" data-id="{{item.id}}"
                                                       ng-click="add_new_product($event)">
                                                        <i class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                        <s:text name="sketches.title.Product">Product</s:text>
                                                    </a>
                                                </td>
                                                <td class="edit_td" >
                                                    <a data-type="sketch" data-id="{{item.id}}"
                                                       ng-click="editSelectedRow($event)">
                                                        <i class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                        <s:text name="label.edit">Edit</s:text>
                                                    </a>
                                                </td>
                                                <td class="edit_td">
                                                    <a data-type="sketch" data-id="{{item.id}}"
                                                       ng-click="deleteSelectedRow($event)">
                                                        <i class="fa fa_edit fa-pencil-square-o" aria-hidden="true"/>
                                                        <s:text name="label.delete">Delete</s:text>
                                                    </a>
                                                </td>


                                            </tr>
                                            </tbody>
                                        </form>

                                    </table>
                                </div>

                                <input type="hidden" ng-model="itemsCount" ng-init='itemsCount=${dataCount}'/>
                                <input type="hidden" ng-model="actionPath" ng-init="actionPath='admin-sketch-list.htm'"/>

                            </s:if>
                            <s:else>
                                <s:text name="page.info.list.data.found">Data not found</s:text>
                            </s:else>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</div>
