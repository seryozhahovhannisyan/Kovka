<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/model/Box.js"></script>


                <aside id="stainedglass_items_widget-4" class="widget stainedglass_items">
                    <div class="main-wrapper-image " style="padding:0px 0% 0px 0%">
                        <div class="wrapper-image column-4 all margin-0">

                            <boxes box-page="0" box-url='sketch-load.htm' page-type="tours" more-info="true" book="true" box-type="small" >
                                <box-item  ng-repeat="page in tours" content="page" box-id="{{page.id}}" box-type="small"><img width="100px" src="<%=request.getContextPath()%>/img/ajax-loader2.gif"/></box-item>
                            </boxes>

                            <%--<div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/9-400x300.jpg"
                                         alt="Ворота">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Ворота</h2>
                                        </header><!-- header -->

                                        <p>Кованые ворота</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-vorota/" class="link">подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/Артмет_заборы_52-400x297.jpg"
                                         alt="Заборы">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Заборы</h2>
                                        </header><!-- header -->

                                        <p>Кованые заборы и ограждения</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-zabory-i-ograzhdeniya/"
                                           class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/08106680-400x300.jpg"
                                         alt="Калитки">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Калитки</h2>
                                        </header><!-- header -->

                                        <p>Кованые калитки и двери</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-kalitki-i-dveri/" class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/903319979-400x300.jpg"
                                         alt="Навесы">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Навесы</h2>
                                        </header><!-- header -->

                                        <p>Кованые навесы и козырьки</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-kozyrki-i-navesy/" class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/k9994-400x286.jpg"
                                         alt="Перила и лестницы">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Перила и лестницы</h2>
                                        </header><!-- header -->

                                        <p>Кованые лестницы и перила для лестниц</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-perila-dlya-lestnic/" class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/krovati-04-400x300.jpg"
                                         alt="Мебель">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Мебель1111111</h2>
                                        </header><!-- header -->

                                        <p>Кованые кровати, стулья, и предметы интерьера, и другая мебель</p>

                                        <a href="http://zheldor-kovka.ru/kovanaya-mebel-krovati-stulya-stoly/"
                                           class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/a948a86f6e3f2e60c37281064462fd68-400x300.jpeg"
                                         alt="Балконы">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Балконы</h2>
                                        </header><!-- header -->

                                        <p>Кованые балконы и оконные решетки</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-balkony/"
                                           class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            <div class="element effect-1 once">
                                <article>

                                    <img class="image-item"
                                         src="http://zheldor-kovka.ru/wp-content/uploads/2016/12/bm-8-400x300.jpg"
                                         alt="Беседки">


                                    <div class="hover">

                                        <header>
                                            <h2 class="entry-title">Беседки</h2>
                                        </header><!-- header -->

                                        <p>Кованые беседки, скамейки, мангалы</p>

                                        <a href="http://zheldor-kovka.ru/kovanye-besedki/"
                                           class="link">Подробнее</a>

                                    </div><!-- .hover -->

                                </article>
                            </div><!-- .element -->

                            --%><div class="clear"></div>
                        </div><!-- .wrapper -->
                        <div class="hide-element" style="z-index: -1;"></div>
                    </div><!-- .main-wrapper -->
                </aside>
            </div><!-- .widget-area -->
        </div><!-- .sidebar-top-full -->
    </div><!-- .header-wrap -->
</div>
<%--<div class="main-area">
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
                                                    <p style="text-align: center;"><span style="color: #000000;"><b>«Желдор Ковка» давно и прочно обосновалась на рынке металлообработки</b></span>
                                                    </p>
                                                    <p style="text-align: justify;"><span
                                                            style="color: #000000;"><b>На сегодняшний день в нашей Компании&nbsp;</b><b>работают</b> <b>специалисты
 только высокого уровня, у нас вы можете заказать кованные изделия любой
 сложности. Мы занимаем заслуженное место среди конкурентов. Оказывая
