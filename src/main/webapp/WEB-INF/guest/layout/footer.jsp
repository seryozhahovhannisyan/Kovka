<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<link type="text/css" href="<%=request.getContextPath()%>/mock/MercedesBenz_files/widget.min.css" rel="stylesheet">
<script type="text/javascript">


    $(document).ready(function () {
        // No right click
        close_phone()

    });
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
                        <span class="screen-reader-text">Найти:</span>
                        <input class="search-field" placeholder="Поиск…" value="" name="search" type="search">
                    </label>
                    <input class="search-submit" value="Поиск" type="submit">
                </form>
            </aside>
            <aside id="text-13" class="widget widget_text"><h3 class="widget-title">Tel: 8 (495) 642-40-66 e-mail:
                Kovka@Zheldor-Kovka.ru</h3>
                <div class="textwidget"><span style="color: #000000;"><center>© 2007-2017 Студия художественной ковки в Железнодорожном. Кованые и сварные изделия на заказ в Москве и Московской области.
ИНН 7723383020 ОГРН 1157746241267</center></span></div>
            </aside>
        </div><!-- .widget-area -->
    </div><!-- .sidebar-before-footer .wide -->
</div>

<footer id="colophon" class="site-footer">

    <a href="#" class="scrollup right move visible" style="display: inline;"></a>

