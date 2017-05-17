<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link type="text/css" href="<%=request.getContextPath()%>/libs/widget/widget.min.css" rel="stylesheet">

<script type="text/javascript">

    function close_phone() {
        $('#call').addClass('cbh-widget-call_closed');
        $('#phone').removeClass('cbh-widget-open');

    }
    function open_phone() {
        $('#call').removeClass('cbh-widget-call_closed');
        $('#phone').addClass('cbh-widget-open');
    }


</script>
<div class="sidebar-wrap">
    <div class="sidebar-before-footer wide">
        <div class="widget-area">

            <aside id="search-7" class="widget widget_search">
                <form role="search" method="get" class="search-form" action="search.htm">
                    <label>
                        <span class="screen-reader-text"><s:text name="label.find">Найти</s:text>:</span>
                        <input class="search-field" placeholder="<s:text name="label.search">Поиск</s:text>…" value="" name="search" type="search">
                    </label>
                    <input class="search-submit" value="<s:text name="label.search">Поиск</s:text>" type="submit">
                </form>
            </aside>
            <aside id="text-13" class="widget widget_text">
                <h3 class="widget-title">Tel: 8 (495) 642-40-66 e-mail:Kovka@Zheldor-Kovka.ru</h3>
                <div class="textwidget">
                    <span style="color: #000000;">
                        <center>
                            <s:text name="footer.info">&copy; 2007-2017 Студия художественной ковки в Железнодорожном. Кованые и сварные изделия на заказ в Москве и Московской области. ИНН 7723383020 ОГРН 1157746241267</s:text>
                        </center>
                    </span>
                </div>
            </aside>
        </div><!-- .widget-area -->
    </div><!-- .sidebar-before-footer .wide -->
</div>

<footer id="colophon" class="site-footer">

    <a href="#" class="scrollup right move visible" style="display: inline;"></a>

</footer>


<%--call--%>
<div class="cbh-wrapper cbh-en" id="clbh_div">
    <div id="cbh_widget_wrapper" class="cbh-show" style="z-index: 9000010;">
        <div class="cbh-widget lightSpeedIn " id="clbh_phone_div" style="z-index: 9000010;">
            <div class="cbh-call-container" id="cbh_call_container" style="right: 181.8px; bottom: 0px;">

                <div id="call" class="cbh-widget-call  cbh-widget-call_closed" style="right: 0px;">
                    <div class="cbh-video-wrapper">
                    </div>
                    <a onclick="close_phone()" href="#" class="cbh-widget-call__close cbh-widget__close"><i
                            class="cbh-widget-icon-cancel"></i></a>
                    <div class="cbh-widget-slide cbh-widget-slide_closed"></div>
                    <div class="cbh-widget-call__container">
                        <div class="cbh-widget-call__container-inner" id="cbh_widget_call_container">
                            <div class="cbh-widget-call__hello" id="cbh_slider_header">
                                <div class="sheff sheff--w1a">
                                    <s:text name="footer.callYouBack">Мы вам перезвоним</s:text>
                                    <%--<span>00:26</span>--%>
                                    <%--seconds!--%>
                                </div>
                            </div>
                            <div class="cbh-widget-call__wrapper-select">
                                <div class="cbh-widget-call__container-select">
                                    <div class="cbh-widget-call__phone">
                                        <div class="cbh-widget-call__phone__wr">
                                            <div class="CBH-masks">

                                                <input type="tel" class="cbh-input instId_wirA2rue"
                                                       id="cbh_slider_phone_input" value=""
                                                       placeholder="+7-__-___-___"></div>
                                        </div>
                                    </div>
                                    <div class="cbh-widget-call__btn-area cbh-widget-call__timer">
                                        <button type="button" class="cbh-widget-call__btn" id="cbh_slider_call_btn">
                                            <div class="sheff sheff--w1b"><s:text name="footer.CallMe">Позвони мне</s:text></div>
                                        </button>
                                        <span id="cbh_slider_countdown_container"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <%--phone--%>
                <div class="cbh-widget-callopen-wr cbh-widget-wr" style="right: 0px;">
                    <div id="phone" class="cbh-widget-callopen "><%--cbh-widget-open--%>
                        <div class="cbh-ph-circle"></div>
                        <div class="cbh-ph-circle-fill"></div>
                        <button type="button" class="cbh-widget-button" onclick="open_phone()">
                            <i class="cbh-widget-button-phone cbh-rotate-icon"></i>
                            <i class="cbh-widget-button-call"><s:text name="footer.callBack">Перезвони</s:text></i>
                            <i class="cbh-widget-button-logo"></i></button>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>


