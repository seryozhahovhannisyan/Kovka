<%@ page import="com.kovka.common.data.lcp.Language" %><%--
  Created by IntelliJ IDEA.
  User: Serozh
  Date: 7/29/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="<%=request.getContextPath()%>/css/template/cashier.css" type="text/css" rel="stylesheet">


<div class="right_col" role="main" style="min-height: 2519px;"  >
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        <s:text name="admin.menu.price">Price List</s:text>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <div class="row">
                        <div id="listContent">
                            <s:if test="%{dataCount == 0}">
                                <s:text name="page.info.list.data.found">Data not found</s:text>
                            </s:if>
                            <div class="table_parent_div">
                                <table id="tableId" class="table table_br_csh  table-bordered table-striped listItems">
                                    <thead>
                                    <tr>
                                        <th><s:text name="label.language">Language</s:text></th>
                                        <th><s:text name="price.list.name">name</s:text></th>
                                        <th><s:text name="price.list.budgetary">budgetary</s:text></th>
                                        <th><s:text name="price.list.standard">standard</s:text></th>
                                        <th><s:text name="price.list.premium">premium</s:text></th>
                                        <th><s:text name="price.list.productionTime">productionTime</s:text></th>
                                        <th><s:text name="label.Save">Save</s:text></th>
                                        <th><s:text name="label.delete">Delete</s:text></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <s:set var="key" value="0"/>
                                        <s:iterator var="price" value="priceListInfos">

                                            <tr>
                                                <form action="admin-price-list-edit.htm" method="post">
                                                    <input type="hidden" name="id" value='<s:property value="#price.id"/>'/>
                                                    <td><s:property value="#price.language"/></td>
                                                    <td><input type="text" name="name" value="<s:property value="#price.name"/>"/></td>
                                                    <td><input type="text" name="budgetary" value="<s:property value="#price.budgetary"/>"/></td>
                                                    <td><input type="text" name="standard" value="<s:property value="#price.standard"/>"/></td>
                                                    <td><input type="text" name="premium" value="<s:property value="#price.premium"/>"/></td>
                                                    <td><input type="text" name="productionTime" value="<s:property value="#price.productionTime"/>"/></td>
                                                    <td><input type="submit" value='<s:text name="label.Save">Save</s:text>'/></td>
                                                </form>
                                                <s:if test="%{#key != #price.key}" >
                                                    <td rowspan="<%=Language.values().length%>" >
                                                        <s:set var="key" value="%{#price.key}"/>
                                                        <form action="admin-price-list-delete.htm" method="post">
                                                            <input type="hidden" name="key" value='<s:property value="#price.key"/>'/>
                                                            <input type="submit" value='<s:text name="label.delete">Delete</s:text>'/>
                                                        </form>
                                                    </td>
                                                </s:if>
                                            </tr>


                                        </s:iterator>
                                        <form action="admin-price-list-add.htm" method="post">
                                            <tr>
                                                <td><s:text name="label.All">All</s:text></td>
                                                <td><input type="text" name="name"/></td>
                                                <td><input type="text" name="budgetary"/></td>
                                                <td><input type="text" name="standard"/></td>
                                                <td><input type="text" name="premium"/></td>
                                                <td><input type="text" name="productionTime"/></td>
                                                <td colspan="2"><input type="submit" value='<s:text name="label.Save">Save</s:text>'/></td>
                                            </tr>

                                        </form>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</div>
