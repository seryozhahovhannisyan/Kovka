<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


<aside id="stainedglass_items_widget-4" class="widget stainedglass_items">
    <div class="main-wrapper-image " style="padding:0px 0% 0px 0%">

        <boxes box-page="0" box-count="8" box-url='/load-sketches.htm' page-type="sketches" more-info="true" book="true"
               box-type="small" class="wrapper-image column-4 all margin-0">
            <box-item ng-repeat="page in sketches" content="page" box-id="{{page.id}}" box-type="small"
                      class="element effect-1 once">
                <img width="100px" src="<%=request.getContextPath()%>/img/ajax-loader2.gif"/>
            </box-item>
        </boxes>

        <div class="clear"></div> <!-- .wrapper -->--%>
        <div class="hide-element" style="z-index: -1;"></div>
    </div><!-- .main-wrapper -->
</aside>
</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>



<div class="main-area">
    <div class="main-wrapper front_page no-sidebar ">
        <div class="site-content">

            <div class="content">
                <div class="content-container">
                    <article id="post-36" class="post-36 page type-page status-publish hentry">

                        <header class="entry-header">
                        </header><!-- .entry-header -->

                        <div class="entry-content">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <p style="text-align: center;">
                                                        <span style="color: #000000;">
                                                            <b><s:text name="page.home.title">«Желдор Ковка» давно и прочно обосновалась на рынке металлообработки</s:text></b>
                                                        </span>
                                                    </p>
                                                    <p style="text-align: justify;">
                                                        <span style="color: #000000;">
                                                            <b><s:text name="page.home.content">На сегодняшний день в нашей Компании работают специалисты только высокого уровня, у нас вы можете заказать кованные изделия любой сложности. Мы занимаем заслуженное место среди конкурентов. Оказывая широкий спектр услуг в области обработки металла, наши специалисты внимательно следят за качеством выполненных работ . Наше предприятие работает как с оптовыми заказами , так и с индивидуальными.</s:text></b>
                                                        </span>
                                                    </p>
                                                </div>
                                            </div>
                                            <!-- vc_grid start -->
                                            <div class="vc_grid-container-wrapper vc_clearfix">

                                                <machine class="vc_grid-container vc_clearfix wpb_content_element vc_media_grid">
                                                    <div ng-repeat="machine in machines" class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                        <a rel="prettyPhoto[machine]" ng-href="{{machine}}" title="" ng-init="$last?pretty_machine():null" >
                                                            <img width="100%" ng-src="{{machine}}"/>
                                                        </a>
                                                    </div>
                                                </machine>

                                            </div>
                                            <!-- vc_grid end -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                            <footer class="entry-footer">
                                <div class="entry-meta">
                                </div> <!-- .entry-meta -->
                            </footer><!-- .entry-footer -->
                        </div><!-- .entry-content -->
                    </article><!-- #post-## -->
                </div><!-- .content-container -->
                <div class="content-search">
                </div><!-- .content-search -->
            </div><!-- .content -->
            <div class="clear"></div>

        </div><!-- .site-content -->
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->