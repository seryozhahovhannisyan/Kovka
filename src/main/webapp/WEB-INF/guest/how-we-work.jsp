
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

                            <h1 class="entry-title"><s:text name="menu.our.works">Наши работы</s:text></h1>


                        </header><!-- .entry-header -->

                        <gallery class="entry-content">

                            <div class="vc_row wpb_row vc_row-fluid" ng-repeat="gallery in galleries">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div ng-if="$first" class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <h2 style="text-align: center;">
                                                        <em>
                                                        <strong>
                                                            <s:text name="page.our.works.content">Фотоальбом наших работ постоянно пополняется, здесь представлен далеко не весь список выполненных заказов</s:text>
                                                        </strong>
                                                        </em>
                                                    </h2>

                                                </div>
                                            </div>
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <h2 style="text-align: center;">{{gallery.title}}</h2>
                                                </div>
                                            </div>
                                            <!-- vc_grid start -->
                                            <div class="vc_grid-container-wrapper vc_clearfix">
                                                <div class="vc_grid-container vc_clearfix wpb_content_element vc_media_grid">
                                                    <div class="vc_grid vc_row vc_grid-gutter-5px vc_pageable-wrapper vc_hook_hover">
                                                        <div class="vc_pageable-slide-wrapper vc_clearfix">
                                                            <div  ng-repeat="img in gallery.images" class="vc_grid-item vc_clearfix vc_col-sm-2 vc_grid_filter-item vc_visible-item fadeIn animated">
                                                                <a rel="prettyPhoto[machine]" ng-href="{{img}}" title="" ng-init="$last?pretty_machine():null"
                                                                   class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link">
                                                                    <img width="100%" ng-src="{{img}}"/>
                                                                </a>
                                                                <div class="vc_gitem-zone-mini">
                                                                </div>
                                                                <div class="vc_clearfix"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--</div>--%>
                            </div>

                            <div class="clear"></div>
                            <footer class="entry-footer">
                                <div class="entry-meta">
                                </div> <!-- .entry-meta -->

                            </footer><!-- .entry-footer -->
                        </gallery><!-- .entry-content -->
                    </article><!-- #post-## -->
                </div><!-- .content-container -->
            </div><!-- .content -->

            <div class="clear"></div>

        </div><!-- .site-content -->

        <tiles:insertAttribute name="right"/><!-- .sidebar-2 -->
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->