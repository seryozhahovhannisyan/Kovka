
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="https://cdn.rawgit.com/summernote/summernote/v0.8.1/dist/summernote.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/summernote.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-summernote.min.js"></script>
<script src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js"></script>
<script src="<%=request.getContextPath()%>/libs/js/angular/ng-table.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/sketch/object-list.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/sketch/add-controller.js" type="text/javascript"></script>

<link href="<%=request.getContextPath()%>/css/template/cashier.css" type="text/css" rel="stylesheet">
<script>
    $(document).ready(function() {
        $('.summernote').summernote();
    });
</script>


<div class="right_col" role="main" style="min-height: 2519px;" ng-controller="listController">
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        <s:text name="sketches.title.add">Sketch  Add</s:text>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <div class="row">
                        <div class="add_div_brch_parent" ng-click=add_new_records('sketch')>
                            <div class="add_div_brch"></div>
                            <div><s:text name="page.branches.main.add.record">Add new record</s:text></div>
                        </div>
                        <div class="add_div_brch_parent" ng-click=deleteSelectedRow('sketch')>
                            <div class="delete_div_brch"></div>
                            <div><s:text name="page.branches.main.delete.marked">Delete marked</s:text></div>
                        </div>
                    </div>

                    <div class="row">
                        http://summernote.org/examples/
                        <div class="summernote">summernote 1</div>

                        <div id="listContent" ng-controller="CallbacksCtrl">
                            AAAAAA
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

                </div>
            </div>
        </div>
    </div>
</div>
</div>
