<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="sidebar-2">
    <div class="column small">
        <div class="widget-area">

            <aside id="text-18" class="widget widget_text"><h3 class="widget-title">Наши контакты:</h3>
                <div class="textwidget"><span style="color: #000000;"><center><h2>8 (495) 642-40-66 <p>kovka@zheldor-kovka.ru</p></h2></center></span>
                </div>
            </aside>
            <aside id="dc_jqaccordion_widget-3" class="widget "><h3 class="widget-title">Возможно Вас
                заинтересуют:</h3>
                <div class="dcjq-accordion" id="dc_jqaccordion_widget-3-item">
                    <ul id="menu-menyu-sprava" class="menu" boxes box-url='/load-sketches.htm'
                        page-type="sketches"
                        box-type="link"><%-- --%>
                        <li ng-repeat="page in sketches" content="page"
                            ng-id="menu-item-{{$index}}"
                            class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-89 current_page_item menu-item-199">
                            <a href="http://zheldor-kovka.ru/kovanye-vorota/">{{page.title}}</a>
                        </li>
                    </ul>
                </div>
            </aside>
            <aside id="search-3" class="widget widget_search">
                <form role="search" method="get" class="search-form" action="search.htm">
                    <label>
                        <span class="screen-reader-text">Найти:</span>
                        <input class="search-field" placeholder="Поиск…" name="search" type="search">
                    </label>
                    <input class="search-submit" value="Поиск" type="submit">
                </form>
            </aside>
            <aside id="text-21" class="widget widget_text">
                <div class="textwidget">
                    <center><a class="maxbutton-1 maxbutton maxbutton-rasschitajte-stoimost"
                               href="http://zheldor-kovka.ru/obratnaya-svyaz/"><span
                            class="mb-text">Заказать изделие</span></a>
                    </center>
                </div>
            </aside>
            <aside id="stainedglass_items_category_widget-3" class="widget stainedglass_items_category">
                <h3 class="widget-title">Полезные статьи</h3>
                <div class="main-wrapper-image " style="padding:20px 0% 20px 0%">

                    <boxes box-page="0" box-count="3" box-url='/load-sketches.htm' page-type="articles" more-info="true"
                           book="true" box-type="small" class="wrapper-image column-1 all">
                        <box-item ng-repeat="page in articles" content="page" box-id="{{page.id}}" box-type="small"
                                  class="element effect-1">
                            <img width="100px" src="<%=request.getContextPath()%>/img/ajax-loader2.gif"/>
                        </box-item>
                    </boxes><!-- .wrapper -->


                    <div class="hide-element" style="z-index: -1;"></div>
                </div><!-- .main-wrapper -->
            </aside>
        </div><!-- .widget-area -->
    </div><!-- .column -->
</div>
<!-- .sidebar-2 -->