широкий спектр услуг в области обработки металла, наши специалисты
внимательно следят за качеством выполненных работ . Наше предприятие
работает как с оптовыми заказами , так и с индивидуальными</b><b>).</b></span></p>

                                                </div>
                                            </div>
                                            <!-- vc_grid start -->
                                            <div class="vc_grid-container-wrapper vc_clearfix">
                                                <div class="vc_grid-container vc_clearfix wpb_content_element vc_media_grid"
                                                     data-initial-loading-animation="flash"
                                                     data-vc-grid-settings="{&quot;page_id&quot;:36,&quot;style&quot;:&quot;all&quot;,&quot;action&quot;:&quot;vc_get_vc_grid_data&quot;,&quot;shortcode_id&quot;:&quot;1490884727435-c2a6f33a-39b0-9&quot;,&quot;tag&quot;:&quot;vc_media_grid&quot;}"
                                                     data-vc-request="http://zheldor-kovka.ru/wp-admin/admin-ajax.php"
                                                     data-vc-post-id="36" data-vc-public-nonce="048529bc18">
                                                    <style type="text/css">
                                                        img.wp-smiley,
                                                        img.emoji {
                                                            display: inline !important;
                                                            border: none !important;
                                                            box-shadow: none !important;
                                                            height: 1em !important;
                                                            width: 1em !important;
                                                            margin: 0 .07em !important;
                                                            vertical-align: -0.1em !important;
                                                            background: none !important;
                                                            padding: 0 !important;
                                                        }
                                                    </style>
                                                    <div class="vc_grid vc_row vc_grid-gutter-35px vc_pageable-wrapper vc_hook_hover"
                                                         data-vc-pageable-content="true">
                                                        <div class="vc_pageable-slide-wrapper vc_clearfix"
                                                             data-vc-grid-content="true">
                                                            <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                <div class="vc_grid-item-mini vc_clearfix ">
                                                                    <div class="vc_gitem-animated-block ">
                                                                        <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                             style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/Рисунок1.jpg) !important;">
                                                                            <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/%D0%A0%D0%B8%D1%81%D1%83%D0%BD%D0%BE%D0%BA1.jpg"
                                                                               title="Собственное производство по Художественной ковке"
                                                                               data-rel="prettyPhoto[rel--1107119351]"
                                                                               data-vc-gitem-zone="prettyphotoLink"
                                                                               class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                            <img src="home_files/1.jpg"
                                                                                 class="vc_gitem-zone-img"
                                                                                 alt="Собственное производство по Художественной ковке">
                                                                            <div class="vc_gitem-zone-mini">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="vc_clearfix"></div>
                                                            </div>
                                                            <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                <div class="vc_grid-item-mini vc_clearfix ">
                                                                    <div class="vc_gitem-animated-block ">
                                                                        <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                             style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160203_161158-1024x614.jpg) !important;">
                                                                            <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160203_161158-1024x614.jpg"
                                                                               title="Собственное производство по Ковке"
                                                                               data-rel="prettyPhoto[rel--1107119351]"
                                                                               data-vc-gitem-zone="prettyphotoLink"
                                                                               class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                            <img src="home_files/20160203_161158-1024x614.jpg"
                                                                                 class="vc_gitem-zone-img"
                                                                                 alt="Собственное производство по Ковке">
                                                                            <div class="vc_gitem-zone-mini">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="vc_clearfix"></div>
                                                            </div>
                                                            <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                <div class="vc_grid-item-mini vc_clearfix">
                                                                    <div class="vc_gitem-animated-block ">
                                                                        <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                             style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160203_161708-1024x614.jpg) !important;">
                                                                            <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160203_161708-1024x614.jpg"
                                                                               title="Собственное производство по Ковке"
                                                                               data-rel="prettyPhoto[rel--1107119351]"
                                                                               data-vc-gitem-zone="prettyphotoLink"
                                                                               class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                            <img src="home_files/20160203_161708-1024x614.jpg"
                                                                                 class="vc_gitem-zone-img"
                                                                                 alt="Собственное производство по Ковке">
                                                                            <div class="vc_gitem-zone-mini">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="vc_clearfix"></div>
                                                            </div>
                                                            <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                <div class="vc_grid-item-mini vc_clearfix">
                                                                    <div class="vc_gitem-animated-block ">
                                                                        <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                             style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160212_165903-1024x614.jpg) !important;">
                                                                            <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/20160212_165903-1024x614.jpg"
                                                                               title="Собственное производство по Ковке"
                                                                               data-rel="prettyPhoto[rel--1107119351]"
                                                                               data-vc-gitem-zone="prettyphotoLink"
                                                                               class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                            <img src="home_files/20160212_165903-1024x614.jpg"
                                                                                 class="vc_gitem-zone-img"
                                                                                 alt="Собственное производство по Ковке">
                                                                            <div class="vc_gitem-zone-mini">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="vc_clearfix"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- vc_grid end -->

                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <h2 style="text-align: center;"><span
                                                            style="color: #000000;"><em><strong>Собственное производство в городе Железнодорожный Московской области</strong></em></span>
                                                    </h2>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="vc_tta-container" data-vc-action="collapse">
                                                <div class="vc_general vc_tta vc_tta-tabs vc_tta-color-grey vc_tta-style-flat vc_tta-shape-rounded vc_tta-spacing-1 vc_tta-tabs-position-top vc_tta-controls-align-left">
                                                    <div class="vc_tta-tabs-container">
                                                        <ul class="vc_tta-tabs-list">
                                                            <li class="vc_tta-tab vc_active" data-vc-tab=""><a
                                                                    href="#1483634986912-0aec43cc-1989"
                                                                    data-vc-tabs=""
                                                                    data-vc-container=".vc_tta"><span
                                                                    class="vc_tta-title-text">Собственное производство</span></a>
                                                            </li>
                                                            <li class="vc_tta-tab" data-vc-tab=""><a
                                                                    href="#1483280381846-60f6327d-a14e"
                                                                    data-vc-tabs=""
                                                                    data-vc-container=".vc_tta"><span
                                                                    class="vc_tta-title-text">Наши преимущества</span></a>
                                                            </li>
                                                            <li class="vc_tta-tab" data-vc-tab=""><a
                                                                    href="#1483280381898-357723a2-ffa3"
                                                                    data-vc-tabs=""
                                                                    data-vc-container=".vc_tta"><span
                                                                    class="vc_tta-title-text">Наши гарантии</span></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="vc_tta-panels-container">
                                                        <div class="vc_tta-panels">
                                                            <div class="vc_tta-panel vc_active"
                                                                 id="1483634986912-0aec43cc-1989"
                                                                 data-vc-content=".vc_tta-panel-body">
                                                                <div class="vc_tta-panel-heading"><h4
                                                                        class="vc_tta-panel-title"><a
                                                                        href="#1483634986912-0aec43cc-1989"
                                                                        data-vc-accordion=""
                                                                        data-vc-container=".vc_tta-container"><span
                                                                        class="vc_tta-title-text">Собственное производство</span></a>
                                                                </h4></div>
                                                                <div class="vc_tta-panel-body">
                                                                    <!-- vc_grid start -->
                                                                    <div class="vc_grid-container-wrapper vc_clearfix">
                                                                        <div class="vc_grid-container vc_clearfix wpb_content_element vc_media_grid"
                                                                             data-initial-loading-animation="flash"
                                                                             data-vc-grid-settings="{&quot;page_id&quot;:36,&quot;style&quot;:&quot;all&quot;,&quot;action&quot;:&quot;vc_get_vc_grid_data&quot;,&quot;shortcode_id&quot;:&quot;1490884727438-b6e05971-8b15-3&quot;,&quot;tag&quot;:&quot;vc_media_grid&quot;}"
                                                                             data-vc-request="http://zheldor-kovka.ru/wp-admin/admin-ajax.php"
                                                                             data-vc-post-id="36"
                                                                             data-vc-public-nonce="048529bc18">
                                                                            <style type="text/css">
                                                                                img.wp-smiley,
                                                                                img.emoji {
                                                                                    display: inline !important;
                                                                                    border: none !important;
                                                                                    box-shadow: none !important;
                                                                                    height: 1em !important;
                                                                                    width: 1em !important;
                                                                                    margin: 0 .07em !important;
                                                                                    vertical-align: -0.1em !important;
                                                                                    background: none !important;
                                                                                    padding: 0 !important;
                                                                                }
                                                                            </style>
                                                                            <div class="vc_grid vc_row vc_grid-gutter-5px vc_pageable-wrapper vc_hook_hover"
                                                                                 data-vc-pageable-content="true">
                                                                                <div class="vc_pageable-slide-wrapper vc_clearfix"
                                                                                     data-vc-grid-content="true">
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0218-1024x768.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0218-1024x768.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0218-1024x768.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0219-e1483634868213-768x1024.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0219-e1483634868213-768x1024.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0219-e1483634868213-768x1024.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0221-1024x768.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0221-1024x768.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0221-1024x768.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0217-1024x768.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0217-1024x768.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0217-1024x768.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0220-e1483635098173-768x1024.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0220-e1483635098173-768x1024.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0220-e1483635098173-768x1024.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0222-e1483635081238-768x1024.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0222-e1483635081238-768x1024.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0222-e1483635081238-768x1024.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0223-1024x768.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/IMG_0223-1024x768.jpg"
                                                                                                       title="Оборудование для художественной ковки"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/IMG_0223-1024x768.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Оборудование для художественной ковки">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                    <div class="vc_grid-item vc_clearfix vc_col-sm-3 vc_visible-item flash animated">
                                                                                        <div class="vc_grid-item-mini vc_clearfix ">
                                                                                            <div class="vc_gitem-animated-block ">
                                                                                                <div class="vc_gitem-zone vc_gitem-zone-a vc-gitem-zone-height-mode-auto vc-gitem-zone-height-mode-auto-1-1 vc_gitem-is-link"
                                                                                                     style="background-image: url(http://zheldor-kovka.ru/wp-content/uploads/2016/12/photo-3-1024x614.jpg) !important;">
                                                                                                    <a href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/photo-3-1024x614.jpg"
                                                                                                       title="Декоративные кованые элементы"
                                                                                                       data-rel="prettyPhoto[rel--1872618100]"
                                                                                                       data-vc-gitem-zone="prettyphotoLink"
                                                                                                       class="vc_gitem-link prettyphoto vc-zone-link vc-prettyphoto-link"></a>
                                                                                                    <img src="home_files/photo-3-1024x614.jpg"
                                                                                                         class="vc_gitem-zone-img"
                                                                                                         alt="Декоративные кованые элементы">
                                                                                                    <div class="vc_gitem-zone-mini">
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="vc_clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div><!-- vc_grid end -->
                                                                </div>
                                                            </div>
                                                            <div class="vc_tta-panel"
                                                                 id="1483280381846-60f6327d-a14e"
                                                                 data-vc-content=".vc_tta-panel-body">
                                                                <div class="vc_tta-panel-heading"><h4
                                                                        class="vc_tta-panel-title"><a
                                                                        href="#1483280381846-60f6327d-a14e"
                                                                        data-vc-accordion=""
                                                                        data-vc-container=".vc_tta-container"><span
                                                                        class="vc_tta-title-text">Наши преимущества</span></a>
                                                                </h4></div>
                                                                <div class="vc_tta-panel-body">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p><span style="color: #000000;">—<b>КАЧЕСТВО – Имея в своем распоряжении производственную базу,&nbsp;</b><b>оснащенную современным оборудованием , мы изготавливаем надежную продукцию , которая будет радовать вас на протяжении многих лет</b></span>
                                                                            </p>
                                                                            <p><span style="color: #000000;"><b>— АСОРТИМЕНТ – Для того чтобы
