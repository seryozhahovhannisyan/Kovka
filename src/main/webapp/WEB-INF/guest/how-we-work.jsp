<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/guest/skin_002.css" type="text/css" media="screen">

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <div class="content-container">

                    <article id="post-466" class="post-466 page type-page status-publish hentry">

                        <header class="entry-header">
                            <h1 class="entry-title"><s:text name="menu.how.we.work">Как мы работаем</s:text></h1>
                        </header><!-- .entry-header -->

                        <div class="entry-content">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner "><div class="wpb_wrapper">
                                        <div class="wpb_text_column wpb_content_element ">
                                            <div class="wpb_wrapper">
                                                <h2 style="text-align: center;"><span style="color: #000000;"><s:text name="page.how.we.work">Наша компания работает по следующей схеме</s:text>:</span></h2>
                                                <p>&nbsp;</p>
                                                <s:iterator var="work" value="workSchemeInfos"  status="status">
                                                    <p style="text-align: center;">
                                                        <span style="color: #000000;">
                                                            <span style="color: #ff0000;"><s:property value="#status.count"/>.</span>
                                                            <s:property value="#work.name"/></span>
                                                    </p>
                                                    <p style="text-align: center;">
                                                        <span style="color: #000000;">
                                                            <s:property value="#work.description"/>
                                                        </span>
                                                    </p>
                                                    <s:if test="!#status.last">
                                                        <%--https://dev.w3.org/html5/html-author/charref--%>
                                                        <h1 style="text-align: center;"><span style="color: #ff0000;">&dArr;</span></h1>
                                                    </s:if>
                                                </s:iterator>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <footer class="entry-footer">
                                <div class="entry-meta">
                                </div> <!-- .entry-meta -->
                            </footer><!-- .entry-footer -->
                        </div>

                    </article><!-- #post-## -->
                </div><!-- .content-container -->
            </div><!-- .content -->

            <div class="clear"></div>

        </div><!-- .site-content -->

        <tiles:insertAttribute name="right"/><!-- .sidebar-2 -->
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->