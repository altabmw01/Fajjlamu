jQuery(document).ready(function ($) {
    $.noConflict();

    commonFn($);
    ajaxFn($);
    ajaxImgFn($);
    ajaxDataGridFn($);
    valByAtt($);
    ajaxFnCheck($);
    ajaxFnRoutesCheck($);
    ajaxFnUserCheck($);
    ajaxResultsFn($);

    //tinymce.init({
    //    selector: "",
    //    theme: "modern",
    //    width: "100%",
    //    height: "400",
    //    plugins: [
    //        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
    //        "searchreplace wordcount visualblocks visualchars fullscreen code",
    //        "insertdatetime media nonbreaking save table contextmenu directionality",
    //        "emoticons template paste textcolor colorpicker textpattern imagetools"
    //    ],
    //    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
    //    toolbar2: "print preview media | forecolor backcolor emoticons | code",
    //    image_advtab: true,
    //    templates: [
    //        {title: 'Test template 1', content: 'Test 1'},
    //        {title: 'Test template 2', content: 'Test 2'}
    //    ],
    //    setup: function (editor) {
    //        editor.on('change', function () {
    //            editor.save();
    //        });
    //    }
    //});
});
var delay = (function () {
    var timer = 0;
    return function (callback, ms) {
        clearTimeout(timer);
        timer = setTimeout(callback, ms);
    };
})();

/**
 *
 * @param $
 */
commonFn =
    function ($) {
        $('#date').datetimepicker({
            timepicker: false,
            //format: 'Y-m-d',
            format: 'm/d/Y'
        });
        $('#date1').datetimepicker({
            timepicker: false,
            format: 'm/d/Y'
        });
        $('#date2').datetimepicker({
            timepicker: false,
            format: 'm/d/Y'
        });
        $('#date3').datetimepicker({
            timepicker: false,
            format: 'm/d/Y'
        });
        $('#date_mask').datetimepicker({
            timepicker: false,
            mask: true // '9999/19/39 29:59' - digit is the maximum possible for a cell
        });
        $('#datewithtime').datetimepicker({
            timepicker: true,
            format: 'm/d/Y h:m'
        });
    };
/**
 *
 * @param $
 * @param id
 * @param attname
 */
valByAtt =
    function ($, id, attname) {
        var p = $("table#" + id).attr("dataid");
        return p;
    };

/**
 *
 * @param $
 * @param btnid
 * @param routes
 * @param fieldval
 * @param showondiv
 */
ajaxFnUserCheck =
    function ($, btnid, routes, fieldval, showondiv) {
        $(btnid).click(function () {
            delay(function () {
                var fval = $(fieldval).val();
                //var isexistscheck = baseurl + 'usersexists/' + fval + '?userpage=true';
                $.ajax({
                    url: baseurl + routes + '/' + fval + '?userpage=true',
                    success: function (data) {
                        console.log(data.msg);
                        if (data.status == 0)
                        //$(showondiv).html(data.msg);
                            alert(data.msg);
                        else
                            window.location.href = baseurl + 'overview/' + fval + '?userpage=true';
                    }
                });
            }, 200);
        });
    };

/**
 *
 * @param $
 * @param btnid
 * @param routes
 */
ajaxResultsFn =
    function ($, btnid, routes, setvalues) {
        $(btnid).click(function () {
            var examm = $('#examm').val();
            var classs = $('#classs').val();
            var section = $('#section').val();
            var subject = $('#subject').val();
            var groupp = $('#groupp').val();
            var getvalues = '?examm=' + (examm === 0 ? 0 : examm) + '&classs=' + (classs === 0 ? 0 : classs) + '&section=' + (section === 0 ? 0 : section) + '&subject=' + (subject === 0 ? 0 : subject) + '&groupp=' + (groupp === 0 ? 0 : groupp);
            //alert(getvalues);
            //window.location.href = baseurl + routes + getvalues;
            var url = baseurl + routes + getvalues;
            var setval = baseurl + setvalues + getvalues;
            //alert();
            $.ajax({
                url: url,
                success: function (data) {
                    console.log(data.msg);
                    if (data.status == 0) {
                        //$('#loadmessagehere').load(setval + " #loadmessagehere");
                        window.location.href = setval;
                    } else {
                        //$('#loadmessagehere').load(setval + " #loadmessagehere");
                        window.location.href = setval;
                    }
                }
            });
        });
    };

/**
 *
 * @param $
 * @param fieldid
 * @param routes
 * @param showondiv
 */
