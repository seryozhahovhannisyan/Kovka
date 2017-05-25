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
                        <s:text name="admin.menu.workScheme">Work Scheme</s:text>
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
                                        <th><s:text name="work.scheme.name">name</s:text></th>
                                        <th><s:text name="work.scheme.description">Description</s:text></th>
                                        <th><s:text name="label.Save">Save</s:text></th>
                                        <th><s:text name="label.delete">Delete</s:text></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:set var="key" value="0"/>
                                    <s:iterator var="work" value="workSchemeInfos">

                                        <tr>
                                            <form action="admin-work-scheme-edit.htm" method="post">
                                                <input type="hidden" name="id" value='<s:property value="#work.id"/>'/>
                                                <td><s:property value="#work.language"/></td>
                                                <td><input type="text" name="name" value="<s:property value="#work.name"/>"/></td>
                                                <td><input type="text" name="description" value="<s:property value="#work.description"/>"/></td>
                                                <td><input type="submit" value='<s:text name="label.Save">Save</s:text>'/></td>
                                            </form>
                                            <s:if test="%{#key != #work.key}" >
                                                <td rowspan="<%=Language.values().length%>" >
                                                    <s:set var="key" value="%{#work.key}"/>
                                                    <form action="admin-work-scheme-delete.htm" method="post">
                                                        <input type="hidden" name="key" value='<s:property value="#work.key"/>'/>
                                                        <input type="submit" value='<s:text name="label.delete">Delete</s:text>'/>
                                                    </form>
                                                </td>
                                            </s:if>
                                        </tr>


                                    </s:iterator>
                                    <form action="admin-work-scheme-add.htm" method="post">
                                        <tr>
                                            <td><s:text name="label.All">All</s:text></td>
                                            <td><input type="text" name="name"/></td>
                                            <td><input type="text" name="description"/></td>
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
