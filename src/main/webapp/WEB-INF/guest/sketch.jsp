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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/guest/model/BoxProduct.js"></script>

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <box-selected-item id="box-selected-item"
                                   selected-id="<s:property value="id"/>"
                                   box-url='/load-sketch.htm'
                                   page-type="sketches" content="selectedPage" box-type="selected_page">

                </box-selected-item><!-- .content-container -->

            </div><!-- .content -->

            <div class="clear"></div>
            <nav class="navigation post-navigation" role="navigation">
                <h1 class="screen-reader-text">Навигация по записям</h1>
                <div class="nav-link">
                    <nav style="width: 50%" ng-model="prev" id='<s:property value="id"/>' type="prev" >
                        <a ng-href="{{prev.href}}" rel="prev" ng-if="prev.name"><span class="nav-previous-one">← {{prev.name}}</span></a>
                    </nav>
                    <nav style="width: 50%"  ng-model="next" id='<s:property value="id"/>' type="next" ng-show="next != null">
                        <a ng-href="{{next.href}}" rel="next" ng-if="next.name"><span  class="nav-next">{{next.name}} →</span></a>
                    </nav>
                </div><!-- .nav-links -->
            </nav>
        </div><!-- .site-content -->

        <tiles:insertAttribute name="right"/>
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->

