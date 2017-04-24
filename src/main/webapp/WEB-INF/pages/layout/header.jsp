
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- top navigation -->
<div class="top_nav">
    <div class="nav_menu">
        <nav class="" role="navigation">
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <div class="header_logo_block" >
                <a href="admin-home.htm" class="site_title">
                    <img src="<%=request.getContextPath()%>/img/guest/logo-16.jpg" alt="<s:text name="alt.main.Logo">Logo</s:text>" />
                </a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="admin-home.htm" class="user-profile dropdown-toggle" data-toggle="dropdown"
                       aria-expanded="false">
                        <s:if test="%{isUserThumbFileExist(#session.session_user.id, #session.session_user.photoData.fileName)}">
                            <img class="user-prof-pic" src="<s:property value='%{getUserThumbImg(#session.session_user.id, #session.session_user.photoData.fileName)}'/>" />
                        </s:if>
                        <s:else>
                            <img class="user-prof-pic" src="<%=request.getContextPath()%>/img/general/avatars/avatar.png" alt=""/>
                        </s:else>
                        <s:property value="#session.admin.name"/>&nbsp;<s:property value="#session.admin.surname"/>
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                        <li><a href="admin-help.htm"><s:text name="header.Help">Help</s:text></a></li>
                        <li><a href="admin-logout.htm"><i class="fa fa-sign-out pull-right"></i><s:text name="header.Sign.Out">Sign Out</s:text></a></li>
                    </ul>
                </li>

                <li role="presentation" class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown"
                       aria-expanded="false">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-green">6</span>
                    </a>
                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                        <li>
                            <a>
                                <span class="image"> <img src="<%=request.getContextPath()%>/mock/demo_files/img.jpg" alt="Profile Image"></span>
                            <span>
                              <span>John Smith</span>
                              <span class="time">3 mins ago</span>
                            </span>
                            <span class="message">
                              Film festivals used to be do-or-die moments for movie makers. They were where...
                            </span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>

</div>
<!-- /top navigation -->
