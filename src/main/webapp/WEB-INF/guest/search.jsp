<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>


<link rel="stylesheet" href="<%=request.getContextPath()%>/css/guest/skin_002.css" type="text/css"
      media="screen">

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/angular/angular-sanitize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/model/Box.js"></script>

<style type="text/css">
    .maxbutton-1.maxbutton.maxbutton-rasschitajte-stoimost {
        position: relative;
        text-decoration: none;
        display: inline-block;
        border-color: #505ac7;
        width: 200px;
        height: 65px;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
        border-style: solid;
        border-width: 2px;
        background-color: rgba(80, 90, 199, 1);
        -webkit-box-shadow: 0px 0px 2px 0px #333;
        -moz-box-shadow: 0px 0px 2px 0px #333;
        box-shadow: 0px 0px 2px 0px #333
    }

    .maxbutton-1.maxbutton:hover.maxbutton-rasschitajte-stoimost {
        border-color: #505ac7;
        background-color: rgba(255, 255, 255, 1);
        -webkit-box-shadow: 0px 0px 2px 0px #333;
        -moz-box-shadow: 0px 0px 2px 0px #333;
        box-shadow: 0px 0px 2px 0px #333
    }

    .maxbutton-1.maxbutton.maxbutton-rasschitajte-stoimost .mb-text {
        color: #fff;
        font-family: Tahoma;
        font-size: 22px;
        text-align: center;
        font-style: normal;
        font-weight: normal;
        padding-top: 19px;
        padding-right: 0px;
        padding-bottom: 0px;
        padding-left: 0px;
        line-height: 1em;
        box-sizing: border-box;
        display: block;
        background-color: unset
    }

    .maxbutton-1.maxbutton:hover.maxbutton-rasschitajte-stoimost .mb-text {
        color: #505ac7
    }
</style>
<!-- .main-area -->

<div class="main-area">
    <div class="main-wrapper flex flex-layout-3 right-sidebar ">

        <div class="site-content">
            <header class="archive-header">
                <h1 class="archive-title">Результаты поиска для: a (32)</h1>
            </header><!-- .archive-header -->

            <%--<div >--%>

            <boxes class="content" box-page="0" box-count="9" box-url='/load-sketches.htm'
                   box-search="<s:property value="search"/>"
                   page-type="searches" more-info="true" book="true" box-type="search"
            >
                <box-item class="content-container" ng-repeat="page in searches" content="page" box-id="{{page.id}}"
                          box-type="search"
                >
                    <img width="100px" src="<%=request.getContextPath()%>/img/ajax-loader2.gif"/>
                </box-item>
            </boxes><!-- .content-container -->

            <div class="content-search">
            </div><!-- .content-search -->
            <%--</div>--%><!-- .content -->
            <div class="clear"></div>

            <nav class="navigation paging-navigation" role="navigation">
                <h1 class="screen-reader-text">Навигация по записям</h1>
                <div class="pagination loop-pagination">
                    <span class="page-numbers current">1</span>
                    <a class="page-numbers" href="http://zheldor-kovka.ru/page/2/?s=a">2</a>
                    <span class="page-numbers dots">…</span>
                    <a class="page-numbers" href="http://zheldor-kovka.ru/page/4/?s=a">4</a>
                    <a class="next page-numbers" href="http://zheldor-kovka.ru/page/2/?s=a">Следующие →</a></div>
                <!-- .pagination -->
            </nav><!-- .navigation -->
        </div><!-- .site-content -->

        <tiles:insertAttribute name="right"/><!-- .sidebar-2 -->
    </div> <!-- .main-wrapper -->
</div>