перечислить весь перечень продукции компании «ТЕХПРОМСТРОЙ»
потребуется&nbsp; слишком много времени .&nbsp; Поэтому проще сказать :
мы готовы&nbsp; воплотить в жизнь любой проект , вне зависимости от
уровня сложности</b></span></p>
                                                                            <p><span style="color: #000000;"><b>— ГАРАНТИИ – Мы ответственно
относимся к своей работе , поэтому тщательно соблюдаем заявленные сроки
исполнения заказа , а также предоставляем длительную гарантию на все
конструкции.&nbsp;</b><b>Полная материальная ответственность за действия наших сотрудников на объектах</b></span></p>
                                                                            <p><span style="color: #000000;"><b>— ЦЕНЫ – Это последний в перечне ,
но не последний по важности аргумент в пользу выбора «ТЕХПРОМСТРОЙ» . На
 протяжении всего времени существования на рынке мы ведем лояльную
клиентам ценовую политику по отношению к нашим клиентам, обеспечивающую
доступность нашей продукции.</b></span></p>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="vc_tta-panel"
                                                                 id="1483280381898-357723a2-ffa3"
                                                                 data-vc-content=".vc_tta-panel-body">
                                                                <div class="vc_tta-panel-heading"><h4
                                                                        class="vc_tta-panel-title"><a
                                                                        href="#1483280381898-357723a2-ffa3"
                                                                        data-vc-accordion=""
                                                                        data-vc-container=".vc_tta-container"><span
                                                                        class="vc_tta-title-text">Наши гарантии</span></a>
                                                                </h4></div>
                                                                <div class="vc_tta-panel-body">
                                                                    <div class="wpb_text_column wpb_content_element ">
                                                                        <div class="wpb_wrapper">
                                                                            <p style="text-align: center;"><span
                                                                                    style="color: #000000;"><b><i>Клиентам</i></b> —&nbsp; оперативность и высокое качество услуг.</span>
                                                                            </p>
                                                                            <p style="text-align: center;"><span
                                                                                    style="color: #000000;"><b><i>Партнерам</i></b> – надежность и ответственность.</span>
                                                                            </p>
                                                                            <p style="text-align: center;"><span
                                                                                    style="color: #000000;"><b><i>Собственникам</i></b> – прибыль.</span>
                                                                            </p>
                                                                            <p style="text-align: center;"><span
                                                                                    style="color: #000000;"><b><i>Сотрудникам</i></b> – уважение,&nbsp; финансовую стабильность и профессиональный рост.</span>
                                                                            </p>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
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
                        </div><!-- .entry-content -->
                    </article><!-- #post-## -->
                </div><!-- .content-container -->
                <div class="content-search">
                </div><!-- .content-search -->
            </div><!-- .content -->
            <div class="clear"></div>

        </div><!-- .site-content -->
    </div> <!-- .main-wrapper -->
</div>--%> <!-- .main-area -->