<%@ page import="com.kovka.common.data.lcp.Language" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="S" uri="/struts-tags" %>

<link rel="stylesheet" href="https://www.connecttotv.com/js/announcement/wallet/liMarquee/liMarquee.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<script type="text/javascript" src="https://www.connecttotv.com/js/announcement/wallet/liMarquee/jquery.liMarquee.js"></script>

<script type="text/javascript">
    $(document).ready(function () {

        var pathName  = window.location.pathname;
        if(pathName){
            pathName = pathName.replace(".htm","");
            pathName = pathName.replace("/","");
            $('#'+pathName+'').addClass('ubermenu-current-menu-item')
        }

        $(document).on("touchstart",function(e){
            var $clicked = $(e.target);
            if (!$clicked.parents().hasClass("ubermenu-nav")){
                hide_lang();
            }
        });
        var userLang = navigator.language || navigator.userLanguage;
        var l = userLang.split('-')[0];

        $(".ubermenu-has-submenu-drop").click(function () {
            $(this).addClass('ubermenu-active');
        });

        $('.str').liMarquee({
            width: 'auto',					//Sets width of the Marquee.
//            height: '44px',					//Sets height of the Marquee.
            direction: 'left',
            circular: true,
            scrollStop : false,
            hoverStop : true,
            dragAndDrop : false,
            startShow : true
        });

    });

    $(document).bind('click', function (e) {
        var $clicked = $(e.target);
        if (!$clicked.parents().hasClass("ubermenu-nav")){
            hide_lang();
        }
    });


    function select_lang(lang) {
        window.location = "locale.htm?mlang=" + lang;
    }
    function hide_lang() {
        $(".ubermenu-has-submenu-drop").removeClass('ubermenu-active');
    }

</script>

<header id="masthead" class="site-header" role="banner">

    <div class="top-menu original">
        <div id="sg-site-header" class="sg-site-header sticky-menu">
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

            <img src="<%=request.getContextPath()%>/img/guest/l5646.jpg" class="header-image" alt="" height="510" width="1600">

            <s:set var="about"   />
            <s:if test="%{#session.about == null}">
                <s:set var="about" value='%{loadAbout()}'/>
            </s:if>
            <s:else>
                <s:set var="about" value='#session.about'/>
            </s:else>

            <s:if test="%{#about != null}" >
                <div class="element-wrap">

                    <h2 class="site-description"><s:property value="%{#about.firstPhone}"/></h2>
                    <h2 class="site-description"><s:property value="%{#about.firstEmail}"/></h2>
                    <h2 class="str site-description">
                        &nbsp;&nbsp;<i class="fa fa-globe"></i><s:property value="#about.currentInfo.address"/><i class="fa fa-globe"></i>&nbsp;&nbsp;
                        &nbsp;&nbsp;<i class="fa fa-globe"></i><s:property value="#about.currentInfo.address"/><i class="fa fa-globe"></i>&nbsp;&nbsp;
                        &nbsp;&nbsp;<i class="fa fa-globe"></i><s:property value="#about.currentInfo.address"/><i class="fa fa-globe"></i>&nbsp;&nbsp;
                        &nbsp;&nbsp;<i class="fa fa-globe"></i><s:property value="#about.currentInfo.address"/><i class="fa fa-globe"></i>&nbsp;&nbsp;


                    </h2>
                </div>
            </s:if>

            <!-- .element-wrap -->

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
                            <li id="home" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-home ubermenu-page_item ubermenu-page-item-36 ubermenu-current_page_item ubermenu-item-51 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-target-with-icon ubermenu-item-layout-default ubermenu-item-layout-icon_left"
                                   href="home.htm" tabindex="0">
                                    <i class="ubermenu-icon fa fa-home"></i>
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.home">Главная</s:text></span></a></li>
                            <li id="services" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-146 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="services.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.services">Услуги</s:text></span>
                                </a>
                            </li>
                            <li id="how-we-work" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-145 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="how-we-work.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.how.we.work">Как мы работаем</s:text></span>
                                </a>
                            </li>
                            <li id="our-works" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-144 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="our-works.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.our.works">Наши работы</s:text></span>
                                </a>
                            </li>
                            <li id="prices" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-147 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-target-with-icon ubermenu-item-layout-default ubermenu-item-layout-icon_left"
                                   href="prices.htm" tabindex="0">
                                    <i class="ubermenu-icon fa fa-shopping-cart"></i>
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.price">Цены</s:text></span>
                                </a>
                            </li>
                            <li id="about" class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-has-children ubermenu-item-482 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="about.htm" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text"><s:text
                                            name="menu.about">О Нас</s:text></span>
                                </a>
                            </li>

                            <s:set var="lang" value="%{getToLang()}"/>
                            <li style="float: right;margin-right: 50px" id="menu-item-149"
                                class="ubermenu-has-submenu-drop ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-current-menu-item ubermenu-page_item ubermenu-page-item-135 ubermenu-current_page_item ubermenu-item-has-children ubermenu-item-146 ubermenu-item-level-0 ubermenu-column ubermenu-column-auto ubermenu-has-submenu-flyout">
                                <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                   href="javascript:void(0)" tabindex="0">
                                    <span class="ubermenu-target-title ubermenu-target-text">
                                        <s:property value="getToLang().getTitle()"/>
                                    </span>
                                </a>
                                <ul class="ubermenu-submenu ubermenu-submenu-id-146 ubermenu-submenu-type-flyout ubermenu-submenu-drop ubermenu-submenu-align-left_edge_item">

                                    <s:iterator value="%{getLanguages()}" var="language">
                                    <li class="ubermenu-item ubermenu-item-type-post_type ubermenu-item-object-page ubermenu-item-109 ubermenu-item-auto ubermenu-item-normal ubermenu-item-level-1">
                                        <a class="ubermenu-target ubermenu-item-layout-default ubermenu-item-layout-text_only"
                                                <s:if test="%{#lang.value == #language.value}"> class="current_lang" onclick="hide_lang();return false;"
                                                    style=" background-color: #c9c7c7; "
                                                </s:if>
                                                <s:else> onclick="select_lang('<s:property value="#language.key"/>');return false;"</s:else>
                                        >
                                            <span class="ubermenu-target-title ubermenu-target-text">
                                             <s:property value="#language.title"/>
                                            </span>
                                        </a>
                                    </li>
                                    </s:iterator>
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