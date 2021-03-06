<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="col-md-3 left_col">
    <div class="left_col scroll-view">


        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile">
            <div class="profile_pic">
                <s:if test="%{isUserThumbFileExist(#session.session_user.id, #session.session_user.photoData.fileName)}">
                    <img class="img-circle profile_img"
                         src="<s:property value='%{getUserThumbImg(#session.session_user.id, #session.session_user.photoData.fileName)}'/>"/>
                </s:if>
                <s:else>
                    <img class="img-circle profile_img"
                         src="<%=request.getContextPath()%>/img/general/avatars/avatar.png" alt=""/>
                </s:else>
            </div>
            <div class="profile_info">
                <span><s:text name="page.home.title.admin">Welcome</s:text>,</span>
                <h2><s:property value="#session.admin.name"/> <s:property value="#session.admin.surname"/></h2>
            </div>
        </div>
        <!-- /menu profile quick info  -->

        <br>

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section active">
                <h3><s:text name="menu.General">General</s:text></h3>
                <ul style="" class="nav side-menu">
                    <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu">
                            <li><a href="admin-about.htm"><s:text name="admin.menu.abouter">About</s:text></a></li>
                            <li><a href="admin-machine.htm"><s:text name="admin.menu.machine">Machine</s:text></a></li>
                            <li><a href="admin-price-list.htm"><s:text name="admin.menu.price">Price List</s:text></a>
                            </li>
                            <li><a href="admin-sketches.htm"><s:text name="admin.menu.sketches">Sketches</s:text></a>
                            </li>
                            <li><a href="admin-work-scheme.htm"><s:text
                                    name="admin.menu.workScheme">Work Scheme</s:text></a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <!-- /sidebar menu -->


    </div>
</div>

