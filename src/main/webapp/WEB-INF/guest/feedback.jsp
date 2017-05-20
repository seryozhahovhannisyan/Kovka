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

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <div class="content-container">

                    <article id="post-466" class="post-466 page type-page status-publish hentry">

                        <header class="entry-header">

                            <h1 class="entry-title"><s:text name="menu.feedback">Обратная связь</s:text></h1>


                        </header><!-- .entry-header -->

                        <div class="entry-content">

                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <h3 style="text-align: center;">
                                                        <s:text name="feedback.title1">Вызовите нашего мастера для замера</s:text>
                                                        <span style="color: #ff0000;"><s:text name="feedback.title2">БЕСПЛАТНО!</s:text></span>
                                                    </h3>
                                                    <h3 style="text-align: center;">
                                                        <b>
                                                            <s:text name="feedback.title3">Мы изготавливаем любые как <span style="color: #ff0000;">кованые так и сварные изделия</span> из металла! Наши инженеры разработают для Вас эскизы ваших будущих изделий и проконсультируют по выбору типовых и нестандартных решений.</s:text>
                                                        </b>
                                                    </h3>
                                                    <h3 style="text-align: center;">
                                                        <s:text name="feedback.title4">Так же мы принимаем заявки на почту круглосуточно:&nbsp;</s:text>
                                                        <span style="color: #ff0000;"><s:property value="#session.about.firstEmail"/></span>
                                                    </h3>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div role="form" class="wpcf7" id="wpcf7-f39-p141-o1" lang="ru-RU" dir="ltr">
                                                <div class="screen-reader-response"></div>
                                                <form action="/send-feedback.htm" method="post" class="wpcf7-form" enctype="multipart/form-data" novalidate="novalidate">

                                                    <p>
                                                        <span style="color: #000000;">
                                                            <label><s:text name="feedback.form.name">Ваше имя (обязательно)</s:text>
                                                                <br>
                                                                    <span class="wpcf7-form-control-wrap your-name">
                                                                        <input type="text" name="name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" />
                                                                    </span>
                                                            </label>
                                                        </span>
                                                    </p>
                                                    <p>
                                                        <span style="color: #000000;">
                                                            <label><s:text name="feedback.form.phone">Ваш телефон (обязательно)</s:text>
                                                                <br>
                                                                    <span class="wpcf7-form-control-wrap tel-883">
                                                                        <input type="tel" name="phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-tel wpcf7-validates-as-required wpcf7-validates-as-tel"/>
                                                                    </span>
                                                            </label>
                                                        </span>
                                                    </p>
                                                    <p>
                                                        <span style="color: #000000;">
                                                            <label><s:text name="feedback.form.email">Ваш e-mail (обязательно)</s:text>
                                                                <br>
                                                                    <span class="wpcf7-form-control-wrap your-email">
                                                                        <input type="email" name="email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email"/>
                                                                    </span>
                                                            </label>
                                                        </span>
                                                    </p>
                                                    <p>
                                                        <span style="color: #000000;">
                                                            <label> <s:text name="feedback.form.subject">Тема</s:text>
                                                                <br>
                                                                    <span class="wpcf7-form-control-wrap your-subject">
                                                                        <input type="text" name="subject" value="" size="40" class="wpcf7-form-control wpcf7-text" >
                                                                    </span>
                                                            </label>
                                                        </span>
                                                    </p>
                                                    <p>
                                                        <span style="color: #000000;">
                                                            <label><s:text name="feedback.form.message">Сообщение</s:text>
                                                                <br>
                                                                <span class="wpcf7-form-control-wrap your-message">
                                                                    <textarea name="message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea>
                                                                </span>
                                                            </label>
                                                        </span>
                                                    </p>

                                                    <p>
                                                        <input type="submit" value="<s:text name="label.send">Отправить</s:text>" class="wpcf7-form-control wpcf7-submit">
                                                        <span class="ajax-loader"></span>
                                                    </p>
                                                    <div class="wpcf7-response-output">
                                                        <s:property value="#session.info"/>
                                                        <s:set var="info" scope="session" value=""/>
                                                        <s:property value="#session.message"/>
                                                        <s:set var="message" scope="session" value=""/>

                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


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