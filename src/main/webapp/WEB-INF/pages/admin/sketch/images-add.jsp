<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/libs/css/jquery-ui-1.11.4.css"
      media="screen">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/libs/js/uploader/jquery.ui.plupload.css"
      media="screen">

<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/jquery/jquery-ui-1.11.4.js"
        charset="UTF-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/uploader/plupload.full.min.js"
        charset="UTF-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/uploader/jquery.ui.plupload.min.js.download"
        charset="UTF-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/libs/js/uploader/themeswitcher.js.download"
        charset="UTF-8"></script>

<script type="text/javascript">// Initialize the widget when the DOM is ready
$(function () {
    var uploader = $("#uploader").plupload({
        // General settings
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: 'pickfiles', // you can pass in id...
        url: "/admin-upload-sketch.htm?sketchId=<s:property value='sketchId'/>",

        // Maximum file size
        max_file_size: '10mb',
        chunk_size: '10mb',

        // Resize images on clientside if we can
//        resize: {
//            width: 200,
//            height: 200,
//            quality: 90,
//            crop: true // crop to exact dimensions
//        },

        // Specify what files to browse for
        filters: [
            {title: "Image files", extensions: "jpg,jpeg,gif,png"},
        ],

        // Rename files by clicking on their titles
        rename: true,

        // Sort files
        sortable: true,

        // Enable ability to drag'n'drop files onto the widget (currently only HTML5 supports that)
        dragdrop: true,

        // Views to activate
        views: {
            list: true,
            thumbs: true, // Show thumbs
            active: 'thumbs'
        },

        // Post init events, bound after the internal events
        init: {

            FileUploaded: function (up, file, info) {

                if (info.response != null) {
                    file.status = plupload.FAILED;
                    this.trigger("Error", {
                        code: "500",
                        message: "aaaaaaaaaaaa",
                        file: file
                    });
                } else {
                    alert("else");
                }
            },

            Error: function (up, args) {
                // Called when error occurs
                console.log('[Error] ', args);
            }
        }
    });

    uploader.init();
})
</script>

<div class="right_col" role="main" style="min-height: 2519px;">
    <div class="clearfix"></div>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>
                        Add new Image
                    </h2>

                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div id="uploader">
                        <p>Your browser doesn't have Flash, Silverlight or HTML5 support.</p>
                    </div>
                    <pre id="console"></pre>
                </div>
            </div>
            <div class="x_panel">
                <div class="x_title">
                    <h2>Media Gallery
                        <small> gallery design</small>
                    </h2>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <div class="row">

                        <p>Media gallery design emelents</p>
                        <s:iterator var="data" value="datas">
                            <s:if test="%{isLogoExist(#data.fileName)}">
                                <div class="col-md-55">
                                    <div class="thumbnail">
                                        <div class="image view view-first">
                                            <img style="width: 100%; display: block;"
                                                 src="<s:property value='%{getLogo(#data.fileName)}'/>" alt="image">
                                            <div class="mask">
                                                <p>Your Text</p>
                                                <div class="tools tools-bottom">
                                                    <a href="admin-sketch-image-default.htm?id=<s:property value="sketchId"/>&mainImageId=<s:property value="#data.id"/>"><i class="fa fa-link"></i></a>
                                                    <a href="#"><i class="fa fa-pencil"></i></a>
                                                    <a href="admin-image-delete.htm?id=<s:property value="#data.id"/>"><i class="fa fa-times"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="caption">
                                            <p>Snow and Ice Incoming for the South</p>
                                        </div>
                                    </div>
                                </div>
                            </s:if>
                        </s:iterator>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
