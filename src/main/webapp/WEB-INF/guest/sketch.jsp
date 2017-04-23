<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/model/Box.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/model/BoxProduct.js"></script>

</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <box-selected-item id="box-selected-item"
                                   class="content-container"
                                   selected-id="<s:property value="id"/>"
                                   box-url='/load-sketch.htm'
                                   page-type="sketches" content="selectedPage" box-type="selected_page">

                </box-selected-item><!-- .content-container -->

            </div><!-- .content -->

            <div class="clear"></div>

        </div><!-- .site-content -->

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
                            <%--<ul id="menu-menyu-sprava" class="menu" boxes box-url='/load-sketches.htm' page-type="sketches"
                                       box-type="link"  >&lt;%&ndash; &ndash;%&gt;
                                    <li ng-repeat="page in sketches" content="page"
                                        ng-id="menu-item-{{$index}}"
                                        class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-89 current_page_item menu-item-199">
                                        <a href="http://zheldor-kovka.ru/kovanye-vorota/">{{page.title}}</a>
                                    </li>
                            </ul>--%>

                                <ul id="menu-menyu-sprava" class="menu"><li id="menu-item-199" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-89 current_page_item menu-item-199"><a href="http://zheldor-kovka.ru/kovanye-vorota/">Кованые ворота (Эскизы)</a></li>
                                    <li id="menu-item-198" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-198"><a href="http://zheldor-kovka.ru/kovanye-zabory-i-ograzhdeniya/">Кованые заборы и ограждения (Эскизы)</a></li>
                                    <li id="menu-item-811" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-811"><a href="http://zheldor-kovka.ru/kovanye-okonnye-reshetki/">Кованые оконные решетки (Эскизы)</a></li>
                                    <li id="menu-item-242" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-242"><a href="http://zheldor-kovka.ru/kovanye-perila-dlya-lestnic/">Кованые перила для лестниц (Эскизы)</a></li>
                                    <li id="menu-item-253" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-253"><a href="http://zheldor-kovka.ru/kovanaya-mebel-krovati-stulya-stoly/">Кованая мебель, кровати (Эскизы)</a></li>
                                    <li id="menu-item-226" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-226"><a href="http://zheldor-kovka.ru/kovanye-kozyrki-i-navesy/">Кованые козырьки и навесы (Эскизы)</a></li>
                                    <li id="menu-item-227" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-227"><a href="http://zheldor-kovka.ru/kovanye-kalitki-i-dveri/">Кованые калитки и двери (Эскизы)</a></li>
                                    <li id="menu-item-267" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-267"><a href="http://zheldor-kovka.ru/kovanye-balkony/">Кованые балконы (Эскизы)</a></li>
                                    <li id="menu-item-276" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-276"><a href="http://zheldor-kovka.ru/kovanye-besedki/">Кованые беседки, скамейки, мангалы</a></li>
                                    <li id="menu-item-727" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-727"><a href="http://zheldor-kovka.ru/kovanye-lyustry-fonari-svetilniki/">Кованые люстры, фонари, светильники</a></li>
                                    <li id="menu-item-1384" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1384"><a href="http://zheldor-kovka.ru/kovanye-mostiki/">Кованые мостики</a></li>
                                    <li id="menu-item-1362" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1362"><a href="http://zheldor-kovka.ru/ritualnaya-kovka/">Ритуальная ковка</a></li>
                                    <li id="menu-item-1373" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1373"><a href="http://zheldor-kovka.ru/kovanye-izdeliya-v-nalichii/">Кованые изделия В НАЛИЧИИ!</a></li>
                                </ul>
                        </div>
                    </aside>
                    <aside id="search-3" class="widget widget_search">
                        <form role="search" method="get" class="search-form" action="http://zheldor-kovka.ru/">
                            <label>
                                <span class="screen-reader-text">Найти:</span>
                                <input class="search-field" placeholder="Поиск…" name="s" type="search">
                            </label>
                            <input class="search-submit" value="Поиск" type="submit">
                        </form>
                    </aside>
                    <aside id="text-21" class="widget widget_text">
                        <div class="textwidget">
                            <center><a class="maxbutton-1 maxbutton maxbutton-rasschitajte-stoimost"
                                       href="http://zheldor-kovka.ru/obratnaya-svyaz/"><span class="mb-text">Заказать изделие</span></a>
                            </center>
                        </div>
                    </aside>
                    <aside id="stainedglass_items_category_widget-3" class="widget stainedglass_items_category"><h3
                            class="widget-title">Полезные статьи</h3>
                        <div class="main-wrapper-image " style="padding:20px 0% 20px 0%">

                            <div class="wrapper-image column-1 all">


                                <div class="element effect-1">
                                    <article>


                                        <img class="image-item" src="kovanye-vorota_files/10-400x400.jpg"
                                             alt="Кованые лестницы и перила">


                                        <div class="hover">

                                            <header>

                                                <h2 class="entry-title"><a
                                                        href="http://zheldor-kovka.ru/kovanye-lestnicy-i-perila/"
                                                        rel="bookmark">Кованые лестницы и перила</a></h2>
                                            </header><!-- header -->

                                            <p>При проектировании и постройке будущего дома особое внимание
                                                уделяется его интерьеру. Он в наибольшей степени отражает фантазию
                                                владельца и его чувство вкуса. Если в постройке больше, чем один
                                                [...]</p>


                                            <a href="http://zheldor-kovka.ru/kovanye-lestnicy-i-perila/"
                                               class="link" rel="bookmark">Больше информации</a>


                                        </div><!-- .hover -->

                                    </article>
                                </div><!-- .element -->


                                <div class="element effect-1">
                                    <article>


                                        <img class="image-item"
                                             src="kovanye-vorota_files/metall-balyasini-400x266.jpg"
                                             alt="Балясины из различных материалов в интерьере помещения">


                                        <div class="hover">

                                            <header>

                                                <h2 class="entry-title"><a
                                                        href="http://zheldor-kovka.ru/balyasiny-iz-razlichnyx-materialov-v-interere-pomeshheniya/"
                                                        rel="bookmark">Балясины из различных материалов в интерьере
                                                    помещения</a></h2>
                                            </header><!-- header -->

                                            <p>Балясины – это специальные колонны, которые поддерживают
                                                перила. Данная деталь интерьера встречается не в каждом доме ввиду
                                                нескольких особенностей: 1. Обязательное наличие балкона или
                                                лестницы.
                                                [...]</p>


                                            <a href="http://zheldor-kovka.ru/balyasiny-iz-razlichnyx-materialov-v-interere-pomeshheniya/"
                                               class="link" rel="bookmark">Больше информации</a>


                                        </div><!-- .hover -->

                                    </article>
                                </div><!-- .element -->


                                <div class="element effect-1">
                                    <article>


                                        <img class="image-item" src="kovanye-vorota_files/------9-400x351.jpg"
                                             alt="Выбор лестницы для частного дома: на что обратить внимание перед покупкой?">


                                        <div class="hover">

                                            <header>

                                                <h2 class="entry-title"><a
                                                        href="http://zheldor-kovka.ru/vybor-lestnicy-dlya-chastnogo-doma-na-chto-obratit-vnimanie-pered-pokupkoj/"
                                                        rel="bookmark">Выбор лестницы для частного дома: на что
                                                    обратить внимание перед покупкой?</a></h2>
                                            </header><!-- header -->

                                            <p>Лестница является одним из главнейших конструкционных
                                                элементов строения домов, имеющих два или три этажа. Благодаря ей
                                                все
                                                члены семьи смогут комфортно и безопасно перемещаться по всему дому.
                                                [...]</p>


                                            <a href="http://zheldor-kovka.ru/vybor-lestnicy-dlya-chastnogo-doma-na-chto-obratit-vnimanie-pered-pokupkoj/"
                                               class="link" rel="bookmark">Больше информации</a>


                                        </div><!-- .hover -->

                                    </article>
                                </div><!-- .element -->

                            </div><!-- .wrapper -->
                            <div class="hide-element" style="z-index: -1;"></div>
                        </div><!-- .main-wrapper -->
                    </aside>
                </div><!-- .widget-area -->
            </div><!-- .column -->
        </div><!-- .sidebar-2 -->
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->