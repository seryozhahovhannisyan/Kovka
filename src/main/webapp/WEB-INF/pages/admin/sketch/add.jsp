<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link href="https://cdn.rawgit.com/summernote/summernote/v0.8.1/dist/summernote.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/summernote.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-summernote.min.js"></script>
<script>
    $(document).ready(function () {
        $('.summernote').summernote();
    });
    function submitForm() {
        $("#descriptionVal").val($('.summernote').summernote('code'));
        $('#sketchInfoForm').submit()
    }
</script>


<div class="right_col" role="main" style="min-height: 2519px;">
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        <s:text name="sketches.title.add">Sketch Add</s:text>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <form id="sketchInfoForm" action="admin-sketch-add.htm" method="post" data-parsley-validate=""
                          class="form-horizontal form-label-left"
                          novalidate="">

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Name <span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="name" id="name" required="required" class="form-control col-md-7 col-xs-12"
                                       type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="shortDesc">Short Desc <span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="shortDesc" id="shortDesc" required="required"
                                       class="form-control col-md-7 col-xs-12" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="title">Title <span
                                    class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input name="title" id="title" required="required"
                                       class="form-control col-md-7 col-xs-12" type="text">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="description">Description <span
                                    class="required">*</span>
                            </label>
                            <input name="description" id="descriptionVal" class="form-control col-md-7 col-xs-12"
                                   type="hidden">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div id="description" class="summernote"></div>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button class="btn btn-primary" type="button" onclick="goToAction('/admin-sketches.htm')">
                                    <s:text name="label.back">Back</s:text>
                                </button>
                                <button class="btn btn-primary" type="reset"><s:text name="label.reset">Reset</s:text></button>
                                <button type="button" class="btn btn-success" onclick="submitForm()"><s:text name="label.Save">Save</s:text></button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</div>