</footer>
<div class="cbh-wrapper cbh-en" id="clbh_div">
    <div id="cbh_widget_wrapper" class="cbh-show" style="z-index: 9000010;">
        <div class="cbh-widget lightSpeedIn " id="clbh_phone_div" style="z-index: 9000010;">
            <div class="cbh-call-container" id="cbh_call_container" style="right: 181.8px; bottom: 0px;">
                <!--<div class="cbh-widget-call cbh-widget-call_closed" style="right: 0px;">-->
                <div id="call" class="cbh-widget-call  " style="right: 0px;">
                    <div class="cbh-video-wrapper">
                        <iframe class="cbh-slider-video" frameborder="0" width="100%" height="290"
                                src="./MercedesBenz_files/saved_resource(1).html"></iframe>
                    </div>
                    <a onclick="close_phone()" href="#" class="cbh-widget-call__close cbh-widget__close"><i
                            class="cbh-widget-icon-cancel"></i></a>
                    <div class="cbh-widget-slide cbh-widget-slide_closed"></div>
                    <div class="cbh-widget-call__container">
                        <div class="cbh-widget-call__container-inner" id="cbh_widget_call_container">
                            <div class="cbh-widget-call__hello" id="cbh_slider_header">
                                <div class="sheff sheff--w1a">We"ll call <a href="#"
                                                                            class="cbh-dialog-action-link"
                                                                            id="cbh_dialog_name">you</a> back in <span>00:26</span>
                                    seconds!
                                </div>
                            </div>
                            <div class="cbh-widget-call__wrapper-select">
                                <div class="cbh-widget-call__container-select">
                                    <div class="cbh-widget-call__phone">
                                        <div class="cbh-widget-call__phone__wr">
                                            <div class="CBH-masks">
                                                <div class="flags">
                                                    <div class="selected">
                                                        <div class="flag am"><i class="caret"></i></div>
                                                    </div>
                                                    <ul class="lists">
                                                        <li class="country" data-isocode="ru"
                                                            data-mask="+7(___)___-__-__"><i class="flag ru"></i><span
                                                                class="name">Russia</span><span class="code">+7</span>
                                                        </li>
                                                        <hr>
                                                        <li class="country" data-isocode="af"
                                                            data-mask="+93-__-___-____"><i class="flag af"></i><span
                                                                class="name">Afghanistan</span><span
                                                                class="code">+93</span></li>
                                                        <li class="country" data-isocode="al"
                                                            data-mask="+355(___)___-___"><i class="flag al"></i><span
                                                                class="name">Albania</span><span
                                                                class="code">+355</span></li>
                                                        <li class="country" data-isocode="dz"
                                                            data-mask="+213-__-___-____"><i class="flag dz"></i><span
                                                                class="name">Algeria</span><span
                                                                class="code">+213</span></li>
                                                        <li class="country" data-isocode="as"
                                                            data-mask="+1(684)___-____"><i class="flag as"></i><span
                                                                class="name">American Samoa</span><span class="code">+1684</span>
                                                        </li>
                                                        <li class="country" data-isocode="ad" data-mask="+376-___-___">
                                                            <i class="flag ad"></i><span
                                                                class="name">Andorra</span><span
                                                                class="code">+376</span></li>
                                                        <li class="country" data-isocode="ao"
                                                            data-mask="+244(___)___-___"><i class="flag ao"></i><span
                                                                class="name">Angola</span><span class="code">+244</span>
                                                        </li>
                                                        <li class="country" data-isocode="ai"
                                                            data-mask="+1(264)___-____"><i class="flag ai"></i><span
                                                                class="name">Anguilla</span><span
                                                                class="code">+1264</span></li>
                                                        <li class="country" data-isocode="aq" data-mask="+672-1__-___">
                                                            <i class="flag aq"></i><span
                                                                class="name">Antarctica</span><span
                                                                class="code">+6721</span></li>
                                                        <li class="country" data-isocode="ag"
                                                            data-mask="+1(268)___-____"><i class="flag ag"></i><span
                                                                class="name">Antigua and Barbuda</span><span
                                                                class="code">+1268</span></li>
                                                        <li class="country" data-isocode="ae"
                                                            data-mask="+971-_-___-____"><i class="flag ae"></i><span
                                                                class="name">Arab Emirates</span><span
                                                                class="code">+971</span></li>
                                                        <li class="country" data-isocode="ar"
                                                            data-mask="+54(___)___-____"><i class="flag ar"></i><span
                                                                class="name">Argentina</span><span
                                                                class="code">+54</span></li>
                                                        <li class="country" data-isocode="am"
                                                            data-mask="+374-__-___-___"><i class="flag am"></i><span
                                                                class="name">Armenia</span><span
                                                                class="code">+374</span></li>
                                                        <li class="country" data-isocode="aw" data-mask="+297-___-____">
                                                            <i class="flag aw"></i><span class="name">Aruba</span><span
                                                                class="code">+297</span></li>
                                                        <li class="country" data-isocode="ac" data-mask="+247-____"><i
                                                                class="flag ac"></i><span
                                                                class="name">Ascension Island</span><span class="code">+247</span>
                                                        </li>
                                                        <li class="country" data-isocode="au"
                                                            data-mask="+61-_-____-____"><i class="flag au"></i><span
                                                                class="name">Australia</span><span
                                                                class="code">+61</span></li>
                                                        <li class="country" data-isocode="at"
                                                            data-mask="+43(___)___-____"><i class="flag at"></i><span
                                                                class="name">Austria</span><span class="code">+43</span>
                                                        </li>
                                                        <li class="country" data-isocode="az"
                                                            data-mask="+994-__-___-__-__"><i class="flag az"></i><span
                                                                class="name">Azerbaijan</span><span
                                                                class="code">+994</span></li>
                                                        <li class="country" data-isocode="bs"
                                                            data-mask="+1(242)___-____"><i class="flag bs"></i><span
                                                                class="name">Bahamas</span><span
                                                                class="code">+1242</span></li>
                                                        <li class="country" data-isocode="bh"
                                                            data-mask="+973-____-____"><i class="flag bh"></i><span
                                                                class="name">Bahrain</span><span
                                                                class="code">+973</span></li>
                                                        <li class="country" data-isocode="bd"
                                                            data-mask="+880-__-___-___"><i class="flag bd"></i><span
                                                                class="name">Bangladesh</span><span
                                                                class="code">+880</span></li>
                                                        <li class="country" data-isocode="bb"
                                                            data-mask="+1(246)___-____"><i class="flag bb"></i><span
                                                                class="name">Barbados</span><span
                                                                class="code">+1246</span></li>
                                                        <li class="country" data-isocode="by"
                                                            data-mask="+375(__)___-__-__"><i class="flag by"></i><span
                                                                class="name">Belarus</span><span
                                                                class="code">+375</span></li>
                                                        <li class="country" data-isocode="be"
                                                            data-mask="+32(___)___-___"><i class="flag be"></i><span
                                                                class="name">Belgium</span><span class="code">+32</span>
                                                        </li>
                                                        <li class="country" data-isocode="bz" data-mask="+501-___-____">
                                                            <i class="flag bz"></i><span class="name">Belize</span><span
                                                                class="code">+501</span></li>
                                                        <li class="country" data-isocode="bj"
                                                            data-mask="+229-__-__-____"><i class="flag bj"></i><span
                                                                class="name">Benin</span><span class="code">+229</span>
                                                        </li>
                                                        <li class="country" data-isocode="bm"
                                                            data-mask="+1(441)___-____"><i class="flag bm"></i><span
                                                                class="name">Bermuda</span><span
                                                                class="code">+1441</span></li>
                                                        <li class="country" data-isocode="bt"
                                                            data-mask="+975-_-___-___"><i class="flag bt"></i><span
                                                                class="name">Bhutan</span><span class="code">+975</span>
                                                        </li>
                                                        <li class="country" data-isocode="bo"
                                                            data-mask="+591-_-___-____"><i class="flag bo"></i><span
                                                                class="name">Bolivia</span><span
                                                                class="code">+591</span></li>
                                                        <li class="country" data-isocode="ba" data-mask="+387-__-____">
                                                            <i class="flag ba"></i><span class="name">Bosnia and Herzegovina</span><span
                                                                class="code">+387</span></li>
                                                        <li class="country" data-isocode="bw"
                                                            data-mask="+267-__-___-___"><i class="flag bw"></i><span
                                                                class="name">Botswana</span><span
                                                                class="code">+267</span></li>
                                                        <li class="country" data-isocode="br"
                                                            data-mask="+55-__-____-____"><i class="flag br"></i><span
                                                                class="name">Brazil</span><span class="code">+55</span>
                                                        </li>
                                                        <li class="country" data-isocode="bn" data-mask="+673-___-____">
                                                            <i class="flag bn"></i><span
                                                                class="name">Brunei Darussalam</span><span class="code">+673</span>
                                                        </li>
                                                        <li class="country" data-isocode="bg"
                                                            data-mask="+359(___)___-___"><i class="flag bg"></i><span
                                                                class="name">Bulgaria</span><span
                                                                class="code">+359</span></li>
                                                        <li class="country" data-isocode="bf"
                                                            data-mask="+226-__-__-____"><i class="flag bf"></i><span
                                                                class="name">Burkina Faso</span><span
                                                                class="code">+226</span></li>
                                                        <li class="country" data-isocode="mm" data-mask="+95-___-___"><i
                                                                class="flag mm"></i><span
                                                                class="name">Burma (Myanmar)</span><span class="code">+95</span>
                                                        </li>
                                                        <li class="country" data-isocode="bi"
                                                            data-mask="+257-__-__-____"><i class="flag bi"></i><span
                                                                class="name">Burundi</span><span
                                                                class="code">+257</span></li>
                                                        <li class="country" data-isocode="kh"
                                                            data-mask="+855-__-___-___"><i class="flag kh"></i><span
                                                                class="name">Cambodia</span><span
                                                                class="code">+855</span></li>
                                                        <li class="country" data-isocode="cm"
                                                            data-mask="+237-____-____"><i class="flag cm"></i><span
                                                                class="name">Cameroon</span><span
                                                                class="code">+237</span></li>
                                                        <li class="country" data-isocode="ca"
                                                            data-mask="+1(___)___-____"><i class="flag ca"></i><span
                                                                class="name">Canada</span><span class="code">+1</span>
                                                        </li>
                                                        <li class="country" data-isocode="cv"
                                                            data-mask="+238(___)__-__"><i class="flag cv"></i><span
                                                                class="name">Cape Verde</span><span
                                                                class="code">+238</span></li>
                                                        <li class="country" data-isocode="bq" data-mask="+599-___-____">
                                                            <i class="flag bq"></i><span class="name">Caribbean Netherlands</span><span
                                                                class="code">+599</span></li>
                                                        <li class="country" data-isocode="ky"
                                                            data-mask="+1(345)___-____"><i class="flag ky"></i><span
                                                                class="name">Cayman Islands</span><span class="code">+1345</span>
                                                        </li>
                                                        <li class="country" data-isocode="cf"
                                                            data-mask="+236-__-__-____"><i class="flag cf"></i><span
                                                                class="name">Central African Republic</span><span
                                                                class="code">+236</span></li>
                                                        <li class="country" data-isocode="td"
                                                            data-mask="+235-__-__-__-__"><i class="flag td"></i><span
                                                                class="name">Chad</span><span class="code">+235</span>
                                                        </li>
                                                        <li class="country" data-isocode="cl"
                                                            data-mask="+56-_-____-____"><i class="flag cl"></i><span
                                                                class="name">Chile</span><span class="code">+56</span>
                                                        </li>
                                                        <li class="country" data-isocode="cn"
                                                            data-mask="+86(___)____-___"><i class="flag cn"></i><span
                                                                class="name">China</span><span class="code">+86</span>
                                                        </li>
                                                        <li class="country" data-isocode="co"
                                                            data-mask="+57(___)___-____"><i class="flag co"></i><span
                                                                class="name">Colombia</span><span
                                                                class="code">+57</span></li>
                                                        <li class="country" data-isocode="km" data-mask="+269-__-_____">
                                                            <i class="flag km"></i><span
                                                                class="name">Comoros</span><span
                                                                class="code">+269</span></li>
                                                        <li class="country" data-isocode="cg"
                                                            data-mask="+242-__-___-____"><i class="flag cg"></i><span
                                                                class="name">Congo (Brazzaville)</span><span
                                                                class="code">+242</span></li>
                                                        <li class="country" data-isocode="cd"
                                                            data-mask="+243(___)___-___"><i class="flag cd"></i><span
                                                                class="name">Congo (Kinshasa)</span><span class="code">+243</span>
                                                        </li>
                                                        <li class="country" data-isocode="ck" data-mask="+682-__-___"><i
                                                                class="flag ck"></i><span
                                                                class="name">Cook Islands</span><span
                                                                class="code">+682</span></li>
                                                        <li class="country" data-isocode="cr"
                                                            data-mask="+506-____-____"><i class="flag cr"></i><span
                                                                class="name">Costa Rica</span><span
                                                                class="code">+506</span></li>
                                                        <li class="country" data-isocode="hr"
                                                            data-mask="+385-__-___-___"><i class="flag hr"></i><span
                                                                class="name">Croatia</span><span
                                                                class="code">+385</span></li>
                                                        <li class="country" data-isocode="cu"
                                                            data-mask="+53-_-___-____"><i class="flag cu"></i><span
                                                                class="name">Cuba</span><span class="code">+53</span>
                                                        </li>
                                                        <li class="country" data-isocode="cw" data-mask="+599-___-____">
                                                            <i class="flag cw"></i><span
                                                                class="name">Curacao</span><span
                                                                class="code">+599</span></li>
                                                        <li class="country" data-isocode="cy"
                                                            data-mask="+357-__-___-___"><i class="flag cy"></i><span
                                                                class="name">Cyprus</span><span class="code">+357</span>
                                                        </li>
                                                        <li class="country" data-isocode="cz"
                                                            data-mask="+420(___)___-___"><i class="flag cz"></i><span
                                                                class="name">Czech Republic</span><span class="code">+420</span>
                                                        </li>
                                                        <li class="country" data-isocode="ci"
                                                            data-mask="+225-__-___-___"><i class="flag ci"></i><span
                                                                class="name">Côte d'ivoire</span><span
                                                                class="code">+225</span></li>
                                                        <li class="country" data-isocode="dk"
                                                            data-mask="+45-__-__-__-__"><i class="flag dk"></i><span
                                                                class="name">Denmark</span><span class="code">+45</span>
                                                        </li>
                                                        <li class="country" data-isocode="io" data-mask="+246-___-____">
                                                            <i class="flag io"></i><span
                                                                class="name">Diego Garcia</span><span
                                                                class="code">+246</span></li>
                                                        <li class="country" data-isocode="dj"
                                                            data-mask="+253-__-__-__-__"><i class="flag dj"></i><span
                                                                class="name">Djibouti</span><span
                                                                class="code">+253</span></li>
                                                        <li class="country" data-isocode="dm"
                                                            data-mask="+1(767)___-____"><i class="flag dm"></i><span
                                                                class="name">Dominica</span><span
                                                                class="code">+1767</span></li>
                                                        <li class="country" data-isocode="do"
                                                            data-mask="+1(809)___-____"><i class="flag do"></i><span
                                                                class="name">Dominican Republic</span><span
                                                                class="code">+1809</span></li>
                                                        <li class="country" data-isocode="tl" data-mask="+670-___-____">
                                                            <i class="flag tl"></i><span
                                                                class="name">East Timor</span><span
                                                                class="code">+670</span></li>
                                                        <li class="country" data-isocode="ec"
                                                            data-mask="+593-_-___-____"><i class="flag ec"></i><span
                                                                class="name">Ecuador</span><span
                                                                class="code">+593</span></li>
                                                        <li class="country" data-isocode="eg"
                                                            data-mask="+20(___)___-____"><i class="flag eg"></i><span
                                                                class="name">Egypt</span><span class="code">+20</span>
                                                        </li>
                                                        <li class="country" data-isocode="gq"
                                                            data-mask="+240-__-___-____"><i class="flag gq"></i><span
                                                                class="name">Equatorial Guinea</span><span class="code">+240</span>
                                                        </li>
                                                        <li class="country" data-isocode="er"
                                                            data-mask="+291-_-___-___"><i class="flag er"></i><span
                                                                class="name">Eritrea</span><span
                                                                class="code">+291</span></li>
                                                        <li class="country" data-isocode="ee" data-mask="+372-___-____">
                                                            <i class="flag ee"></i><span
                                                                class="name">Estonia</span><span
                                                                class="code">+372</span></li>
                                                        <li class="country" data-isocode="et"
                                                            data-mask="+251-__-___-____"><i class="flag et"></i><span
                                                                class="name">Ethiopia</span><span
                                                                class="code">+251</span></li>
                                                        <li class="country" data-isocode="fm" data-mask="+691-___-____">
                                                            <i class="flag fm"></i><span class="name">F. S. Of Micronesia</span><span
                                                                class="code">+691</span></li>
                                                        <li class="country" data-isocode="gf"
                                                            data-mask="+594-_____-____"><i class="flag gf"></i><span
                                                                class="name">FR. Guiana</span><span
                                                                class="code">+594</span></li>
                                                        <li class="country" data-isocode="fk" data-mask="+500-_____"><i
                                                                class="flag fk"></i><span
                                                                class="name">Falkland Islands</span><span class="code">+500</span>
                                                        </li>
                                                        <li class="country" data-isocode="fo" data-mask="+298-___-___">
                                                            <i class="flag fo"></i><span
                                                                class="name">Faroe Islands</span><span
                                                                class="code">+298</span></li>
                                                        <li class="country" data-isocode="fj" data-mask="+679-__-_____">
                                                            <i class="flag fj"></i><span class="name">Fiji</span><span
                                                                class="code">+679</span></li>
                                                        <li class="country" data-isocode="fi"
                                                            data-mask="+358(___)___-__-__"><i class="flag fi"></i><span
                                                                class="name">Finland</span><span
                                                                class="code">+358</span></li>
                                                        <li class="country" data-isocode="fr"
                                                            data-mask="+33(___)___-___"><i class="flag fr"></i><span
                                                                class="name">France</span><span class="code">+33</span>
                                                        </li>
                                                        <li class="country" data-isocode="pf" data-mask="+689-__-__-__">
                                                            <i class="flag pf"></i><span class="name">French Polynesia (Tahiti)</span><span
                                                                class="code">+689</span></li>
                                                        <li class="country" data-isocode="gu"
                                                            data-mask="+1(671)___-____"><i class="flag gu"></i><span
                                                                class="name">GUAM</span><span class="code">+1671</span>
                                                        </li>
                                                        <li class="country" data-isocode="ga"
                                                            data-mask="+241-_-__-__-__"><i class="flag ga"></i><span
                                                                class="name">Gabon</span><span class="code">+241</span>
                                                        </li>
                                                        <li class="country" data-isocode="gm"
                                                            data-mask="+220(___)__-__"><i class="flag gm"></i><span
                                                                class="name">Gambia</span><span class="code">+220</span>
                                                        </li>
                                                        <li class="country" data-isocode="ge"
                                                            data-mask="+995(___)___-___"><i class="flag ge"></i><span
                                                                class="name">Georgia</span><span
                                                                class="code">+995</span></li>
                                                        <li class="country" data-isocode="de" data-mask="+49-___-___"><i
                                                                class="flag de"></i><span
                                                                class="name">Germany</span><span class="code">+49</span>
                                                        </li>
                                                        <li class="country" data-isocode="gh"
                                                            data-mask="+233(___)___-___"><i class="flag gh"></i><span
                                                                class="name">Ghana</span><span class="code">+233</span>
                                                        </li>
                                                        <li class="country" data-isocode="gi"
                                                            data-mask="+350-___-_____"><i class="flag gi"></i><span
                                                                class="name">Gibraltar</span><span
                                                                class="code">+350</span></li>
                                                        <li class="country" data-isocode="gr"
                                                            data-mask="+30(___)___-____"><i class="flag gr"></i><span
                                                                class="name">Greece</span><span class="code">+30</span>
                                                        </li>
                                                        <li class="country" data-isocode="gl" data-mask="+299-__-__-__">
                                                            <i class="flag gl"></i><span
                                                                class="name">Greenland</span><span
                                                                class="code">+299</span></li>
                                                        <li class="country" data-isocode="gd"
                                                            data-mask="+1(473)___-____"><i class="flag gd"></i><span
                                                                class="name">Grenada</span><span
                                                                class="code">+1473</span></li>
                                                        <li class="country" data-isocode="fr"
                                                            data-mask="+590(___)___-___"><i class="flag fr"></i><span
                                                                class="name">Guadeloupe</span><span
                                                                class="code">+590</span></li>
                                                        <li class="country" data-isocode="gt"
                                                            data-mask="+502-_-___-____"><i class="flag gt"></i><span
                                                                class="name">Guatemala</span><span
                                                                class="code">+502</span></li>
                                                        <li class="country" data-isocode="gn"
                                                            data-mask="+224-__-___-___"><i class="flag gn"></i><span
                                                                class="name">Guinea</span><span class="code">+224</span>
                                                        </li>
                                                        <li class="country" data-isocode="gw" data-mask="+245-_-______">
                                                            <i class="flag gw"></i><span
                                                                class="name">Guinea-Bissau</span><span
                                                                class="code">+245</span></li>
                                                        <li class="country" data-isocode="gy" data-mask="+592-___-____">
                                                            <i class="flag gy"></i><span class="name">Guyana</span><span
                                                                class="code">+592</span></li>
                                                        <li class="country" data-isocode="ht"
                                                            data-mask="+509-__-__-____"><i class="flag ht"></i><span
                                                                class="name">Haiti</span><span class="code">+509</span>
                                                        </li>
                                                        <li class="country" data-isocode="hn"
                                                            data-mask="+504-____-____"><i class="flag hn"></i><span
                                                                class="name">Honduras</span><span
                                                                class="code">+504</span></li>
                                                        <li class="country" data-isocode="hk"
                                                            data-mask="+852-____-____"><i class="flag hk"></i><span
                                                                class="name">Hong Kong</span><span
                                                                class="code">+852</span></li>
                                                        <li class="country" data-isocode="hu"
                                                            data-mask="+36(___)___-___"><i class="flag hu"></i><span
                                                                class="name">Hungary</span><span class="code">+36</span>
                                                        </li>
                                                        <li class="country" data-isocode="is" data-mask="+354-___-____">
                                                            <i class="flag is"></i><span
                                                                class="name">Iceland</span><span
                                                                class="code">+354</span></li>
                                                        <li class="country" data-isocode="tg"
                                                            data-mask="+228-__-___-___"><i class="flag tg"></i><span
                                                                class="name">In</span><span class="code">+228</span>
                                                        </li>
                                                        <li class="country" data-isocode="in"
                                                            data-mask="+91(____)___-___"><i class="flag in"></i><span
                                                                class="name">India</span><span class="code">+91</span>
                                                        </li>
                                                        <li class="country" data-isocode="id" data-mask="+62-__-___-__">
                                                            <i class="flag id"></i><span
                                                                class="name">Indonesia</span><span
                                                                class="code">+62</span></li>
                                                        <li class="country" data-isocode="ir"
                                                            data-mask="+98(___)___-____"><i class="flag ir"></i><span
                                                                class="name">Iran</span><span class="code">+98</span>
                                                        </li>
                                                        <li class="country" data-isocode="iq"
                                                            data-mask="+964(___)___-____"><i class="flag iq"></i><span
                                                                class="name">Iraq</span><span class="code">+964</span>
                                                        </li>
                                                        <li class="country" data-isocode="ie"
                                                            data-mask="+353(___)___-___"><i class="flag ie"></i><span
                                                                class="name">Ireland</span><span
                                                                class="code">+353</span></li>
                                                        <li class="country" data-isocode="il"
                                                            data-mask="+972-_-___-____"><i class="flag il"></i><span
                                                                class="name">Israel</span><span class="code">+972</span>
                                                        </li>
                                                        <li class="country" data-isocode="it"
                                                            data-mask="+39(___)____-___"><i class="flag it"></i><span
                                                                class="name">Italy</span><span class="code">+39</span>
                                                        </li>
                                                        <li class="country" data-isocode="jm"
                                                            data-mask="+1(876)___-____"><i class="flag jm"></i><span
                                                                class="name">Jamaica</span><span
                                                                class="code">+1876</span></li>
                                                        <li class="country" data-isocode="jp"
                                                            data-mask="+81(___)___-___"><i class="flag jp"></i><span
                                                                class="name">Japan</span><span class="code">+81</span>
                                                        </li>
                                                        <li class="country" data-isocode="jo"
                                                            data-mask="+962-_-____-____"><i class="flag jo"></i><span
                                                                class="name">Jordan</span><span class="code">+962</span>
                                                        </li>
                                                        <li class="country" data-isocode="kz"
                                                            data-mask="+7(6__)___-__-__"><i class="flag kz"></i><span
                                                                class="name">Kazakhstan</span><span
                                                                class="code">+76</span></li>
                                                        <li class="country" data-isocode="ke"
                                                            data-mask="+254-___-______"><i class="flag ke"></i><span
                                                                class="name">Kenya</span><span class="code">+254</span>
                                                        </li>
                                                        <li class="country" data-isocode="ki" data-mask="+686-__-___"><i
                                                                class="flag ki"></i><span
                                                                class="name">Kiribati</span><span
                                                                class="code">+686</span></li>
                                                        <li class="country" data-isocode="kp" data-mask="+850-___-___">
                                                            <i class="flag kp"></i><span
                                                                class="name">Korean PDR</span><span
                                                                class="code">+850</span></li>
                                                        <li class="country" data-isocode="kw"
                                                            data-mask="+965-____-____"><i class="flag kw"></i><span
                                                                class="name">Kuwait</span><span class="code">+965</span>
                                                        </li>
                                                        <li class="country" data-isocode="kg"
                                                            data-mask="+996(___)___-___"><i class="flag kg"></i><span
                                                                class="name">Kyrgyzstan</span><span
                                                                class="code">+996</span></li>
                                                        <li class="country" data-isocode="la"
                                                            data-mask="+856-__-___-___"><i class="flag la"></i><span
                                                                class="name">Laos</span><span class="code">+856</span>
                                                        </li>
                                                        <li class="country" data-isocode="lv"
                                                            data-mask="+371-__-___-___"><i class="flag lv"></i><span
                                                                class="name">Latvia</span><span class="code">+371</span>
                                                        </li>
                                                        <li class="country" data-isocode="lb"
                                                            data-mask="+961-_-___-___"><i class="flag lb"></i><span
                                                                class="name">Lebanon</span><span
                                                                class="code">+961</span></li>
                                                        <li class="country" data-isocode="ls"
                                                            data-mask="+266-_-___-____"><i class="flag ls"></i><span
                                                                class="name">Lesotho</span><span
                                                                class="code">+266</span></li>
                                                        <li class="country" data-isocode="lr"
                                                            data-mask="+231-__-___-___"><i class="flag lr"></i><span
                                                                class="name">Liberia</span><span
                                                                class="code">+231</span></li>
                                                        <li class="country" data-isocode="ly"
                                                            data-mask="+218-__-___-___"><i class="flag ly"></i><span
                                                                class="name">Libya</span><span class="code">+218</span>
                                                        </li>
                                                        <li class="country" data-isocode="li"
                                                            data-mask="+423(___)___-____"><i class="flag li"></i><span
                                                                class="name">Liechtenstein</span><span
                                                                class="code">+423</span></li>
                                                        <li class="country" data-isocode="lt"
                                                            data-mask="+370(___)__-___"><i class="flag lt"></i><span
                                                                class="name">Lithuania</span><span
                                                                class="code">+370</span></li>
                                                        <li class="country" data-isocode="lu"
                                                            data-mask="+352(___)___-___"><i class="flag lu"></i><span
                                                                class="name">Luxembourg</span><span
                                                                class="code">+352</span></li>
                                                        <li class="country" data-isocode="mo"
                                                            data-mask="+853-____-____"><i class="flag mo"></i><span
                                                                class="name">Macau</span><span class="code">+853</span>
                                                        </li>
                                                        <li class="country" data-isocode="mg"
                                                            data-mask="+261-__-__-_____"><i class="flag mg"></i><span
                                                                class="name">Madagascar</span><span
                                                                class="code">+261</span></li>
                                                        <li class="country" data-isocode="mw"
                                                            data-mask="+265-_-____-____"><i class="flag mw"></i><span
                                                                class="name">Malawi</span><span class="code">+265</span>
                                                        </li>
                                                        <li class="country" data-isocode="my" data-mask="+60-_-___-___">
                                                            <i class="flag my"></i><span
                                                                class="name">Malaysia</span><span
                                                                class="code">+60</span></li>
                                                        <li class="country" data-isocode="mv" data-mask="+960-___-____">
                                                            <i class="flag mv"></i><span
                                                                class="name">Maldives</span><span
                                                                class="code">+960</span></li>
                                                        <li class="country" data-isocode="ml"
                                                            data-mask="+223-__-__-____"><i class="flag ml"></i><span
                                                                class="name">Mali</span><span class="code">+223</span>
                                                        </li>
                                                        <li class="country" data-isocode="mt"
                                                            data-mask="+356-____-____"><i class="flag mt"></i><span
                                                                class="name">Malta</span><span class="code">+356</span>
                                                        </li>
                                                        <li class="country" data-isocode="mh" data-mask="+692-___-____">
                                                            <i class="flag mh"></i><span
                                                                class="name">Marshall Islands</span><span class="code">+692</span>
                                                        </li>
                                                        <li class="country" data-isocode="mq"
                                                            data-mask="+596(___)__-__-__"><i class="flag mq"></i><span
                                                                class="name">Martinique</span><span
                                                                class="code">+596</span></li>
                                                        <li class="country" data-isocode="mr"
                                                            data-mask="+222-__-__-____"><i class="flag mr"></i><span
                                                                class="name">Mauritania</span><span
                                                                class="code">+222</span></li>
                                                        <li class="country" data-isocode="mu" data-mask="+230-___-____">
                                                            <i class="flag mu"></i><span
                                                                class="name">Mauritius</span><span
                                                                class="code">+230</span></li>
                                                        <li class="country" data-isocode="fr"
                                                            data-mask="+262-_____-____"><i class="flag fr"></i><span
                                                                class="name">Mayotte</span><span
                                                                class="code">+262</span></li>
                                                        <li class="country" data-isocode="mx"
                                                            data-mask="+52-__-__-____"><i class="flag mx"></i><span
                                                                class="name">Mexico</span><span class="code">+52</span>
                                                        </li>
                                                        <li class="country" data-isocode="md"
                                                            data-mask="+373-____-____"><i class="flag md"></i><span
                                                                class="name">Moldova</span><span
                                                                class="code">+373</span></li>
                                                        <li class="country" data-isocode="mc"
                                                            data-mask="+377-__-___-___"><i class="flag mc"></i><span
                                                                class="name">Monaco</span><span class="code">+377</span>
                                                        </li>
                                                        <li class="country" data-isocode="mn"
                                                            data-mask="+976-__-__-____"><i class="flag mn"></i><span
                                                                class="name">Mongolia</span><span
                                                                class="code">+976</span></li>
                                                        <li class="country" data-isocode="me"
                                                            data-mask="+382-__-___-___"><i class="flag me"></i><span
                                                                class="name">Montenegro</span><span
                                                                class="code">+382</span></li>
                                                        <li class="country" data-isocode="ms"
                                                            data-mask="+1(664)___-____"><i class="flag ms"></i><span
                                                                class="name">Montserrat</span><span
                                                                class="code">+1664</span></li>
                                                        <li class="country" data-isocode="ma"
                                                            data-mask="+212-__-____-___"><i class="flag ma"></i><span
                                                                class="name">Morocco</span><span
                                                                class="code">+212</span></li>
                                                        <li class="country" data-isocode="mz"
                                                            data-mask="+258-__-___-___"><i class="flag mz"></i><span
                                                                class="name">Mozambique</span><span
                                                                class="code">+258</span></li>
                                                        <li class="country" data-isocode="na"
                                                            data-mask="+264-__-___-____"><i class="flag na"></i><span
                                                                class="name">Namibia</span><span
                                                                class="code">+264</span></li>
                                                        <li class="country" data-isocode="nr" data-mask="+674-___-____">
                                                            <i class="flag nr"></i><span class="name">Nauru</span><span
                                                                class="code">+674</span></li>
                                                        <li class="country" data-isocode="np"
                                                            data-mask="+977-__-___-___"><i class="flag np"></i><span
                                                                class="name">Nepal</span><span class="code">+977</span>
                                                        </li>
                                                        <li class="country" data-isocode="nc" data-mask="+687-__-____">
                                                            <i class="flag nc"></i><span
                                                                class="name">New Caledonia</span><span
                                                                class="code">+687</span></li>
                                                        <li class="country" data-isocode="nz"
                                                            data-mask="+64-__-___-___"><i class="flag nz"></i><span
                                                                class="name">New Zealand</span><span
                                                                class="code">+64</span></li>
                                                        <li class="country" data-isocode="ni"
                                                            data-mask="+505-____-____"><i class="flag ni"></i><span
                                                                class="name">Nicaragua</span><span
                                                                class="code">+505</span></li>
                                                        <li class="country" data-isocode="ne"
                                                            data-mask="+227-__-__-____"><i class="flag ne"></i><span
                                                                class="name">Niger</span><span class="code">+227</span>
                                                        </li>
                                                        <li class="country" data-isocode="ng"
                                                            data-mask="+234-__-___-__"><i class="flag ng"></i><span
                                                                class="name">Nigeria</span><span
                                                                class="code">+234</span></li>
                                                        <li class="country" data-isocode="nu" data-mask="+683-____"><i
                                                                class="flag nu"></i><span class="name">Niue</span><span
                                                                class="code">+683</span></li>
                                                        <li class="country" data-isocode="nf" data-mask="+672-3__-___">
                                                            <i class="flag nf"></i><span
                                                                class="name">Norfolk (island)</span><span class="code">+6723</span>
                                                        </li>
                                                        <li class="country" data-isocode="mp"
                                                            data-mask="+1(670)___-____"><i class="flag mp"></i><span
                                                                class="name">Northern Mariana Islands</span><span
                                                                class="code">+1670</span></li>
                                                        <li class="country" data-isocode="no"
                                                            data-mask="+47(___)__-___"><i class="flag no"></i><span
                                                                class="name">Norway</span><span class="code">+47</span>
                                                        </li>
                                                        <li class="country" data-isocode="om"
                                                            data-mask="+968-__-___-___"><i class="flag om"></i><span
                                                                class="name">Oman</span><span class="code">+968</span>
                                                        </li>
                                                        <li class="country" data-isocode="pk"
                                                            data-mask="+92(___)___-____"><i class="flag pk"></i><span
                                                                class="name">Pakistan</span><span
                                                                class="code">+92</span></li>
                                                        <li class="country" data-isocode="pw" data-mask="+680-___-____">
                                                            <i class="flag pw"></i><span class="name">Palau</span><span
                                                                class="code">+680</span></li>
                                                        <li class="country" data-isocode="ps"
                                                            data-mask="+970-__-___-____"><i class="flag ps"></i><span
                                                                class="name">Palestine</span><span
                                                                class="code">+970</span></li>
                                                        <li class="country" data-isocode="pa" data-mask="+507-___-____">
                                                            <i class="flag pa"></i><span class="name">Panama</span><span
                                                                class="code">+507</span></li>
                                                        <li class="country" data-isocode="pg"
                                                            data-mask="+675(___)__-___"><i class="flag pg"></i><span
                                                                class="name">Papua New Guinea</span><span class="code">+675</span>
                                                        </li>
                                                        <li class="country" data-isocode="py"
                                                            data-mask="+595(___)___-___"><i class="flag py"></i><span
                                                                class="name">Paraguay</span><span
                                                                class="code">+595</span></li>
                                                        <li class="country" data-isocode="pe"
                                                            data-mask="+51(___)___-___"><i class="flag pe"></i><span
                                                                class="name">Peru</span><span class="code">+51</span>
                                                        </li>
                                                        <li class="country" data-isocode="ph"
                                                            data-mask="+63(___)___-____"><i class="flag ph"></i><span
                                                                class="name">Philippines</span><span
                                                                class="code">+63</span></li>
                                                        <li class="country" data-isocode="pl"
                                                            data-mask="+48(___)___-___"><i class="flag pl"></i><span
                                                                class="name">Poland</span><span class="code">+48</span>
                                                        </li>
                                                        <li class="country" data-isocode="pt"
                                                            data-mask="+351-__-___-____"><i class="flag pt"></i><span
                                                                class="name">Portugal</span><span
                                                                class="code">+351</span></li>
                                                        <li class="country" data-isocode="qa"
                                                            data-mask="+974-____-____"><i class="flag qa"></i><span
                                                                class="name">Qatar</span><span class="code">+974</span>
                                                        </li>
                                                        <li class="country" data-isocode="kr"
                                                            data-mask="+82-__-___-____"><i class="flag kr"></i><span
                                                                class="name">Rep. Korea</span><span
                                                                class="code">+82</span></li>
                                                        <li class="country" data-isocode="mk"
                                                            data-mask="+389-__-___-___"><i class="flag mk"></i><span
                                                                class="name">Rep. Macedonia</span><span class="code">+389</span>
                                                        </li>
                                                        <li class="country" data-isocode="re"
                                                            data-mask="+262-_____-____"><i class="flag re"></i><span
                                                                class="name">Reunion</span><span
                                                                class="code">+262</span></li>
                                                        <li class="country" data-isocode="ro"
                                                            data-mask="+40-__-___-____"><i class="flag ro"></i><span
                                                                class="name">Romania</span><span class="code">+40</span>
                                                        </li>
                                                        <li class="country" data-isocode="ru"
                                                            data-mask="+7(___)___-__-__"><i class="flag ru"></i><span
                                                                class="name">Russia</span><span class="code">+7</span>
                                                        </li>
                                                        <li class="country" data-isocode="rw"
                                                            data-mask="+250(___)___-___"><i class="flag rw"></i><span
                                                                class="name">Rwanda</span><span class="code">+250</span>
                                                        </li>
                                                        <li class="country" data-isocode="kn"
                                                            data-mask="+1(869)___-____"><i class="flag kn"></i><span
                                                                class="name">Saint Kitts and Nevis</span><span
                                                                class="code">+1869</span></li>
                                                        <li class="country" data-isocode="lc"
                                                            data-mask="+1(758)___-____"><i class="flag lc"></i><span
                                                                class="name">Saint Lucia</span><span
                                                                class="code">+1758</span></li>
                                                        <li class="country" data-isocode="fr" data-mask="+508-__-____">
                                                            <i class="flag fr"></i><span class="name">Saint Pierre and Miquelon</span><span
                                                                class="code">+508</span></li>
                                                        <li class="country" data-isocode="vc"
                                                            data-mask="+1(784)___-____"><i class="flag vc"></i><span
                                                                class="name">Saint Vincent and the Grenadines</span><span
                                                                class="code">+1784</span></li>
                                                        <li class="country" data-isocode="sv"
                                                            data-mask="+503-__-__-____"><i class="flag sv"></i><span
                                                                class="name">Salvador</span><span
                                                                class="code">+503</span></li>
                                                        <li class="country" data-isocode="ws" data-mask="+685-__-____">
                                                            <i class="flag ws"></i><span class="name">Samoa</span><span
                                                                class="code">+685</span></li>
                                                        <li class="country" data-isocode="sm"
                                                            data-mask="+378-____-______"><i class="flag sm"></i><span
                                                                class="name">San Marino</span><span
                                                                class="code">+378</span></li>
                                                        <li class="country" data-isocode="st" data-mask="+239-__-_____">
                                                            <i class="flag st"></i><span class="name">Sao Tome and Principe</span><span
                                                                class="code">+239</span></li>
                                                        <li class="country" data-isocode="sa"
                                                            data-mask="+966-_-___-____"><i class="flag sa"></i><span
                                                                class="name">Saudi Arabia</span><span
                                                                class="code">+966</span></li>
                                                        <li class="country" data-isocode="sn"
                                                            data-mask="+221-__-___-____"><i class="flag sn"></i><span
                                                                class="name">Senegal</span><span
                                                                class="code">+221</span></li>
                                                        <li class="country" data-isocode="rs"
                                                            data-mask="+381-__-___-____"><i class="flag rs"></i><span
                                                                class="name">Serbia</span><span class="code">+381</span>
                                                        </li>
                                                        <li class="country" data-isocode="sc"
                                                            data-mask="+248-_-___-___"><i class="flag sc"></i><span
                                                                class="name">Seychelles</span><span
                                                                class="code">+248</span></li>
                                                        <li class="country" data-isocode="sl"
                                                            data-mask="+232-__-______"><i class="flag sl"></i><span
                                                                class="name">Sierra Leone</span><span
                                                                class="code">+232</span></li>
                                                        <li class="country" data-isocode="sg" data-mask="+65-____-____">
                                                            <i class="flag sg"></i><span
                                                                class="name">Singapore</span><span
                                                                class="code">+65</span></li>
                                                        <li class="country" data-isocode="sx"
                                                            data-mask="+1(721)___-____"><i class="flag sx"></i><span
                                                                class="name">Sint-Maarten</span><span
                                                                class="code">+1721</span></li>
                                                        <li class="country" data-isocode="sk"
                                                            data-mask="+421(___)___-___"><i class="flag sk"></i><span
                                                                class="name">Slovakia</span><span
                                                                class="code">+421</span></li>
                                                        <li class="country" data-isocode="si"
                                                            data-mask="+386-__-___-___"><i class="flag si"></i><span
                                                                class="name">Slovenia</span><span
                                                                class="code">+386</span></li>
                                                        <li class="country" data-isocode="sb" data-mask="+677-_____"><i
                                                                class="flag sb"></i><span
                                                                class="name">Solomon Islands</span><span class="code">+677</span>
                                                        </li>
                                                        <li class="country" data-isocode="so"
                                                            data-mask="+252-_-___-___"><i class="flag so"></i><span
                                                                class="name">Somalia</span><span
                                                                class="code">+252</span></li>
                                                        <li class="country" data-isocode="za"
                                                            data-mask="+27-__-___-____"><i class="flag za"></i><span
                                                                class="name">South African REP.</span><span
                                                                class="code">+27</span></li>
                                                        <li class="country" data-isocode="ss"
                                                            data-mask="+211-__-___-____"><i class="flag ss"></i><span
                                                                class="name">South Sudan</span><span
                                                                class="code">+211</span></li>
                                                        <li class="country" data-isocode="es"
                                                            data-mask="+34(___)___-___"><i class="flag es"></i><span
                                                                class="name">Spain</span><span class="code">+34</span>
                                                        </li>
                                                        <li class="country" data-isocode="lk"
                                                            data-mask="+94-__-___-____"><i class="flag lk"></i><span
                                                                class="name">Sri Lanka</span><span
                                                                class="code">+94</span></li>
                                                        <li class="country" data-isocode="sd"
                                                            data-mask="+249-__-___-____"><i class="flag sd"></i><span
                                                                class="name">Sudan</span><span class="code">+249</span>
                                                        </li>
                                                        <li class="country" data-isocode="sr" data-mask="+597-___-___">
                                                            <i class="flag sr"></i><span
                                                                class="name">Suriname</span><span
                                                                class="code">+597</span></li>
                                                        <li class="country" data-isocode="sz"
                                                            data-mask="+268-__-__-____"><i class="flag sz"></i><span
                                                                class="name">Swaziland</span><span
                                                                class="code">+268</span></li>
                                                        <li class="country" data-isocode="se"
                                                            data-mask="+46-__-___-____"><i class="flag se"></i><span
                                                                class="name">Sweden</span><span class="code">+46</span>
                                                        </li>
                                                        <li class="country" data-isocode="ch"
                                                            data-mask="+41-__-___-____"><i class="flag ch"></i><span
                                                                class="name">Switzerland</span><span
                                                                class="code">+41</span></li>
                                                        <li class="country" data-isocode="sy"
                                                            data-mask="+963-__-____-___"><i class="flag sy"></i><span
                                                                class="name">Syrian Arab Republic</span><span
                                                                class="code">+963</span></li>
                                                        <li class="country" data-isocode="tw"
                                                            data-mask="+886-____-____"><i class="flag tw"></i><span
                                                                class="name">Taiwan</span><span class="code">+886</span>
                                                        </li>
                                                        <li class="country" data-isocode="tj"
                                                            data-mask="+992-__-___-____"><i class="flag tj"></i><span
                                                                class="name">Tajikistan</span><span
                                                                class="code">+992</span></li>
                                                        <li class="country" data-isocode="tz"
                                                            data-mask="+255-__-___-____"><i class="flag tz"></i><span
                                                                class="name">Tanzania</span><span
                                                                class="code">+255</span></li>
                                                        <li class="country" data-isocode="th"
                                                            data-mask="+66-__-___-___"><i class="flag th"></i><span
                                                                class="name">Thailand</span><span
                                                                class="code">+66</span></li>
                                                        <li class="country" data-isocode="nl"
                                                            data-mask="+31-__-___-____"><i class="flag nl"></i><span
                                                                class="name">The Netherlands</span><span class="code">+31</span>
                                                        </li>
                                                        <li class="country" data-isocode="va"
                                                            data-mask="+39-6-698-_____"><i class="flag va"></i><span
                                                                class="name">The Vatican</span><span class="code">+396698</span>
                                                        </li>
                                                        <li class="country" data-isocode="tk" data-mask="+690-____"><i
                                                                class="flag tk"></i><span
                                                                class="name">Tokelau</span><span
                                                                class="code">+690</span></li>
                                                        <li class="country" data-isocode="to" data-mask="+676-_____"><i
                                                                class="flag to"></i><span class="name">Tonga</span><span
                                                                class="code">+676</span></li>
                                                        <li class="country" data-isocode="tt"
                                                            data-mask="+1(868)___-____"><i class="flag tt"></i><span
                                                                class="name">Trinidad and Tobago</span><span
                                                                class="code">+1868</span></li>
                                                        <li class="country" data-isocode="tn"
                                                            data-mask="+216-__-___-___"><i class="flag tn"></i><span
                                                                class="name">Tunisia</span><span
                                                                class="code">+216</span></li>
                                                        <li class="country" data-isocode="tr"
                                                            data-mask="+90(___)___-____"><i class="flag tr"></i><span
                                                                class="name">Turkey</span><span class="code">+90</span>
                                                        </li>
                                                        <li class="country" data-isocode="tm"
                                                            data-mask="+993-_-___-____"><i class="flag tm"></i><span
                                                                class="name">Turkmenistan</span><span
                                                                class="code">+993</span></li>
                                                        <li class="country" data-isocode="tc"
                                                            data-mask="+1(649)___-____"><i class="flag tc"></i><span
                                                                class="name">Turks and Caicos Islands</span><span
                                                                class="code">+1649</span></li>
                                                        <li class="country" data-isocode="tv" data-mask="+688-_____"><i
                                                                class="flag tv"></i><span
                                                                class="name">Tuvalu</span><span class="code">+688</span>
                                                        </li>
                                                        <li class="country" data-isocode="gb"
                                                            data-mask="+44-__-____-____"><i class="flag gb"></i><span
                                                                class="name">UK</span><span class="code">+44</span></li>
                                                        <li class="country" data-isocode="ug"
                                                            data-mask="+256(___)___-___"><i class="flag ug"></i><span
                                                                class="name">Uganda</span><span class="code">+256</span>
                                                        </li>
                                                        <li class="country" data-isocode="ua"
                                                            data-mask="+380(__)___-__-__"><i class="flag ua"></i><span
                                                                class="name">Ukraine</span><span
                                                                class="code">+380</span></li>
                                                        <li class="country" data-isocode="us"
                                                            data-mask="+1(___)___-____"><i class="flag us"></i><span
                                                                class="name">United States</span><span
                                                                class="code">+1</span></li>
                                                        <li class="country" data-isocode="uy"
                                                            data-mask="+598-_-___-__-__"><i class="flag uy"></i><span
                                                                class="name">Uruguay</span><span
                                                                class="code">+598</span></li>
                                                        <li class="country" data-isocode="uz"
                                                            data-mask="+998-__-___-____"><i class="flag uz"></i><span
                                                                class="name">Uzbekistan</span><span
                                                                class="code">+998</span></li>
                                                        <li class="country" data-isocode="vu" data-mask="+678-_____"><i
                                                                class="flag vu"></i><span
                                                                class="name">Vanuatu</span><span
                                                                class="code">+678</span></li>
                                                        <li class="country" data-isocode="ve"
                                                            data-mask="+58(___)___-____"><i class="flag ve"></i><span
                                                                class="name">Venezuela</span><span
                                                                class="code">+58</span></li>
                                                        <li class="country" data-isocode="vn"
                                                            data-mask="+84-__-____-___"><i class="flag vn"></i><span
                                                                class="name">Vietnam</span><span class="code">+84</span>
                                                        </li>
                                                        <li class="country" data-isocode="vi"
                                                            data-mask="+1(340)___-____"><i class="flag vi"></i><span
                                                                class="name">Virgin Islands (America)</span><span
                                                                class="code">+1340</span></li>
                                                        <li class="country" data-isocode="vg"
                                                            data-mask="+1(284)___-____"><i class="flag vg"></i><span
                                                                class="name">Virgin Islands (British)</span><span
                                                                class="code">+1284</span></li>
                                                        <li class="country" data-isocode="wf" data-mask="+681-__-____">
                                                            <i class="flag wf"></i><span
                                                                class="name">Wallis and Futuna</span><span class="code">+681</span>
                                                        </li>
                                                        <li class="country" data-isocode="ye"
                                                            data-mask="+967-_-___-___"><i class="flag ye"></i><span
                                                                class="name">Yemen</span><span class="code">+967</span>
                                                        </li>
                                                        <li class="country" data-isocode="zm"
                                                            data-mask="+260-__-___-____"><i class="flag zm"></i><span
                                                                class="name">Zambia</span><span class="code">+260</span>
                                                        </li>
                                                        <li class="country" data-isocode="zw" data-mask="+263-_-______">
                                                            <i class="flag zw"></i><span
                                                                class="name">Zimbabwe</span><span
                                                                class="code">+263</span></li>
                                                    </ul>
                                                </div>
                                                <input type="tel" class="cbh-input instId_wirA2rue"
                                                       id="cbh_slider_phone_input" value=""
                                                       placeholder="+374-__-___-___"></div>
                                        </div>
                                    </div>
                                    <div class="cbh-widget-call__btn-area cbh-widget-call__timer">
                                        <button  type="button" class="cbh-widget-call__btn" id="cbh_slider_call_btn">
                                            <div class="sheff sheff--w1b">Call me</div>
                                        </button>
                                        <span id="cbh_slider_countdown_container"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="cbh-widget-callopen-wr cbh-widget-wr">
                    <div onclick="open_phone()" id="phone" class="cbh-widget-callopen cbh-widget-open">
                        <div class="cbh-ph-circle"></div>
                        <div class="cbh-ph-circle-fill"></div>
                        <button onclick="open_phone()" type="button" class="cbh-widget-button">
                            <div class="cbh-video-wrapper">
                                <iframe class="cbh-slider-video" frameborder="0" width="515" height="290"
                                        src="./MercedesBenz_files/saved_resource(2).html"></iframe>
                            </div>
                            <i class="cbh-widget-button-phone"></i><i class="cbh-widget-button-call">Call back</i><i
                                class="cbh-widget-button-logo cbh-rotate-icon"></i></button>
                    </div>
                </div>
                <!--<div class="cbh-widget-callopen-wr cbh-widget-wr" style="right: 0px;">
                    <div class="cbh-widget-callopen ">
                        <div class="cbh-ph-circle"></div>
                        <div class="cbh-ph-circle-fill"></div>
                        <button type="button" class="cbh-widget-button">
                            <div class="cbh-video-wrapper">
                                <iframe class="cbh-slider-video" src="" frameborder="0" height="290"
                                        width="515"></iframe>
                            </div>
                            <i class="cbh-widget-button-phone cbh-rotate-icon"></i><i class="cbh-widget-button-call"
                                                                                      style="">Call back</i><i
                                class="cbh-widget-button-logo"></i></button>
                    </div>
                </div>-->
            </div>
            <div class="cbh-chat-container" id="cbh_chat_container" style="right: 181.8px; bottom: 70px;">
                <div class="cbh-widget-chat cbh-widget-chat_closed">
                    <a  href="#" class="cbh-widget-chat__close cbh-widget__close"><i
                            class="cbh-widget-icon-cancel"></i></a>
                    <div class="cbh-widget-chat__container">
                        <div class="cbh-widget-chat__offices cbh-hide" id="cbh_widget_chat_offices"><select
                                class="cbh-widget-chat__offices_select" id="cbh_widget_chat_offices_select"></select>
                        </div>
                        <div class="cbh-widget-chat__chats"></div>
                        <div class="cbh-widget-chat__error cbh-hide" id="cbh_widget_chat_error"></div>
                    </div>
                    <div class="cbh-widget-chat__lbl"></div>
                </div>
                <div class="cbh-widget-msg-wr cbh-widget-wr cbh-hide">
                    <div class="cbh-widget-msg"><span class="cbh-widget-alert cbh-hide"><div class="cbh-button-balloon"><div
                            class="cbh-button-balloon-box">Unread messages</div></div><span
                            class="cbh-button-balloon-num"></span></span>
                        <button type="button"
                                class="cbh-widget-button cbh-widget-msg__button cbh-widget-button-text-enabled"><i
                                class="cbh-widget-button-msg"></i><i class="cbh-widget-button-chat">Chat</i><i
                                class="cbh-widget-button-logo cbh-rotate-icon"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>