<!DOCTYPE html>
<html page="market" class="farmigo market-new">

    <head>

        <meta http-equiv="cache-control" content="max-age=0" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="CSS/bootstrap.min.css">
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/jquery.min.js"></script>

        <style type="text/css">.gm-style-pbc{transition:opacity ease-in-out;background-color:black;text-align:center}.gm-style-pbt{font-size:22px;color:white;font-family:Roboto,Arial,sans-serif;position:relative;margin:0;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%)}</style>
        <link href="CSS/css.css" rel="stylesheet" type="text/css"><style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style>
        <style type="text/css">
            @media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}
            @media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style>
        <style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}.gm-style img{max-width:none}</style>
        <link type="image/x-icon" rel="shortcut icon" href="https://www.farmigo.com/site/common/images/favicon.png">
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">


        <link type="text/css" rel="stylesheet" href="CSS/main.css">
        <link type="text/css" rel="stylesheet" href="CSS/MyFontsWebfontsKit.css">
        <title>Market | Farmigo Food Community</title>

        <link rel="icon" href="/images/farmigo-app-icon.png">
        <link rel="apple-touch-icon" href="/images/farmigo-app-icon.png">


        <!--Order _ Farmigo Food Community -->


        <!-- Facebook open graph meta tags -->
        <meta property="og:title" content="">
        <meta property="og:description" content="">
        <meta property="og:image" content="">

        <script src="Order _ Farmigo Food Community/inspectlet.js" id="inspsync" async="" type="text/javascript"></script>          
        <script src="Order _ Farmigo Food Community/pd9trnhx" async="" type="text/javascript"></script>            
        <script style="" src="Order _ Farmigo Food Community/fbevents.js" async=""></script>
        <script src="Order _ Farmigo Food Community/roundtrip.js" async="" type="text/javascript"></script>
        <script src="Order _ Farmigo Food Community/gtm.js" async=""></script>


        <script type="text/javascript">

            function loadLabel1() {
                //alert("Label is loaded");
                loadLabel();
            }

            function loadLabel() {

                $.ajax({
                    url: "http://<%=com.test.util.ServerHostPort.getHostDomainName() + ":" + com.test.util.ServerHostPort.PORT%>/ServletController?commande=countlignecmd",
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        $('#id_countlignecmd').html(data.id_countlignecmd);
                    }
                });
            }
            ;

        </script>





        <script id="farmigo-data">
            // Used only for basic server data
            var Farmigo = {
                serverData: {
                    farmKey: 'null',
                    pickupSiteKey: 'null',
                    isProduction: true,
                    isIos: false,
                    urls: {
                        howItWorks: 'how-it-works',
                        faq: 'http://help.farmigo.com',
                        contact: 'http://help.farmigo.com/hc/en-us/requests/new',
                        producerStandards: '/producer-standards',
                        login: '/login',
                        organizerDashboard: 'https://www.farmigo.com/go',
                        csaSoftware: 'http://www.csamanagementsoftware.com ',
                        start: 'start'
                    },
                    facebookAppId: '148203751875853',
                    version: '2016-07-03-1046'
                }
            };

            var landingPageDate = '';


            // For better load time - get the big data needed for the app before anything is loaded in parallel.
            var loadInitialData = function (dataType, requestUrl, requestData) {
                var xmlhttp = new XMLHttpRequest();

                Farmigo.initialDataType = dataType;
                xmlhttp.onreadystatechange = function () {
                    var event, eventName = 'initialDataReady';

                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                        Farmigo.initialData = JSON.parse(xmlhttp.responseText);
                        Farmigo.initialDataTimeStamp = new Date().getTime();

                        if (document.createEvent) {
                            event = document.createEvent("HTMLEvents");
                            event.initEvent(eventName, true, true);
                        } else {
                            event = document.createEventObject();
                            event.eventType = eventName;
                        }

                        event.eventName = eventName;

                        if (document.createEvent) {
                            document.dispatchEvent(event);
                        } else {
                            document.dispatchEvent.fireEvent("on" + event.eventType, event);
                        }
                    }
                };

                xmlhttp.open("POST", requestUrl, true);
                xmlhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xmlhttp.send(requestData);
            };


            loadInitialData('communities', '/dispatcher/MarketService.getCommunities');

            window.onerror = function (msg, file, line, col, error) {
                Farmigo.loggerData = Farmigo.loggerData ? Farmigo.loggerData + error : error;
            };
        </script>


        <script>window.INTERCOM_APP_ID = 'pd9trnhx';
            (function () {
                var w = window;
                var ic = w.Intercom;
                if (typeof ic === "function") {
                    ic('reattach_activator');
                    ic('update', intercomSettings);
                } else {
                    var d = document;
                    var i = function () {
                        i.c(arguments)
                    };
                    i.q = [];
                    i.c = function (args) {
                        i.q.push(args)
                    };
                    w.Intercom = i;
                    function l() {
                        var s = d.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = 'https://widget.intercom.io/widget/' + window.INTERCOM_APP_ID;
                        var x = d.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                    if (w.attachEvent) {
                        w.attachEvent('onload', l);
                    } else {
                        w.addEventListener('load', l, false);
                    }
                }
            })()</script>




        <!-- Begin Inspectlet Embed Code -->
        <script type="text/javascript" id="inspectletjs">
            window.__insp = window.__insp || [];
            __insp.push(['wid', 1613139788]);
            (function () {
                function __ldinsp() {
                    var insp = document.createElement('script');
                    insp.type = 'text/javascript';
                    insp.async = true;
                    insp.id = "inspsync";
                    insp.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://cdn.inspectlet.com/inspectlet.js';
                    var x = document.getElementsByTagName('script')[0];
                    x.parentNode.insertBefore(insp, x);
                }
                if (window.attachEvent) {
                    window.attachEvent('onload', __ldinsp);
                } else {
                    window.addEventListener('load', __ldinsp, false);
                }
            })();
        </script>

        <!-- End Inspectlet Embed Code -->

        <!-- SessionCam Client Integration v6.0 -->
        <script type="text/javascript">
            //<![CDATA[
            var scRec = document.createElement('SCRIPT');
            scRec.type = 'text/javascript';
            scRec.src = "//d2oh4tlt9mrke9.cloudfront.net/Record/js/sessioncam.recorder.js";
            document.getElementsByTagName('head')[0].appendChild(scRec);
            //]]>
        </script>
        <!-- End SessionCam -->

        <script>
            Farmigo.enums = {"MemberType": {"All": "All", "New": "New", "Existing": "Existing"}, "EnumOrderLockReason": {"AdminHold": "AdminHold", "AdminHoldPaymentIssue": "AdminHoldPaymentIssue", "SubscriptionCanceled": "SubscriptionCanceled", "NoDeliveries": "NoDeliveries", "Other": "Other"}, "ShareStatus": {"TEMPORALLY_UNAVAILABLE": "TEMPORALLY_UNAVAILABLE", "UNAVAILABLE": "UNAVAILABLE", "AVAILABLE": "AVAILABLE"}, "EnumStatus": {"Published": "Published", "Open": "Open", "Pending": "Pending", "Closed": "Closed", "Unpublished": "Unpublished", "Canceled": "Canceled", "Relaunch": "Relaunch"}, "EnumSigninStatus": {"Ok": "Ok", "Unauthorized": "Unauthorized", "WrongEmail": "WrongEmail", "WrongPassword": "WrongPassword", "ChangePassword": "ChangePassword", "EmailSendFailed": "EmailSendFailed", "OkExistingForFarm": "OkExistingForFarm"}, "EnumRegion": {"NY": "NY", "SF": "SF", "SEA": "SEA"}};
        </script>


        <!-- Production -->
        <!-- Google Tag Manager -->
    <noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-MR23K8"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({'gtm.start':
                        new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    '//www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-MR23K8');</script>
    <!-- End Google Tag Manager -->


    <script src="Order _ Farmigo Food Community/js" data-requiremodule="https://maps.google.com/maps/api/js?v=3&amp;libraries=geometry&amp;callback=gmapsLoaded&amp;key=AIzaSyAfANpgkDJZ9xA6_PeUIy0PhJbC75OMruc" data-requirecontext="_" async="" charset="utf-8" type="text/javascript"></script>
    <script src="Order _ Farmigo Food Community/SELO23IX2NEGTPTHWLNOAI" type="text/javascript" async="true"></script>
    <script src="Order _ Farmigo Food Community/common.js" charset="UTF-8" type="text/javascript"></script>
    <script src="Order _ Farmigo Food Community/map.js" charset="UTF-8" type="text/javascript"></script>
    <script src="Order _ Farmigo Food Community/util.js" charset="UTF-8" type="text/javascript"></script>
    <script src="Order _ Farmigo Food Community/geocoder.js" charset="UTF-8" type="text/javascript"></script>
    <script src="Order _ Farmigo Food Community/marker.js" charset="UTF-8" type="text/javascript"></script>
    <div style="width: 1px; height: 1px; display: inline; position: absolute;">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_004.gif" height="1" width="1"></div>
    <div style="width: 1px; height: 1px; display: inline; position: absolute;">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_002.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_003.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_007.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_008.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_005.gif" height="1" width="1">
        <img style="border-style:none;" alt="" src="Order _ Farmigo Food Community/out_006.gif" height="1" width="1">
    </div>
   
    <style type="text/css">
        .fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}.fb_link img{border:none}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
        .fb_dialog{background:rgba(82, 82, 82, .7);
                   position:absolute;top:-10000px;
                   z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;
                                                                                       -moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
                                                                                                                                               _background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f6f7f9;border:1px solid #606060;
                                                                                                                                                                                                        font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{width:auto;height:auto;min-height:initial;min-width:initial;background:none}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{color:#fff;display:block;padding-top:20px;clear:both;font-size:18px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;bottom:0;left:0;right:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29487d;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f6f7f9;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v2/yD/r/t-wz8gw1xG1.png);background-repeat:no-repeat;background-position:50% 50%;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
        .fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://static.xx.fbcdn.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
    </style>

</head>


<body>

    <div class="main-region">
        <header id="header-region"><div>
                <div class="navbar-wrapper">
                    <div class="navbar navbar-fixed-top" role="navigation">
                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="https://www.farmigo.com/" target="_blank">Farmigo</a>
                                <div id="header-search-region" class="header-search visible-xs"></div>
                                <ul class="nav navbar-nav">
                                    <li class="community dropdown">
                                        <a class="dropdown-toggle">
                                            <div class="hidden-xs">
                                                <div>
                                                    Community:

                                                </div>
                                                <span class="name">Farm to You - Brooklyn</span>
                                                <span class="caret"></span>
                                            </div>
                                            <div class="visible-xs">
                                                <span class="name">Farm to You </span>
                                                <i class="info">i</i>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <!--<div class="share-search hidden-xs"></div>-->
                            </div>


                            <div class="navbar-collapse collapse">


                                <ul class="nav navbar-nav navbar-right">

                                    <li class="hidden-xs">
                                        <a href="about.jsp" class="login simple-link">About</a>
                                    </li>


                                    <li class="learn-more dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown"> <%= session.getAttribute("nom")%> <span class="caret"></span></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li>
                                                <a class="faq" href="ServletController?cmd=updateClient.jsp&commande=updateClient" target="_self" data-analytics-category="header" data-analytics-action="Profil">Profil</a>
                                            </li>
                                            <li>
                                                <a class="faq" href="ServletController?cmd=ListCommandes.jsp&commande=listCommandes" target="_self" data-analytics-category="header" data-analytics-action="vos commandes">vos commandes</a>
                                            </li>  
                                            <li>                                               
                                                <a class="faq" href="ServletController?cmd=mail_form.jsp&commande=mail_form" target="_self" data-analytics-category="header" data-analytics-action="contact">contact</a>
                                            </li>                                          
                                            <li>                                             
                                                <form method="post" action="ServletController">
                                                    <input type="hidden" name="commande" value="logout" id="commande" />
                                                    <input type="submit" value="Logout"/>
                                                </form>  
                                            </li>
                                        </ul>                                                                                                                     
                                    </li>
                                </ul>
                            </div>




                            <ul class="main-nav nav navbar-nav navbar-right">

                                <li class="">
                                    <a  href="ServletController?cmd=Producteur_Farmigo Food Community.jsp&commande=Producteurs"  class="market nav-option ">
                                        <div>
                                            <i class="hidden-xs"></i>
                                            <span class="text">Producteurs</span>
                                        </div>
                                    </a>
                                </li>

                                <li class="">
                                    <a href="ServletController?cmd=Market_Farmigo Food Community.jsp&commande=Market" class="market nav-option ">
                                        <div>
                                            <i class="hidden-xs"></i>
                                            <span class="text">Market</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="order-tab-wrapper ">

                                    <a  href="ServletController?commande=MyBagLink" title="" data-original-title="" class="order nav-option active ">
                                        <div>

                                            <span  class="text">

                                                <img  onload="loadLabel1()"  src="img1.svg"/>
                                                My Bag  
                                                <button  style="background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;ext-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2p;border-radius: 50%;">
                                                    <label id="id_countlignecmd"> 
                                                        <% out.print(AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance()).getNbrLigneCmd(session.getAttribute("id_client").toString())); %>
                                                    </label>
                                                </button>

                                            </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>



        <section id="market-header-region">


            <section id="help-tab-region"></section>
            <section id="main-region">
                <div class="shares-module">
                    <div id="shares-header">
                        <div>
                            <div id="categories"><div>
                                    <div class="container">
                                        <div class="nav-tabs-wrapper">
                                            <style>


                                                li#id1  {
                                                    float: left;
                                                }

                                                li#id1 a {
                                                    display: block;
                                                    color: white;
                                                    text-align: center;
                                                    padding: 14px 16px;
                                                    text-decoration: none;
                                                }

                                                li#id1 a#id1:hover {
                                                    background-color: #4CAF50;
                                                }

                                            </style>


                                            <ul id="id1" class="nav nav-tabs stretch">

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="sub-menu">
                                <div><div id="sub-categories">

                                    </div>
                                </div>

                            </div>
                        </div>           
                    </div>
                    <%--      <div id="tab-content">  --%>

                    <div id="category-layout">
                    </div>
                    <div id="shares">
                        <div>
                            <div class="container widgets-container">



                                <div id="region-favorites-items" class="">
                                    <div>
                                        <div class="carousel-widget">
                                            <div id="carousel-region">
                                                <div class="compact compact-carousel">
                                                    <div class="row">
                                                        <div class="shares-title-wrapper">
                                                            <div class="shares-title-container clearfix">

                                                                <div class="title col-xs-9 vbottom">
                                                                    <h3 class="shares-title"> Listes des commandes</h3>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <%@page import="java.text.NumberFormat"%>
                                    <%@page import="java.util.Locale"%>
                                    <%@page import="java.math.RoundingMode"%>
                                    <%@page import="java.math.BigDecimal"%>
                                    <%@page import="org.json.simple.JSONObject"%>
                                    <%@page import="java.util.Date,java.text.SimpleDateFormat,com.test.entity_lifecycle.AppDAO,com.test.entity_lifecycle.AppDaoImpl,com.test.entity_lifecycle.Commande,com.test.entity_lifecycle.LigneCommande,com.test.entity_lifecycle.DaoFactory,java.util.List,com.test.entity_lifecycle.Produit" %>
                                    <%@page contentType="text/html" pageEncoding="UTF-8"%>
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

                                    <%

                                        AppDAO appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());

                                        pageContext.setAttribute("id_client", session.getAttribute("id_client"));

                                        int id_client = ((Integer) session.getAttribute("id_client")).intValue();

                                        System.out.println("DEBUG dans MyBagCommande.jsp code:1000 id_client= " + id_client);

                                        System.out.println("DEBUG  dans MyBagCommande.jsp code:2000 Commande.id_commande= " + ((Integer) request.getAttribute("Commande.id_commande")).intValue());

                                        List<Commande> listeCommandesStatusPL = appDao.listerCommandeStatusPL(id_client);
                                        pageContext.setAttribute("listeCommandesStatusPL", listeCommandesStatusPL);

                                        Commande commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);

                                        if (commandeStatusENCOURS == null) {
                                            Date dNow = new Date();
                                            SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");

                                            System.out.println("DEBUG Create commande : Current Date: " + ft.format(dNow));

                                            commandeStatusENCOURS = appDao.createCommande("0", new SimpleDateFormat("dd-MM-yy  HH:mm").format(new Date()), id_client, "ENCOURS");
                                            //commandeStatusENCOURS = appDao.createCommande("0", new SimpleDateFormat("dd-MM-yy  HH:mm").format(new Date()), id_client, "ENCOURS");
                                        }

                                        pageContext.setAttribute("commandeStatusENCOURS", commandeStatusENCOURS);

                                        List<LigneCommande> listLigneCommande = appDao.listerLigneCommande(commandeStatusENCOURS.getId_commande());
                                        pageContext.setAttribute("listLigneCommande", listLigneCommande);

                                        //Produits ???????
                                        //List<Produit> listProduit = appDao.listerProduitParLigneCommande(listLigneCommande);
                                        //pageContext.setAttribute("listProduit", listProduit);

                                    %>         

                                    <%= session.getAttribute("id_client")%>
                                    <%= request.getAttribute("id_client")%>
                                    <%= pageContext.getAttribute("id_client")%>

                                    Nom Client : <%= appDao.getClient(id_client).getNom()%>
                                    Prenom Client :  <%= appDao.getClient(id_client).getPrenom()%>

                                    <div class="container">

                                        <p>Commande ENCOURS : <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                out.print(appDao.verifExistCommandeEnCours(id_client).getId_commande());
                                            }%> </p>            



                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>photo</th>
                                                    <th>nom</th>
                                                    <th>description </th>
                                                    <th>TVA</th>                       
                                                    <th>prix unitaire TTC</th>
                                                    <th>discount</th>
                                                    <th>quantite</th>
                                                    <th>promotion</th>
                                                    <th>prixsoustotal TTC</th>                                                   
                                                    <th>ID_ligneCmd</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            <script type="text/javascript">

                                                $(window).load(function () {
                                                    $(":input").bind('keyup mouseup', function () {
                                                        myFunction($(this).attr('class'), $(this).attr('id') );
                                                    });
                                                });
                                               
                                                function myFunction(compteur, iDalbert) {

                                               // alert("ID Button --->"+id6666666);
                                                
                                                 if(iDalbert !== "abcd3" ) {
                                                     
                                                    $.ajax({
                                                        url: "http://<%=com.test.util.ServerHostPort.getHostDomainName() + ":" + com.test.util.ServerHostPort.PORT%>/ServletController?commande=calculPanier&id_lignecommande=" + $('#id_lignecommande' + compteur).html() + "&quantite=" + $('#id_quantite' + compteur).val(),
                                                        type: 'post',
                                                        dataType: 'json',
                                                        success: function (data) {
                                                            $('#id_soustotal' + compteur).html(data.id_soustotal);
                                                            
                                                            $('#id_tva_vingt1').html(data.id_tva_vingt1);
                                                            $('#id_tva_vingt2').html(data.id_tva_vingt2);
                                                            $('#id_tva_dix1').html(data.id_tva_dix1);
                                                            $('#id_tva_dix2').html(data.id_tva_dix2);
                                                            $('#id_tva_cinq1').html(data.id_tva_cinq1);
                                                            $('#id_tva_cinq2').html(data.id_tva_cinq2);
                                                            $('#id_tva_deux1').html(data.id_tva_deux1);
                                                            $('#id_tva_deux2').html(data.id_tva_deux2);

                                                            $('#id_tva_total').html(data.id_tva_total);
                                                            $('#id_total').html(data.id_total);
                                                        }
                                                    }); 
                                                    }
                                                };

                                                </script>  

                                                <%

                                                    if (commandeStatusENCOURS != null && (appDao.verifExistCommandeEnCours(id_client) != null)) {

                                                        int compteur = 0;

                                                        for (LigneCommande ligneCommande : listLigneCommande) {
                                                            compteur = compteur + 1;

                                                            System.out.println("DEBUG code0: MyBagCommande :" + (appDao.getProduit(ligneCommande.getId_produit())));
                                                            System.out.println("DEBUG code1: MyBagCommande :" + ligneCommande);

                                                            String prix_unitaire = (appDao.getProduit(ligneCommande.getId_produit())).getPrix_unitaire();

                                                            String quantite = ligneCommande.getQuantite();

                                                            String promotion = ligneCommande.getPromotion();

                                                            String prix_soustotal = ligneCommande.getPrix_soustotal();

                                                            BigDecimal bd = new BigDecimal(prix_soustotal);
                                                            BigDecimal displayVal = bd.setScale(10, RoundingMode.HALF_EVEN);
                                                            NumberFormat frdCostFormat = NumberFormat.getCurrencyInstance(Locale.FRANCE);
                                                            String moneyPrix_sousTotalString = frdCostFormat.format(displayVal.doubleValue());

                                                            
                                                            int id_lignecommande = ligneCommande.getId_lignecommande();
                                                            String TVA = ((appDao.getProduit(ligneCommande.getId_produit())).getTVAproduit());
                                                            
                                                            int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();

                                                             String total_tva = appDao.calculTotalTVAproduit(id_cmd, TVA);
                                                           
                                                                     
                                                                out.write("<tr>"
                                                                        + "<td><img src ="+(appDao.getProduit(ligneCommande.getId_produit())).getPhoto() + " class=\"share-picture img-responsive \" alt = \" ALT_PHOTO\" > </td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getNom() + "</td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDescription() + " </td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getTVAproduit() + "%</td>"
                                                                        + "<td>" + prix_unitaire + "</td>"
                                                                        + "<td>" + (appDao.getProduit(ligneCommande.getId_produit())).getDiscount() + "</td>"
                                                                        + "<td>  <input  type=\"number\" class=\"" + compteur + "\" id=\"id_quantite" + compteur + "\" value=\"" + quantite + "\"  min=\"1\" max=\"50\" />  </td>"
                                                                        + "<td>" + promotion + "% </td>"
                                                                        + "<td> <label id=\"id_soustotal" + compteur + "\">" + moneyPrix_sousTotalString + "</label>  </td>"
                                                                
                                                                        + "<td> <label id=\"id_lignecommande" + compteur + "\">" + id_lignecommande + "</label>  </td>"
                                                                        + "<td>  "
                                                                        + "<form method=\"POST\" action=\"ServletController\" >"
                                                                        + " <input id=\"abcd1\" type=\"hidden\" name=\"commande\" value=\"DeleteLigneCommande\"/>"
                                                                        + " <input id=\"abcd111\" type=\"hidden\" name=\"page\" value=\"2\"/>"
                                                                        + " <input id=\"abcd2\" type=\"hidden\" name=\"id_lignecommande\" value=\"" + id_lignecommande + "\"/> "
                                                                        + " <button id=\"abcd3\" type=\"submit\" class=\"button add-btn add pull-right\">Delete</button> "
                                                                        + "</form> "
                                                                        + "</td>"
                                                                        + "</tr>");
                                                             
                                                        }
                                                    }
                                                %>

                                                </tbody>
                                            </table>


                                            <%                if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                    out.print(appDao.verifExistCommandeEnCours(id_client).toString());
                                                }

                                            %>

                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Informations sur la commande ENCOURS </th>
                                                        <th>Valeur</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td>Commande.id_commande  </td>
                                                        <td> 
                                                            <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                    out.print(appDao.verifExistCommandeEnCours(id_client).getId_commande());
                                                                }  %> 
                                                        </td> 
                                                    </tr>


                                                    <tr>
                                                        <td>total TVA 20%  </td>
                                                        <td>
                                                            <label id="id_tva_vingt1">                           
                                                                <%
                                                                    if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "20");
                                                                        out.print(total_tva);
                                                                    }
                                                                %> 
                                                            </label> 
                                                        </td> 
                                                    </tr> 

                                                    <tr>
                                                        <td>Prix total  20%  </td>
                                                        <td>
                                                            <label id="id_tva_vingt2"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "20");
                                                                        out.print(prix_tva);
                                                                    }
                                                                %> 
                                                            </label>
                                                        </td> 
                                                    </tr>   

                                                    <tr>
                                                        <td>total TVA 10%  </td>
                                                        <td>
                                                            <label id="id_tva_dix1"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "10");
                                                                        out.print(total_tva);
                                                                    }  %> 
                                                            </label>   
                                                        </td> 
                                                    </tr> 

                                                    <tr>
                                                        <td>Prix total  10%  </td>
                                                        <td> 
                                                            <label id="id_tva_dix2"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "10");
                                                                        out.print(prix_tva);

                                                                    }  %> 
                                                            </label>
                                                        </td> 
                                                    </tr> 


                                                    <tr>
                                                        <td>total TVA 5,5%  </td>
                                                        <td>
                                                            <label id="id_tva_cinq1"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "5.5");
                                                                        out.print(total_tva);

                                                                    }  %> 
                                                            </label>
                                                        </td> 
                                                    </tr> 

                                                    <tr>
                                                        <td>Prix total  5,5%  </td>
                                                        <td> 
                                                            <label id="id_tva_cinq2"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "5.5");
                                                                        out.print(prix_tva);
                                                                    }  %> 
                                                            </label>
                                                        </td> 
                                                    </tr>                     


                                                    <tr>
                                                        <td>total TVA 2,1%  </td>
                                                        <td> 
                                                            <label id="id_tva_deux1"> 
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String total_tva = appDao.calculTotalTVAproduit(id_cmd, "2.1");
                                                                        out.print(total_tva);

                                                                    }  %> 
                                                            </label>
                                                        </td> 
                                                    </tr>  
                                                    <tr>
                                                        <td>Prix total  2,1%  </td>
                                                        <td>

                                                            <label id="id_tva_deux2">
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        int id_cmd = appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                        String prix_tva = appDao.clculerPrixTotalTVA(id_cmd, "2.1");
                                                                        out.print(prix_tva);
                                                                    }  %> 
                                                            </label>
                                                        </td> 
                                                    </tr>                     



                                                    <tr>

                                                        <td>Total de tous les TVA</td>

                                                        <td> 
                                                            <label id="id_tva_total">
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                    
                                                                    Commande cmd = appDao.verifExistCommandeEnCours(id_client);
                                                                    int id_cmd = cmd.getId_commande();
                                                                    String toto = appDao.clculerTotalTousTVA(id_cmd);
                                                                    out.print(toto);
                                                                    
                                                                }  %> 
                                                            </label>

                                                        </td> 
                                                    </tr>                       

                                                    <tr>
                                                        <td>Commande.total  </td>
                                                        <td> 
                                                            <label id="id_total">
                                                                <% if (appDao.verifExistCommandeEnCours(id_client) != null) {

                                                                        out.print(appDao.calculerCommandTotal(appDao.verifExistCommandeEnCours(id_client).getId_commande()));
                                                                    }
                                                                %>   
                                                            </label>  
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>Commande.date_commande </td>
                                                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                out.print(appDao.verifExistCommandeEnCours(id_client).getDate_commande());
                                                            } %> </td>
                                                    </tr>

                                                    <tr>
                                                        <td>Commande.id_client  </td>
                                                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                out.print(appDao.verifExistCommandeEnCours(id_client).getId_client());
                                                            } %> </td>
                                                    </tr>

                                                    <tr>
                                                        <td>Commande.etat_cmd  </td>
                                                        <td> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                out.print(appDao.verifExistCommandeEnCours(id_client).getEtat_cmd());
                                                            }%> </td>
                                                    </tr>

                                                    <tr>
                                                        <td>Envoyer </td>
                                                        <td>   
                                                            <form method="POST" action="ServletController">
                                                                <input type="hidden" name="commande" value="commander" id="commande" />

                                                                <input type="hidden" name="id_client" value="<%= session.getAttribute("id_client")%>"/>
                                                                <input type="hidden" name="id_commande" value="<%  if (appDao.verifExistCommandeEnCours(id_client) != null) {
                                                                        appDao.verifExistCommandeEnCours(id_client).getId_commande();
                                                                    }%>"/>

                                                                <button id="abcd3" type="submit" class="button add-btn add pull-right">PAYER</button>
                                                            </form> 
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>  
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                              



                    <%-------------------------------------------- BEGIN  FOOTER  ------------------------------------------------------%>


                    <div id="footer-region">
                        <div>
                            <div id="footer">
                                <div class="container">
                                    <div class="col-sm-1">
                                        <span class="logo hidden-xs"></span>
                                    </div>
                                    <nav class="col-sm-8">
                                        <ul>
                                            <li><a class="about" href="https://www.farmigo.com/about">About</a></li>
                                            <li><a class="faq" href="http://help.farmigo.com/" target="_blank">Help</a></li>
                                            <li><a class="csa-software" href="http://www.csamanagementsoftware.com/" target="_blank">CSA Software</a></li>
                                            <li><a class="jobs" href="https://www.farmigo.com/about/jobs">We're Hiring!</a></li>
                                            <li><a class="producer-standards" href="https://www.farmigo.com/producer-standards">Producer Standards</a></li>
                                            <li><a class="privacy" href="https://www.farmigo.com/privacy">Privacy</a></li>
                                            <li><a class="terms" href="https://www.farmigo.com/terms">Terms</a></li>
                                        </ul>
                                        <span class="rights hidden-xs">Â© 2016 Farmigo, PBC.</span>
                                    </nav>
                                    <div class="col-sm-3">
                                        <div class="follow-us hidden-xs">
                                            Follow us on
                                            <ul>
                                                <li><a class="facebook" title="Facebook" target="_blank" href="http://www.facebook.com/Farmigo"></a></li>
                                                <li><a class="twitter" title="Twitter" target="_blank" href="http://twitter.com/#%21/farmigo"></a></li>
                                                <li class="first-in-row"><a class="instagram" title="Instagram" target="_blank" href="https://instagram.com/farmigo/"></a></li>
                                                <li><a class="pinterest" title="Pinterest" target="_blank" href="https://www.pinterest.com/farmigo/"></a></li>
                                            </ul>
                                        </div>
                                        <a class="b-corp hidden-xs" href="http://www.bcorporation.net/about" title="B Corp" target="_blank"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div> 


                    
                    
                
