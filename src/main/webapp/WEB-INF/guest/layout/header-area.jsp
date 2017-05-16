<%@ page import="com.kovka.common.data.lcp.Language" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%--<script type="text/javascript">
    jQuery(document).ready(function ($) {
        jQuery('#dc_jqmegamenu_widget-2-item .menu').dcMegaMenu({
            rowItems: 1,
            subMenuWidth: '',
            speed: 0,
            effect: 'fade',
            event: 'hover'
        });
    });
</script>

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        jQuery('#dc_jqmegamenu_widget-14-item .menu').dcMegaMenu({
            subMenuWidth: '',
            speed: '',
            effect: 'fade',
            event: 'hover'
        });
    });
</script>

<script type="text/javascript">
    jQuery(document).ready(function ($) {
        jQuery('#dc_jqaccordion_widget-3-item .menu').dcAccordion({
            eventType: 'click',
            hoverDelay: 0,
            menuClose: false,
            autoClose: true,
            saveState: false,
            autoExpand: false,
            classExpand: 'current-menu-item',
            classDisable: '',
            showCount: false,
            disableLink: false,
            cookie: 'dc_jqaccordion_widget-3',
            speed: 'normal'
        });
    });
</script>--%>

<script type="text/javascript">
    $(document).ready(function(){
        $("area[rel^='prettyPhoto']").prettyPhoto();

        $("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});

    });
</script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/js/guest/lib/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<script src="<%=request.getContextPath()%>/js/guest/lib/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>


<%--<link rel="stylesheet" href="<%=request.getContextPath()%>/libs/js/light_box_photo_gallery/lightbox-2.6.min.css" media="screen"/>--%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/libs/css/light_box_photo_gallery/style.css" media="screen"/>
<%--<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/light_box_photo_gallery/lightbox-2.6.min.js"></script>--%>

<header id="masthead" class="site-header" role="banner">

    <div class="top-menu original">
        <div id="sg-site-header" class="sg-site-header sticky-menu">
            <%--<div class="logo-block">
                <a class="logo-section" href="http://zheldor-kovka.ru/" title="Художественная ковка" rel="home">
                    <img height="128px" width="128px" src="<%=request.getContextPath()%>/img/guest/logo-32.jpg"
                         class="logo" alt="Художественная ковка">
                </a><!-- .logo-section -->
            </div><!--%><!-- .logo-block -->

            <div class="menu-top">
                <!-- First Top Menu -->
                <div class="nav-container top-1-navigation">
                    <div class="clear"></div>
                </div><!-- .top-1-navigation .nav-container -->

                <!-- Second Top Menu -->
            </div><!-- .menu-top  -->
        </div><!-- .sg-site-header -->
    </div>
    <div class="top-menu cloned on-sceen"
         style="position: fixed; top: 0px; margin-left: 0px; z-index: 500; display: block; left: 151.5px; width: 1600px;">
        <div id="sg-site-header" class="sg-site-header sticky-menu">
            <%--<div class="logo-block">
                <a class="logo-section" href="http://zheldor-kovka.ru/" title="Художественная ковка" rel="home">
                    <img height="128px" width="128px" src="<%=request.getContextPath()%>/img/guest/logo-32.jpg"
                         class="logo" alt="Художественная ковка">
                </a><!-- .logo-section -->
            </div>--%><!-- .logo-block -->

            <div class="menu-top">
                <!-- First Top Menu -->
                <div class="nav-container top-1-navigation">
                    <div class="clear"></div>
                </div><!-- .top-1-navigation .nav-container -->

                <!-- Second Top Menu -->
            </div><!-- .menu-top  -->
        </div><!-- .sg-site-header -->
    </div><!-- .top-menu -->

    <!-- Banner -->


    <div class="image-container">
        <div class="image-wrapper">

            <a href="#">
                <img src="<%=request.getContextPath()%>/img/guest/l5646.jpg" class="header-image" alt=""
                     height="510" width="1600">
            </a>

            <div class="element-wrap">

                <%--<h1 class="site-title"><a href="#" rel="home">Художественная ковка</a></h1>--%>
                <!-- Dscription -->

                <h2 class="site-description"> 8 (495) 642-40-66</h2>
                <h2 class="site-description">   kovka@zheldor-kovka.ru</h2>
                <h2 class="site-description">
                    109390 г.Москва, ул. 1-я Текстильщиков д. 12/9 офис 2
                    <i class="fa fa-globe"></i>
                </h2>

            </div><!-- .element-wrap -->

        </div>
    </div>

</header>
<div class="sg-header-area">
    <div class="header-wrap">


        <div id="sidebar-1" class="sidebar-top-full wide">
            <div class="widget-area">

                <aside id="ubermenu_navigation_widget-5" class="widget ubermenu_navigation_widget-class">
                    <!-- UberMenu [Configuration:main] [Theme Loc:] [Integration:api] -->
                    <span class="ubermenu-responsive-toggle ubermenu-responsive-toggle-main ubermenu-skin-black-white-2 ubermenu-loc- ubermenu-responsive-toggle-content-align-center ubermenu-responsive-toggle-align-full "
                          data-ubermenu-target="ubermenu-main-2"><i class="fa fa-bars"></i>Развернуть МЕНЮ</span>
                    <nav id="ubermenu-main-2"
                         class="ubermenu ubermenu-main ubermenu-menu-2 ubermenu-responsive ubermenu-responsive-single-column ubermenu-responsive-default ubermenu-responsive-collapse ubermenu-horizontal ubermenu-transition-shift ubermenu-trigger-hover_intent ubermenu-skin-black-white-2 ubermenu-has-border ubermenu-bar-align-full ubermenu-items-align-center ubermenu-bound ubermenu-disable-submenu-scroll ubermenu-sub-indicators ubermenu-retractors-responsive ubermenu-notouch">
                        <ul id="ubermenu-nav-main-2" class="ubermenu-nav">
                            <li id="menu-item-51"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-home ubermenu-current-menu-item ubermenu-page_item ubermenu-page-item-36 ubermenu-current_page_item ubermenu-item-51 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-target-with-icon ubermenu-item-layout-default ubermenu-item-layout-icon_left"
                                   href="home.htm" tabindex="0">
                                    <i class="ubermenu-icon fa fa-home"></i>
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.home">Главная</s:text></span></a></li>
                            <li id="menu-item-146"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-146 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="services.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.services">Услуги</s:text></span>
                                </a>
                            </li>
                            <li id="menu-item-145"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-145 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="how-we-work.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.how.we.work">Как мы работаем</s:text></span>
                                </a>
                            </li>
                            <li id="menu-item-144"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-144 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="our-works.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.our.works">Наши работы</s:text></span>
                                </a>
                            </li>
                            <li id="menu-item-147"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-147 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-target-with-icon ubermenu-item-layout-default ubermenu-item-layout-icon_left"
                                   href="prices.htm" tabindex="0">
                                    <i class="ubermenu-icon fa fa-shopping-cart"></i>
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.price">Цены</s:text></span>
                                </a>
                            </li>
                            <li id="menu-item-482"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-482 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="about.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.about">О Нас</s:text></span>
                                </a>
                            </li>


                            <li style="float: right;margin-right: 50px" id="menu-item-149"
                                class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-current-menu-item ubermenu-page_item ubermenu-page-item-135 ubermenu-current_page_item ubermenu-item-has-children ubermenu-item-146 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-drop ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="#" tabindex="0"><span
                                        class="ubermenu-target-title ubermenu-target-text"><s:property
                                        value="getToLang().getTitle()"/></span></a>
                                <ul class="ubermenu-submenu ubermenu-submenu-id-146 ubermenu-submenu-type-flyout ubermenu-submenu-drop ubermenu-submenu-align-left_edge_item">

                                    <%for (Language language : Language.values()) {%>
                                    <li class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-109 ubermenu-item-auto ubermenu-item-normal ubermenu-item-level-1">
                                        <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                           href="#">
                                            <span class="ubermenu-target-title ubermenu-target-text">
                                                <%=language.getTitle()%></span>
                                        </a>
                                    </li>
                                    <%}%>
                                </ul>
                            </li>


                        </ul>
                    </nav>
                    <!-- End UberMenu -->
                </aside>
                <aside id="text-20" class="widget widget_text">
                    <h3 class="widget-title"><s:text name="header.banner"></s:text></h3>
                    <div class="textwidget">
                        <center><input value='<s:text name="header.promotions">Специальные АКЦИИ</s:text>'
                                       type="button"></center>
                    </div>
                </aside>