ajaxFnCheck =
    function ($, fieldid, routes, showondiv) {
        $(fieldid).keyup(function () {
            delay(function () {
                var fval = $(fieldid).val();
                //var ifexists = fval.toLowerCase().replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '');
                $.ajax({
                    url: baseurl + routes + '/' + fval,
                    //url: baseurl + 'check/' + ifexists,
                    success: function (data) {
                        $(showondiv).html(data.msg);
                        // if you want to replace the data in div, use .html()
                        //or if you want to append the data user .append()
                    }
                });
            }, 1000);
        });
    };
/**
 *
 * @param $
 * @param fieldid
 * @param routes
 * @param showondiv
 * @param showonfield
 */
ajaxFnRoutesCheck =
    function ($, fieldid, routes, showondiv, showonfield) {
        $(fieldid).keyup(function () {
            delay(function () {
                var fval = $(fieldid).val();
                var ifexists = fval.toLowerCase().replace(/[^a-z0-9\s]/gi, '').replace(/[_\s]/g, '');
                $(showonfield).val(ifexists);
                $(showonfield).html(ifexists);
                $.ajax({
                    url: baseurl + routes + '/' + ifexists,
                    //url: baseurl + 'check/' + ifexists,
                    success: function (data) {
                        $(showondiv).html(data.msg);
                        // if you want to replace the data in div, use .html()
                        //or if you want to append the data user .append()
                    }
                });
            }, 1000);
        });
    };
/**
 *
 * @param $
 * @param formid
 * @param routes
 *
 */
ajaxFn =
    function ($, formid, routes) {
        //$('#basicInformationForm').bootstrapValidator({
        $(formid).bootstrapValidator({
            excluded: false,
            //excluded: [':disabled', ':hidden', ':not(:visible)'],
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            live: 'enabled',
            message: 'This value is not valid',
            //submitButtons: ,
            submitHandler: function (validator, form, submitButton) {
                //var url = baseurl + 'modifybasicinformation';
                var url = baseurl + routes;
                $.ajax({
                    type: "post",
                    url: url,
                    cache: false,
                    //data: $('#basicInformationForm').serialize(),

                    data: $(form).serialize(),
                    success: function (data) {
                        console.log(data);
                        $('.msgbox').html(data.msg).show().addClass('alert-success').delay(2000).fadeOut();
                        //alert();
                        window.location.reload(true);
                    },
                    error: function (data) {
                        console.log(data);
                        //$('.alert').html(data.msg).show();
                        $('.msgbox').html(data.msg).show().addClass('alert-danger').delay(2000).fadeOut();
                    }
                });
            },
            trigger: null
        });
    };
/**
 *
 * @param $
 * @param formid
 * @param routes
 *
 */
ajaxFnFe =
    function ($, formid, routes, getparams) {
        //$('#basicInformationForm').bootstrapValidator({
        $(formid).bootstrapValidator({
            excluded: false,
            //excluded: [':disabled', ':hidden', ':not(:visible)'],
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            live: 'enabled',
            message: 'This value is not valid',
            //submitButtons: ,
            submitHandler: function (validator, form, submitButton) {
                //var url = baseurl + 'modifybasicinformation';
                var url = baseurl + routes;
                $.ajax({
                    type: "post",
                    url: url,
                    cache: false,
                    //data: $('#basicInformationForm').serialize(),
                    data: $(form).serialize(),
                    success: function (data) {
                        console.log(data);
                        $('.msgbox').html(data.msg).show().addClass('alert-success').delay(2000).fadeOut();
                        //alert();
                        var url1 = window.location.href;
                        if (data.status == 1) {
                            if (getparams == '?step=1') {
                                url1 += getparams + '&getrandomid=' + data.randomcode;
                            } else if (getparams == '?step=2') {
                                url1 = getparams + '&getrandomid=' + data.randomcode;
                            }
                        }
                        window.location.href = url1;
                    },
                    error: function (data) {
                        console.log(data);
                        //$('.alert').html(data.msg).show();
                        $('.msgbox').html(data.msg).show().addClass('alert-danger').delay(2000).fadeOut();
                    }
                });
            },
            trigger: null
        });
    };

/**
 *
 * @param $
 * @param formid
 * @param routes
 */
ajaxImgFn =
    function ($, formid, routes) {
        //$('#basicInformationForm').bootstrapValidator({
        $(formid).bootstrapValidator({
            excluded: false,
            //excluded: [':disabled', ':hidden', ':not(:visible)'],
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            live: 'enabled',
            message: 'This value is not valid',
            //submitButtons: ,
            submitHandler: function (validator, formid) {
                //var url = baseurl + 'modifybasicinformation';
                var url = baseurl + routes;
                var form = $(formid);
                var formData = new FormData($(form)[0]);
                $.ajax({
                    type: 'POST',
                    dataType: 'JSON',
                    url: url,
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        console.log(data);
                        $(".msgbox").html(data.msg).show().delay(3000).fadeOut();
                        //alert();
                        window.location.reload(true);
                    },
                    error: function (data) {
                        $(".msgbox").html(data.msg).show().delay(3000).fadeOut();
                    },
                });
            },
            trigger: null
        });
    };
