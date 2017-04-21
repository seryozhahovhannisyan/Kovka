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
<html lang="ru-RU" ng-app="tourAgencyApp"><!--<![endif]-->
<head>
    <%--<meta http-equiv="content-type" content="text/html; charset=UTF-8">--%>
    <%--<meta charset="UTF-8">--%>
    <meta name="viewport" content="width=device-width">
    <link rel="pingback" href="http://zheldor-kovka.ru/xmlrpc.php">
    <title>Художественная (холодная) ковка в Железнодорожном, Балашихе</title>

    <!-- All in One SEO Pack 2.3.11.1 by Michael Torbert of Semper Fi Web Design[377,593] -->
    <meta name="description"
          content="Художественная ковка, холодная ковка, декоративная ковка в Железнодорожном, Балашихе. Собственное производство, изготовление для Москвы и Московской области">

    <link rel="canonical" href="http://zheldor-kovka.ru/">
    <!-- /all in one seo pack -->
    <link rel="dns-prefetch" href="http://maps.googleapis.com/">
    <link rel="dns-prefetch" href="http://fonts.googleapis.com/">
    <link rel="dns-prefetch" href="http://s.w.org/">
    <link rel="alternate" type="application/rss+xml" title="Художественная ковка » Лента"
          href="http://zheldor-kovka.ru/feed/">
    <link rel="alternate" type="application/rss+xml" title="Художественная ковка » Лента комментариев"
          href="http://zheldor-kovka.ru/comments/feed/">

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
    <link rel="stylesheet" id="contact-form-7-css" href="<%=request.getContextPath()%>/mock/s_files/styles.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="dcjq-mega-menu-css" href="<%=request.getContextPath()%>/mock/s_files/dcjq-mega-menu.css"
          type="text/css" media="all">
    <link href="<%=request.getContextPath()%>/libs/css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" id="stainedglass-genericons-css"
          href="<%=request.getContextPath()%>/mock/s_files/genericons.css" type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-fonts-css" href="<%=request.getContextPath()%>/mock/s_files/css.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-style-css" href="<%=request.getContextPath()%>/mock/s_files/style.css"
          type="text/css" media="all">
    <!--[if lt IE 9]>
    <link rel='stylesheet' id='stainedglass-ie-css'
          href='http://zheldor-kovka.ru/wp-content/themes/stained-glass/css/ie.css?ver=20141210' type='text/css'
          media='all'/>
    <![endif]-->
    <link rel="stylesheet" id="stainedglass-page-css" href="<%=request.getContextPath()%>/mock/s_files/page.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-image-css" href="<%=request.getContextPath()%>/mock/s_files/image.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="stainedglass-button-css" href="<%=request.getContextPath()%>/mock/s_files/button.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="tablepress-default-css" href="<%=request.getContextPath()%>/mock/s_files/default.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="js_composer_front-css" href="<%=request.getContextPath()%>/mock/s_files/js_composer.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-css" href="<%=request.getContextPath()%>/mock/s_files/ubermenu.css"
          type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-black-white-2-css"
          href="<%=request.getContextPath()%>/mock/s_files/blackwhite2.css" type="text/css" media="all">
    <link rel="stylesheet" id="ubermenu-font-awesome-css"
          href="<%=request.getContextPath()%>/mock/s_files/font-awesome_002.css" type="text/css"
          media="all">


    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/jquery/jquery-2.2.4.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/bootstrap.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/slick-1.5.0.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/lib/script.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular.js"></script>

    <script type="text/javascript"
            src='<%=request.getContextPath()%>/static/generated/locale/i18n_<s:property value="toLang.value"/>.js'></script>
    <s:if test="%{toLang.id != toLang.default.id}">
        <script type="text/javascript"
                src='<%=request.getContextPath()%>/static/generated/locale/i18n_<s:property value="toLang.default.value"/>.js'></script>
    </s:if>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/ng-controller.js"></script>

    <script type="text/javascript">

        $(document).ready(function () {
            // No right click
            $('img').bind('contextmenu', function (e) {
                return false;
            });
        });

        function doModal(identifier) {
            var id = $(identifier).data('id');
            $("#post_id").val(id);
            $('#hidCaptchaId').val('<%=session.getId()%>');
            $(".booking-modal").modal();
            booking_default_date();
        }

        function closeModal() {
            $("#post_id").val("");
            $(".booking-modal").modal('hide');
        }

        function book_button_target(identifier, type) {
            //onmouseover
            if (type == 1) {
                if ($(identifier).hasClass('blue')) {
                    $(identifier).removeClass('blue');
                    $(identifier).addClass('red');
                }
            } else if (type == 2) {
                //onmouseout
                if ($(identifier).hasClass('red')) {
                    $(identifier).removeClass('red');
                    $(identifier).addClass('blue');
                }
            }
        }

        function more_info_button_target(identifier, type) {
            //onmouseover
            if (type == 1) {
                $(identifier).css("background", " none repeat scroll 0 0 red");
            } else if (type == 2) {
                //onmouseout
                $(identifier).css("background", " none repeat scroll 0 0 #84a5b1");
            }
        }

        function more_info_country(target) {
            var redirect = $(target).attr("data-redirect");
            window.location = redirect;
        }

    </script>
    <link rel="https://api.w.org/" href="http://zheldor-kovka.ru/wp-json/">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://zheldor-kovka.ru/xmlrpc.php?rsd">
    <link rel="wlwmanifest" type="application/wlwmanifest+xml"
          href="http://zheldor-kovka.ru/wp-includes/wlwmanifest.xml">
    <meta name="generator" content="WordPress 4.7.3">
    <link rel="shortlink" href="http://zheldor-kovka.ru/">
    <link rel="alternate" type="application/json+oembed"
          href="http://zheldor-kovka.ru/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fzheldor-kovka.ru%2F">
    <link rel="alternate" type="text/xml+oembed"
          href="http://zheldor-kovka.ru/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fzheldor-kovka.ru%2F&amp;format=xml">
    <style id="ubermenu-custom-generated-css">
        /** UberMenu Custom Menu Styles (Customizer) **/
        /* main */
        .ubermenu.ubermenu-main:not(.ubermenu-responsive-collapse) {
            max-height: 600px;
        }

        .ubermenu-main .ubermenu-item-level-0 > .ubermenu-target {
            font-size: 14px;
            color: #ffffff;
        }

        .ubermenu.ubermenu-main .ubermenu-item-level-0:hover > .ubermenu-target, .ubermenu-main .ubermenu-item-level-0.ubermenu-active > .ubermenu-target {
            color: #ff3a3a;
        }

        .ubermenu.ubermenu-main .ubermenu-item-level-0 {
            margin: 5px;
        }

        .ubermenu-main .ubermenu-submenu.ubermenu-submenu-drop {
            background-color: #ffffff;
            border: 1px solid #0a0a0a;
        }

        .ubermenu-main .ubermenu-item-normal > .ubermenu-target {
            color: #0a0000;
            font-size: 14px;
        }

        .ubermenu.ubermenu-main .ubermenu-item-normal > .ubermenu-target:hover, .ubermenu.ubermenu-main .ubermenu-item-normal:hover > .ubermenu-target, .ubermenu.ubermenu-main .ubermenu-item-normal.ubermenu-active > .ubermenu-target {
            color: #dd3333;
        }

        /* Status: Loaded from Transient */

    </style>
    <link rel="shortcut icon" href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/anvil-impact_38471.png">

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

    <link rel="stylesheet" href="<%=request.getContextPath()%>/mock/s_files/skin.css" type="text/css" media="screen">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mock/s_files/skin_002.css" type="text/css"
          media="screen">
    <meta name="generator" content="Powered by Visual Composer - drag and drop page builder for WordPress.">
    <!--[if lte IE 9]>
    <link rel="stylesheet" type="text/css"
          href="http://zheldor-kovka.ru/wp-content/plugins/js_composer/assets/css/vc_lte_ie9.min.css" media="screen">
    <![endif]--><!--[if IE  8]>
    <link rel="stylesheet" type="text/css"
          href="http://zheldor-kovka.ru/wp-content/plugins/js_composer/assets/css/vc-ie8.min.css" media="screen">
    <![endif]-->
    <style type="text/css" id="custom-background-css">
        body.custom-background {
            background-image: url("http://zheldor-kovka.ru/wp-content/uploads/2017/01/multi1638-1-1.jpg");
            background-position: center center;
            background-size: auto;
            background-repeat: repeat;
            background-attachment: fixed;
        }
    </style>
    <link rel="icon" href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/cropped-anvil-impact_38471-32x32.png"
          sizes="32x32">
    <link rel="icon" href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/cropped-anvil-impact_38471-192x192.png"
          sizes="192x192">
    <link rel="apple-touch-icon-precomposed"
          href="http://zheldor-kovka.ru/wp-content/uploads/2016/12/cropped-anvil-impact_38471-180x180.png">
    <meta name="msapplication-TileImage"
          content="http://zheldor-kovka.ru/wp-content/uploads/2016/12/cropped-anvil-impact_38471-270x270.png">
    <noscript>
        <style type="text/css"> .wpb_animate_when_almost_visible {
            opacity: 1;
        }</style>
    </noscript>
</head>


<body ng-controller="homeCtrl" class="home page-template-default page page-id-36 custom-background header-text-is-on google-fonts-on logo-is-on wpb-js-composer js-comp-ver-4.11.2 vc_responsive">
<div id="page" class="hfeed site">

    <tiles:insertAttribute name="header-area"/>
    <tiles:insertAttribute name="content"/>
    <tiles:insertAttribute name="footer"/>
    <tiles:insertAttribute name="banner"/>

    <div class="loader" ng-show="loadergif"></div>
</div>
</body>
</html>