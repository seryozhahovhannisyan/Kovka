<%@ page import="com.kovka.common.data.lcp.Language" %><%--
  Created by IntelliJ IDEA.
  User: Serozh
  Date: 7/29/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link href="https://cdn.rawgit.com/summernote/summernote/v0.8.1/dist/summernote.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/summernote.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-summernote.min.js"></script>


<div class="right_col" role="main" style="min-height: 2519px;">
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
                        <div class="user_text_div col-lg-6 col-md-6 col-sm-6 col-xs-8">
                            <!-- message box -->
                            <div class="box-info"
                                 <s:if test="%{#session.info == null || #session.info == ''}">style="display: none"</s:if>>
                                <s:property value="#session.info"/>
                                <s:set var="info" scope="session" value=""/>
                            </div>

                            <div class="box-hint"
                                 <s:if test="%{#session.message == null || #session.message == ''}">style="display: none"</s:if>>
                                <s:property value="#session.message"/>
                                <s:set var="message" scope="session" value=""/>
                            </div>
                            <!-- message box -->
                        </div>
                    </div>

                </div>

                <div class="x_content">

                    <form id="sketchEditForm" action="admin-sketch-edit.htm" method="post" data-parsley-validate=""
                          class="form-horizontal form-label-left"
                          novalidate="">


                        <s:iterator var="info" value="infosForEdit" status="st">
                            <input name="infosForEdit[<s:property value="#st.index"/>].id"
                                   value='<s:property value="#info.id"/>' type="hidden"/>

                            <div class="form-group" id="<s:property value="#info.language.key"/>">
                                <h2 class="control-label col-md-3 col-sm-3 col-xs-12"
                                    for="<s:property value="#info.language.key"/>">
                                    <s:property value="#info.language.title"/>
                                </h2>
                            </div>

                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                       for="title<s:property value="#info.language.key"/>">
                                    Name
                                </label>
                                <div id="title<s:property value="#info.language.key"/>"
                                     class="col-md-6 col-sm-6 col-xs-12">
                                    <input name="infosForEdit[<s:property value="#st.index"/>].title"
                                           value='<s:property value="#info.name"/>'
                                           class="form-control col-md-7 col-xs-12" type="text"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                       for="shortDesc<s:property value="#info.language.key"/>">
                                    Short Description
                                </label>
                                <div id="shortDesc<s:property value="#info.language.key"/>"
                                     class="col-md-6 col-sm-6 col-xs-12">
                                    <input name="infosForEdit[<s:property value="#st.index"/>].shortDesc"
                                           value='<s:property value="#info.shortDesc"/>'
                                           class="form-control col-md-7 col-xs-12" type="text"/>
                                 </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                       for="title<s:property value="#info.language.key"/>">
                                    Title
                                </label>
                                <div id="title<s:property value="#info.language.key"/>"
                                     class="col-md-6 col-sm-6 col-xs-12">
                                    <input name="infosForEdit[<s:property value="#st.index"/>].title"
                                           value='<s:property value="#info.title"/>'
                                           class="form-control col-md-7 col-xs-12" type="text"/>
                                </div>

                            </div>

                            <div class="form-group">
                                <input name="infosForEdit[<s:property value="#st.index"/>].description"
                                       id="descriptionVal_<s:property value="#info.language.key"/>"
                                       class="form-control col-md-7 col-xs-12"
                                       type="hidden">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12"
                                       for="description_<s:property value="#info.language.key"/>">
                                    Description
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div id="description_<s:property value="#info.language.key"/>"
                                         class="summernote_<s:property value="#info.language.key"/>">
                                        <s:property value="#info.description" escapeHtml="false"/>
                                    </div>
                                </div>
                            </div>

                        </s:iterator>

                    </form>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button class="btn btn-primary" type="button" onclick="goToAction('/user-home.htm')">Menu
                            </button>
                            <button class="btn btn-primary" type="reset">Reset</button>
                            <button type="button" class="btn btn-success" onclick="submitForm()">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    $(document).ready(function () {
        <%for (Language language : Language.values()){%>
        $('.summernote_<%=language.getKey()%>').summernote();
        <%}%>

    });
    function submitForm() {
        <%for (Language language : Language.values()){%>
        $("#descriptionVal_<%=language.getKey()%>").val($('.summernote_<%=language.getKey()%>').summernote('code'));
        <%}%>

        $('#sketchEditForm').submit()
    }
</script>