<!----------------------A SUPPRIMER ABSOLUMENT ------------------------------------------->

  
    <section id="checkout-panel-region" class="checkout-panel"></section>


    <div id="modal-region"></div>


    <div id="glass-pane-region"></div>

    <div id="mobile-app-message"></div>


    <div id="xs-indicator" class="visible-xs"></div>
    <div id="sm-indicator" class="visible-sm"></div>
    <div id="md-indicator" class="visible-md"></div>
    <div class=" fb_reset" id="fb-root"><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe src="Market%20_%20Farmigo%20Food%20Community_fichiers/xd_arbiter.htm" style="border: medium none;" tabindex="-1" title="Facebook Cross Domain Communication Frame" aria-hidden="true" id="fb_xdm_frame_https" scrolling="no" allowfullscreen="true" allowtransparency="true" name="fb_xdm_frame_https" frameborder="0"></iframe></div></div></div>

    <!-- require.js -->

    <script src="/JS/build.js"></script>


    <!-- Optimizely A/B testing tool -->

  
</div>



<meta name="p:domain_verify" content="679b17135056d9384e2ad5fc986eb4fd">
<script id="" type="text/javascript">!function (b, e, f, g, a, c, d) {
        b.fbq || (a = b.fbq = function () {
            a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)
        }, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))
    }(window, document, "script", "//connect.facebook.net/en_US/fbevents.js");
    fbq("init", "881337741957700");
    fbq("track", "PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=881337741957700&amp;ev=PageView&amp;noscript=1"></noscript>
<iframe src="javascript:false" style="display: none;" name="boomerang_post--0.23589914482628693" id="boomerang_post--0.23589914482628693">

</iframe>
<form style="display: none;" target="boomerang_post--0.23589914482628693" action="/dispatcher/ClientLoggerService.updateLog" enctype="application/x-www-form-urlencoded" id="beacon_form" method="POST">
    <input value="web" name="type" type="hidden">
    <input value="https://www.farmigo.com/map?location=ny&amp;zoom=11" name="url" type="hidden">
    <input value="" name="nu" type="hidden">
    <input value="navigation" name="rt.start" type="hidden"><
    input value="1468231610868" name="rt.tstart" type="hidden">
    <input value="1468231612943" name="rt.bstart" type="hidden">
    <input value="1468231635448" name="rt.end" type="hidden">
    <input value="918" name="t_resp" type="hidden">
    <input value="23662" name="t_page" type="hidden">
    <input value="24580" name="t_done" type="hidden">
    <input value="http://www.farmigo.com/" name="r" type="hidden">
    <input value="0" name="nt_red_cnt" type="hidden">
    <input value="0" name="nt_nav_type" type="hidden">
    <input value="1468231610868" name="nt_nav_st" type="hidden">
    <input value="0" name="nt_red_st" type="hidden">
    <input value="0" name="nt_red_end" type="hidden">
    <input value="1468231611606" name="nt_fet_st" type="hidden">
    <input value="1468231611607" name="nt_dns_st" type="hidden">
    <input value="1468231611607" name="nt_dns_end" type="hidden">
    <input value="1468231611607" name="nt_con_st" type="hidden">
    <input value="1468231611607" name="nt_con_end" type="hidden">
    <input value="1468231611608" name="nt_req_st" type="hidden">
    <input value="1468231611786" name="nt_res_st" type="hidden">
    <input value="1468231611795" name="nt_res_end" type="hidden">
    <input value="1468231611790" name="nt_domloading" type="hidden">
    <input value="1468231612961" name="nt_domint" type="hidden">
    <input value="1468231612986" name="nt_domcontloaded_st" type="hidden">
    <input value="1468231612988" name="nt_domcontloaded_end" type="hidden">
    <input value="1468231635429" name="nt_domcomp" type="hidden">
    <input value="1468231635429" name="nt_load_st" type="hidden">
    <input value="1468231635446" name="nt_load_end" type="hidden">
    <input value="0" name="nt_unload_st" type="hidden">
    <input value="0" name="nt_unload_end" type="hidden">
    <input value="https://www.farmigo.com/market/farmtoyou-brooklyn" name="u" type="hidden">
    <input value="0.9.1448986678" name="v" type="hidden">
    <input value="visible" name="vis.st" type="hidden">
</form>
<iframe style="display: none;"> </iframe>

<!-- ------------------------------------------------------------- -->



</body> 
</html>
