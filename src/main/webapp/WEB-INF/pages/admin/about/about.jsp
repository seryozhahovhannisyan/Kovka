<%--
  Created by IntelliJ IDEA.
  User: Serozh
  Date: 7/29/2016
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<div class="right_col" role="main" style="min-height: 2519px;"  >
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        <s:text name="admin.menu.about">About</s:text>
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">

                    <div class="row">
                        <div class="user_text_div col-lg-6 col-md-6 col-sm-6 col-xs-8">
                            <!-- message box -->
                            <div class="box-info" <s:if test="%{#session.info == null || #session.info == ''}">style="display: none"</s:if>>
                                <s:property value="#session.info"/>
                                <s:set var="info" scope="session" value=""/>
                            </div>

                            <div class="box-hint" <s:if test="%{#session.message == null || #session.message == ''}">style="display: none"</s:if>>
                                <s:property value="#session.message"/>
                                <s:set var="message" scope="session" value=""/>
                            </div>
                            <!-- message box -->
                        </div>
                    </div>

                    <div class="row">
                        <div id="listContent">
                            <div id="map" style="width:100%;height:600px;"></div>
                        </div>
                    </div>

                </div>

                <div class="x_content">

                    <form id="aboutForm" action="admin-about-edit.htm" method="post" data-parsley-validate="" class="form-horizontal form-label-left"
                          novalidate="">

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="email">
                                <s:text name="menu.about.email">e-mail</s:text>
                                <span class="required">*</span>
                            </label>
                            <div id="email"  class="col-md-6 col-sm-6 col-xs-12">
                                <s:iterator var="email"  value="about.emails">
                                    <input name="emailValues" value='<s:property value="#email"/>'   required="required" class="form-control col-md-7 col-xs-12" type="text"/>
                                </s:iterator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="phone">
                                <s:text name="menu.about.phone">phone</s:text>
                                <span class="required">*</span>
                            </label>
                            <div id="phone"  class="col-md-6 col-sm-6 col-xs-12">
                                <s:iterator var="phone"  value="about.phones">
                                    <input name="phoneValues" value='<s:property value="#phone"/>'  required="required" class="form-control col-md-7 col-xs-12" type="text"/>
                                </s:iterator>
                            </div>

                        </div>

                        <s:iterator var="info" value="about.infos"  status="st">>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="<s:property value="#info.language.key"/>">
                                    <s:property value="#info.language.title"/>
                                </label>
                                <div id="<s:property value="#info.language.key"/>"  class="col-md-6 col-sm-6 col-xs-12">
                                    <input name="infosForEdit[<s:property value="#st.index"/>].id" value='<s:property value="#info.id"/>' type="hidden" />
                                    title:<input name="infosForEdit[<s:property value="#st.index"/>].title" value='<s:property value="#info.title"/>'   class="form-control col-md-7 col-xs-12" type="text"/>
                                    address:<input name="infosForEdit[<s:property value="#st.index"/>].address" value='<s:property value="#info.address"/>'   class="form-control col-md-7 col-xs-12" type="text"/>
                                    shortDesc:<input name="infosForEdit[<s:property value="#st.index"/>].shortDesc" value='<s:property value="#info.shortDesc"/>'   class="form-control col-md-7 col-xs-12" type="text"/>
                                    description:<input name="infosForEdit[<s:property value="#st.index"/>].description" value='<s:property value="#info.description"/>'   class="form-control col-md-7 col-xs-12" type="text"/>


                                </div>
                            </div>
                        </s:iterator>



                    </form>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button class="btn btn-primary" type="button" onclick="goToAction('/user-home.htm')">Menu</button>
                            <button class="btn btn-add" type="button "onclick="addEmail()">Add Email</button>
                            <button class="btn btn-add" type="button" onclick="addPhone()">Add Phone</button>
                            <button class="btn btn-primary" type="reset">Reset</button>
                            <button type="button" class="btn btn-success" onclick="submitForm()">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script>
    var marker;
    function submitForm(){
        var coord = marker.position;
        alert(coord)
//        $('#aboutForm').submit();
    }
    function addEmail(){
        $('#email').append('<input name="emailValues"  required="required" class="form-control col-md-7 col-xs-12" type="text"/>');
    }
    function addPhone(){
        $('#phone').append('<input name="phoneValues"  required="required" class="form-control col-md-7 col-xs-12" type="text"/>');
    }

    function initMap() {

        var latitude='<s:property value="latitude"/>';
        var longitude='<s:property value="longitude"/>';

        var myLatLng = {lat: Number(latitude), lng: Number(longitude)};


        var map = new google.maps.Map(document.getElementById('map'), {
            zoom:16,
            center: myLatLng
        });

        marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            animation: google.maps.Animation.DROP,
            title: 'Hello World!',
            draggable:true,
        });
        marker.addListener('click', toggleBounce);
    }

    function toggleBounce() {
        if (marker.getAnimation() !== null) {
            marker.setAnimation(null);
        } else {
            marker.setAnimation(google.maps.Animation.BOUNCE);
        }
    }
</script>

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA1ju2JGoRHLOsDZQTktv6J8zLa6XrvUXA&callback=initMap">
</script>


