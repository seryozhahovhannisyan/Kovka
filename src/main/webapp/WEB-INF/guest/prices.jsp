<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

</div><!-- .widget-area -->
</div><!-- .sidebar-top-full -->
</div><!-- .header-wrap -->
</div>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/guest/skin_002.css" type="text/css" media="screen">

<div class="main-area">
    <div class="main-wrapper right-sidebar ">

        <div class="site-content">

            <div class="content">

                <div class="content-container">

                    <article id="post-466" class="post-466 page type-page status-publish hentry">

                        <header class="entry-header">

                            <h1 class="entry-title"><s:text name="menu.price">Цены</s:text></h1>


                        </header><!-- .entry-header -->

                        <div class="entry-content">
                            <div class="vc_row wpb_row vc_row-fluid">
                                <div class="wpb_column vc_column_container vc_col-sm-12">
                                    <div class="vc_column-inner ">
                                        <div class="wpb_wrapper">
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <p>
                                                        <span style="color: #000000;">
                                                            <img class="size-full wp-image-316 alignleft"
                                                            src="<%=request.getContextPath()%>/img/guest/guarantee07-1.png"
                                                            alt="" width="100" height="156"/>
                                                            <s:text name="price.list.title1">100% гарантия низкой цены на кованые изделия. В отличие от многих наших конкурентов, выставочных залов и других продавцов кованых изделий, мы с уверенностью можем сказать, что даём гарантию наших цен. Это означает, что в ценообразование входит стоимость металла, и покраска.</s:text>
                                                        </span>
                                                    </p>
                                                    <p>
                                                        <span style="color: #000000;"><s:text name="price.list.title2">Отдельно оплачивается только доставка и монтаж изделий, о чем мы сразу предупреждаем клиентов. В некоторых случаях мы осуществляем доставку бесплатно. Мы гарантированно фиксируем утвержденные в договоре цены на кованые изделия и работу. С нами можно договориться!</s:text></span>
                                                    </p>

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
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <div class="table-responsive"
                                                         style="max-width: 100%; overflow: auto;">
                                                        <table style="width: 977px;">
                                                            <tbody>
                                                            <tr>
                                                                <td style="width: 248px;"><span style="color: #000000;"><strong><s:text name="price.list.name">Наименование</s:text></strong></span> </td>
                                                                <td style="width: 231.8px;"><span style="color: #000000;"><strong><s:text name="price.list.budgetary">Бюджетные</s:text></strong></span></td>
                                                                <td style="width: 216.2px;"><span style="color: #000000;"><strong><s:text name="price.list.standard">Стандартные</s:text></strong></span> </td>
                                                                <td style="width: 166px;"><span style="color: #000000;"><strong><s:text name="price.list.premium">Премиальные</s:text></strong></span> </td>
                                                                <td style="width: 118px;"><span style="color: #000000;"><strong><s:text name="price.list.productionTime">Сроки изготовления</s:text> </strong></span> </td>
                                                            </tr>
                                                            <s:iterator var="price" value="priceLists">
                                                                <tr>
                                                                    <td style="width: 248px;"><span style="color: #000000;"><s:property value="#price.name"/></span></td>
                                                                    <td style="width: 231.8px;"><span style="color: #000000;"><s:property value="#price.budgetary"/></span></td>
                                                                    <td style="width: 216.2px;"><span style="color: #000000;"><s:property value="#price.standard"/></span></td>
                                                                    <td style="width: 166px;"><span style="color: #000000;"><s:property value="#price.premium"/></span></td>
                                                                    <td style="width: 118px;"><span style="color: #000000;"><s:property value="#price.productionTime"/></span></td>
                                                                </tr>
                                                            </s:iterator>

                                                            </tbody>
                                                        </table>
                                                    </div>

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
                                            <div class="wpb_text_column wpb_content_element ">
                                                <div class="wpb_wrapper">
                                                    <p style="text-align: center;">
                                                        <span style="color: #000000;">
                                                            <s:text name="price.list.title3">Стоимость остальных кованых деталей, элементов интерьера, элементов экстерьера, элементов декора, другая мебель и т.д. обсуждается индивидуально.</s:text>
                                                        </span>
                                                    </p>
                                                    <p style="text-align: center;">
                                                        <span style="color: #000000;">
                                                            <s:text name="price.list.title4">Цены представленные в таблице не являются окончательными, с каждым клиентом обсуждаются индивидуальные <span style="color: #ff0000;">СКИДКИ</span>,&nbsp;зависящие от объема работ!</s:text>
                                                        </span>
                                                    </p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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