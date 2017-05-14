<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!--[if IE 7]>
<html class="ie ie7" lang="ru-RU">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" lang="ru-RU">
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html lang="ru-RU" ng-app="kovkaApp"><!--<![endif]-->
<head>
    <meta name="viewport" content="width=device-width">
    <title><s:text name="title.home">Художественная ковка</s:text></title>

    <!-- All in One SEO Pack 2.3.11.1 by Michael Torbert of Semper Fi Web Design[377,593] -->
    <meta name="description"
          content="Художественная ковка, холодная ковка, декоративная ковка в Железнодорожном, Балашихе. Собственное производство, изготовление для Москвы и Московской области">

    <link rel="canonical" href="http://nmgkovka.ru/">
    <!-- /all in one seo pack -->
    <link rel="alternate" type="application/rss+xml" title="Художественная ковка » Лента"
          href="http://nmgkovka.ru/feed/">
    <link rel="alternate" type="application/rss+xml" title="Художественная ковка » Лента комментариев"
          href="http://nmgkovka.ru/comments/feed/">
    <link rel="stylesheet" id="contact-form-7-css" href="<%=request.getContextPath()%>/css/guest/styles.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="dcjq-mega-menu-css" href="<%=request.getContextPath()%>/css/guest/dcjq-mega-menu.css"
          type="text/css" media="all">
    <link href="<%=request.getContextPath()%>/libs/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" id="stainedglass-fonts-css" href="<%=request.getContextPath()%>/css/guest/css.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-style-css" href="<%=request.getContextPath()%>/css/guest/style.css"
          type="text/css" media="all">
    <!--[if lt IE 9]>
    <link rel='stylesheet' id='stainedglass-ie-css'
          href='<%=request.getContextPath()%>/css/guest/ie.css?ver=20141210' type='text/css'
          media='all'/>
    <![endif]-->
    <link rel="stylesheet" id="stainedglass-page-css" href="<%=request.getContextPath()%>/css/guest/page.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-image-css" href="<%=request.getContextPath()%>/css/guest/image.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="js_composer_front-css" href="<%=request.getContextPath()%>/css/guest/js_composer.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-css" href="<%=request.getContextPath()%>/css/guest/ubermenu.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-black-white-2-css"
          href="<%=request.getContextPath()%>/css/guest/blackwhite2.css" type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-font-awesome-css"
          href="<%=request.getContextPath()%>/css/guest/font-awesome_002.css" type="text/css"
          media="all">

    <%--<link rel="stylesheet" id="contact-form-7-css" href="<%=request.getContextPath()%>/js/guest/lib/colorbox.css"--%>
          <%--type="text/css" media="all">--%>

    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/jquery/jquery-2.2.4.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/bootstrap.js"></script>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/slick-1.5.0.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/jquery.colorbox-min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/script.js"></script>--%>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular.js"></script>

    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.dcjqaccordion.2.9.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.dcmegamenu.1.3.4.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.form.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.hoverIntent.minified.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/ubermenu.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/navigation.js"></script>--%>


    <script type="text/javascript"
            src='<%=request.getContextPath()%>/static/generated/locale/i18n_<s:property value="toLang.key"/>.js'></script>
    <s:if test="%{toLang.id != toLang.default.id}">
        <script type="text/javascript"
                src='<%=request.getContextPath()%>/static/generated/locale/i18n_<s:property value="toLang.default.key"/>.js'></script>
    </s:if>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/general/main-general.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/ng-controller.js"></script>

    <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/guest/logo-32.jpg">

    <style type="text/css">

        .wide .column-1 .element.effect-17 .entry-title,
        .wide .column-1 .element.effect-18 .entry-title,
        .site-title a {
            color: #333333;
        }

        .site-content {
            -ms-flex-order: 1;
            -webkit-order: 1;
            order: 1;
        }

        .sidebar-1 {
            -ms-flex-order: 2;
            -webkit-order: 2;
            order: 2;
        }

        .sidebar-2 {
            -ms-flex-order: 3;
            -webkit-order: 3;
            order: 3;
        }

        .sidebar-1 {
            display: none;
        }

        @media screen and (min-width: 680px) {
            .site .content {
                font-size: 18px;
            }

            .site {
                font-family: 'Ubuntu', sans-serif;
            }

            .site h1,
            .site h2,
            .site h3,
            .site h4,
            .site h5,
            .site h6 {
                font-family: 'Aladin', sans-serif;
            }

        }

        /* widget buttons */
        .widget.stainedglass_widget_button {
            background: rgba(255, 255, 255, 0.8);
        }

        .widget.stainedglass_widget_button .stainedglass-link {
            background: #fff;
        }

        .widget.stainedglass_widget_button a {
            color: #000;
        }

        .widget.stainedglass_widget_button a:hover {
            color: #000;
        }

        .widget.stainedglass_widget_button .stainedglass-link {
            border-color: #cccccc;
        }

        .widget.stainedglass_widget_button .stainedglass-link:hover {
            box-shadow: 0 0 4px 4px #cccccc;
        }

        .element.effect-18 .hover,
        .element.effect-18 .entry-title,
        .element.effect-17 .hover,
        .element.effect-17 .entry-title,
        .site-title,
        .element-wrap {
            background: rgba(244, 244, 244, 0.6);
        }

        .widget.stainedglass_recent_posts .content article footer a,
        .content-container article .entry-content a,
        .comments-link a,
        .featured-post,
        .logged-in-as a,
        .site .edit-link,
        .jetpack-widget-tag-nav,
        .jetpack-widget-nav,
        .content footer a {
            color: #1e73be;
        }

        .entry-header .entry-title a {
            color: #1e73be;
        }

        a:hover,
        .widget.stainedglass_recent_posts .content article footer a:hover,
        .content-container .entry-content a:hover,
        .comments-link a:hover,
        .entry-meta a:hover,
        .site-title a:hover,
        .site .author.vcard a:hover,
        .entry-header .entry-title a:hover,
        .site .widget .entry-meta a:hover,
        .category-list a:hover {
            color: #e28000;
        }

        .wide .column-1 .element.effect-17 p,
        .wide .column-1 .element.effect-18 p,
        .site-description {
            color: #020202;
        }

        entry-header .entry-title a,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            color: #232323;
        }

        .background-fixed {
            bckground: repeat top center fixed;
            background-image: url(http://none);
        }

        .site-title h1 a {
            color: #333333;

        }

        .site {
            max-width: 1600px;
        }

        .main-wrapper {
            max-width: 1600px;
        }

        .site .wide .widget .widget-area .main-wrapper.no-sidebar,
        .main-wrapper.no-sidebar {
            max-width: 1600px !important;
        }

        .sidebar-before-footer,
        .header-wrap {
            max-width: 1600px;
        }

        @media screen and (min-width: 1600px) {
            .image-wrapper {
                max-width: 1600px;
            }
        }

        .sidebar-footer .widget-area,
        .wide .widget > input,
        .wide .widget > form,
        .sidebar-before-footer .widget > div,
        .sidebar-before-footer .widget-area .widget > ul,
        .sidebar-top-full .widget-area .widget > div,
        .sidebar-top-full .widget-area .widget > ul {
            max-width: 1600px;
            margin-left: auto;
            margin-right: auto;
        }

        /* set width of column in px */
        @media screen and (min-width: 960px) {

            .content {
                -ms-flex-order: 1;
                -webkit-order: 1;
                order: 1;
            }

            .sidebar-1 {
                -ms-flex-order: 2;
                -webkit-order: 2;
                order: 2;
            }

            .sidebar-2 {
                -ms-flex-order: 3;
                -webkit-order: 3;
                order: 3;
            }

            .main-wrapper {
                -webkit-flex-flow: nowrap;
                -ms-flex-flow: nowrap;
                flex-flow: nowrap;
            }

            .sidebar-1,
            .sidebar-2 {
                display: block;
            }

            .sidebar-1 .column {
                padding: 0 20px 0 0;
            }

            .sidebar-2 .column {
                padding: 0 0 0 20px;
            }

            .site-content {
                -ms-flex-order: 2;
                -webkit-order: 2;
                order: 2;
            }

            .sidebar-1 {
                -ms-flex-order: 1;
                -webkit-order: 1;
                order: 1;
            }

            .sidebar-2 {
                -ms-flex-order: 3;
                -webkit-order: 3;
                order: 3;
            }

            .two-sidebars .sidebar-1 {
                width: 30%;
            }

            .two-sidebars .sidebar-2 {
                width: 30%;
            }

            .two-sidebars .site-content {
                width: 40%;
            }

            .left-sidebar .sidebar-1 {
                width: 20%;
            }

            .left-sidebar .site-content {
                width: 80%;
            }

            .right-sidebar .sidebar-2 {
                width: 30%;
            }

            .right-sidebar .site-content {
                width: 70%;
            }

        }

    </style>
    <!--[if lte IE 9]>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/vc_lte_ie9.min.css" media="screen">
    <![endif]--><!--[if IE  8]>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/vc-ie8.min.css" media="screen">
    <![endif]-->
    <style type="text/css" id="custom-background-css">
        body.custom-background {
            background-image: url("<%=request.getContextPath()%>/img/guest/bg.jpg");
            background-position: center center;
            background-size: auto;
            background-repeat: repeat;
            background-attachment: fixed;
        }
    </style>
    <link rel="icon" href="<%=request.getContextPath()%>/img/guest/logo-16.jpg" sizes="32x32">
    <link rel="icon" href="<%=request.getContextPath()%>/img/guest/logo-32.jpg" sizes="192x192">
    <link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/img/guest/logo-32.jpg">
    <meta name="msapplication-TileImage" content="<%=request.getContextPath()%>/img/guest/logo-32.jpg">
    <noscript>
        <style type="text/css"> .wpb_animate_when_almost_visible {
            opacity: 1;
        }</style>
    </noscript>
</head>
<body ng-controller="homeCtrl"
      class="home page-template-default page page-id-36 custom-background header-text-is-on google-fonts-on logo-is-on wpb-js-composer js-comp-ver-4.11.2 vc_responsive">
<div id="page" class="hfeed site">

    <tiles:insertAttribute name="header-area"/>
    <tiles:insertAttribute name="content"/>
    <tiles:insertAttribute name="footer"/>
    <tiles:insertAttribute name="banner"/>
    <input id="current_lang" type="hidden" value='<s:property value="toLang.key"/>'>
    <div class="loader" ng-show="loadergif"></div>
</div>
</body>

<script type="text/javascript">

    $(document).ready(function () {
        // No right click

//        $(".prettyphoto").colorbox({rel: 'prettyphoto'});

    });

</script>

</html>