/**
 *
 * @param $
 * @param formid
 * @param routes
 */
ajaxImgFnFe =
    function ($, formid, routes, getparams) {
        //$('#basicInformationForm').bootstrapValidator({
        $(formid).bootstrapValidator({
            excluded: false,
            //excluded: [':disabled', ':hidden', ':not(:visible)'],
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            live: 'enabled',
            message: 'This value is not valid',
            //submitButtons: ,
            submitHandler: function (validator, formid) {
                //var url = baseurl + 'modifybasicinformation';
                var url = baseurl + routes;
                var form = $(formid);
                var formData = new FormData($(form)[0]);
                $.ajax({
                    type: 'POST',
                    dataType: 'JSON',
                    url: url,
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function (data) {
                        console.log(data);
                        $('.msgbox').html(data.msg).show().addClass('alert-success').delay(2000).fadeOut();
                        //alert();
                        var url1 = window.location.href;
                        if (data.status == 1) {
                            //url1 += '?param=1'
                            if (getparams == '?step=3') {
                                url1 = getparams + '&getrandomid=' + data.randomcode;
                            }
                        }
                        window.location.href = url1;
                    },
                    error: function (data) {
                        $(".msgbox").html(data.msg).show().delay(3000).fadeOut();
                    },
                });
            },
            trigger: null
        });
    };
ajaxRemoveFn =
    function (id, routes) {
        bootbox.confirm("Are you sure?", function (result) {
            if (result == true) {
                var url = baseurl + routes;
                jQuery.ajax({
                    type: 'GET',
                    dataType: 'JSON',
                    url: url,
                    data: id,
                    success: function (data) {
                        jQuery('.msgbox').html(data.msg).show().addClass('alert-success').delay(2000).fadeOut();
                        //$(loadclass).load(window.location + " " + loadclass);
                        window.location.reload(true);
                        //alert('Success');
                    },
                    error: function (data) {
                        jQuery("#errormsg").html(data.msg + " Failed to Delete").show().delay(3000).fadeOut();
                    }
                });
            } else {
                return false;
            }
        });
    };
/**
 * Its for direct use
 * Use as follows
 * <a href="javascript:void(0)" class="btn btn-danger pull-right"
 * onclick="ajaxDeleteFn($, <?php __e($userinformation->EducationID); ?>, 'deleteeducation/<?php __e($userinformation->EducationID); ?>')">
 *     <span class="fa fa-times"></span>
 * </a>
 * @param $
 * @param id
 * @param routes
 */
ajaxDeleteFn =
    function ($, id, routes) {
        bootbox.confirm("Are you sure?", function (result) {
            if (result == true) {
                var url = baseurl + routes;
                jQuery.ajax({
                    type: 'GET',
                    dataType: 'JSON',
                    url: url,
                    data: id,
                    success: function (data) {
                        $('.msgbox').html(data.msg).show().addClass('alert-success').delay(2000).fadeOut();
                        //$(loadclass).load(window.location + " " + loadclass);
                        window.location.reload(true);
                    },
                    error: function (data) {
                        $("#errormsg").html(data.msg + " Failed to Delete").show().delay(3000).fadeOut();
                    }
                });
            } else {
                return false;
            }
        });
    };
/**
 * Data Grid Generator
 * @param $
 * @param formid Form HTML ID
 * @param routes CI routes which I used
 */
ajaxDataGridFn =
    function ($, formid, routes, colsarr) {
        $(formid).dataTable({
            "serverSide": true,
            "processing": true,
            "searching": false,
            "ajax": {
                "url": baseurl + routes,
                "type": "POST"
            },
            "aoColumnDefs": colsarr
        });

    };
///**
// *
// * @param $
// * @param editableobject
// */
//ajaxShowEdit =
//    function ($, editableobject) {
//        $(editableobject).css("background", "#FFF");
//    };
///**
// *
// * @param $
// * @param editableobject
// * @param column
// * @param id
// */
//ajaxSaveToDatabase =
//    function ($, editableobject, column, routes, id) {
//        $(editableobject).css("background", "#FFF url(loaderIcon.gif) no-repeat right");
//        $.ajax({
//            url: baseurl + routes + '/' + id,
//            type: "POST",
//            data: 'column=' + column + '&editval=' + editableobject.innerHTML + '&id=' + id,
//            success: function (data) {
//                $(editableobject).css("background", "#FDFDFD");
//            }
//        });
//    };