<%@ page import="com.kovka.web.util.Initializer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/guest/skin_002.css" type="text/css" media="screen">
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

<s:set var="about"   />
<s:if test="%{#session.about == null}">
    <s:set var="about" value='%{loadAbout()}'/>
</s:if>
<s:else>
    <s:set var="about" value='#session.about'/>
</s:else>

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <div class="content-container">

                    <article id="post-466" class="post-466 page type-page status-publish hentry">

                        <header class="entry-header">

                            <h1 class="entry-title"><s:text name="menu.about">О Нас</s:text></h1>


                        </header><!-- .entry-header -->

                        <header class="entry-header">

                            <div id="googleMap" style="width:100%;height:400px;"></div>


                        </header><!-- .entry-header -->

                        <div class="entry-content">
                            <h2 style="text-align: center;">
                                <span style="color: #000000;">
                                    <strong><s:property value="#about.currentInfo.title"/></strong>
                                </span>
                            </h2>
                            <p style="text-align: center;"><span style="color: #000000;"><strong>&nbsp;</strong></span>
                            </p>
                            <p style="text-align: center;">
                                <span style="color: #000000;">
                                    <strong><s:property value="#about.currentInfo.address"/></strong>
                                </span>
                            </p>
                            <%--email/phone--%>
                            <p style="text-align: center;">
                                <span style="color: #000000;">
                                    <strong><s:text name="menu.about.email">e-mail :</s:text></strong>
                                    <s:iterator var="email" value="#about.emails" status="status">
                                        <s:property value="email"/>
                                        <s:if test="#status.last == false ">
                                            ,&nbsp;
                                        </s:if>
                                    </s:iterator>
                                </span>
                            </p>
                            <p style="text-align: center;">
                                <span style="color: #000000;">
                                    <strong><s:text name="menu.about.phone">телефон :</s:text></strong>
                                    <s:iterator var="phone" value="#about.phones" status="status">
                                        <s:property value="phone"/>
                                        <s:if test="#status.last == false ">
                                            ,&nbsp;
                                        </s:if>
                                    </s:iterator>
                                </span>
                            </p>
                            <%--desc--%>
                            <p style="text-align: center;">
                                <span style="color: #000000;">
                                     <strong><s:property value="#about.currentInfo.shortDesc"/></strong>
                                </span>
                            </p>
                            <p style="text-align: center;">
                                <span style="color: #000000;">
                                    <strong><s:property value="#about.currentInfo.description"/></strong>
                                </span>
                            </p>

                            <p>&nbsp;</p>
                            <div class="clear"></div>
                            <footer class="entry-footer">
                                <div class="entry-meta">
                                </div> <!-- .entry-meta -->

                            </footer><!-- .entry-footer -->
                        </div><!-- .entry-content -->
                    </article><!-- #post-## -->
                </div><!-- .content-container -->
            </div><!-- .content -->

            <div class="clear"></div>

        </div><!-- .site-content -->

        <tiles:insertAttribute name="right"/><!-- .sidebar-2 -->
    </div> <!-- .main-wrapper -->
</div>
<!-- .main-area -->


<script>
    function initMap() {

        var latitude = '<s:property value="#about.latitude"/>';
        var longitude = '<s:property value="#about.longitude"/>';

        var myLatLng = {lat: Number(latitude), lng: Number(longitude)};

        var map = new google.maps.Map(document.getElementById('googleMap'), {
            zoom: 16,
            center: myLatLng
        });

        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'NMG Ковка',
            draggable: true
        });
    }
</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=<%=Initializer.G_MAP_KEY%>&callback=initMap">
</script>