<!DOCTYPE html>
<html page="market" class="farmigo market-new">

    <head>

        <%@ page import="com.test.entity_lifecycle.AppDAO,com.test.entity_lifecycle.AppDaoImpl,com.test.entity_lifecycle.DaoFactory,java.util.List,com.test.entity_lifecycle.Produit,com.test.entity_lifecycle.Commande,com.test.entity_lifecycle.LigneCommande,org.apache.jasper.runtime.PageContextImpl" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <meta http-equiv="cache-control" content="max-age=0" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <meta http-equiv="pragma" content="no-cache" />


        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="/CSS/bootstrap.min.css">
        <script src="/JS/bootstrap.min.js"></script>
        <script src="/JS/jquery.min.js"></script>

        <link rel="stylesheet"  href="/CSS/apptest14.css">

        <link rel="stylesheet"  href="/CSS/loaderSpinner.css">



        <script src="/JS/test14.js"></script>



        <style type="text/css">.gm-style-pbc{transition:opacity ease-in-out;background-color:black;text-align:center}.gm-style-pbt{font-size:22px;color:white;font-family:Roboto,Arial,sans-serif;position:relative;margin:0;top:50%;-webkit-transform:translateY(-50%);-ms-transform:translateY(-50%);transform:translateY(-50%)}</style>
        <link href="/CSS/css.css" rel="stylesheet" type="text/css"><style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style>
        <style type="text/css">
            @media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}
            @media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style>
        <style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}.gm-style img{max-width:none}</style>
        <link type="image/x-icon" rel="shortcut icon" href="https://www..com/site/common/images/favicon.png">
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">


        <link type="text/css" rel="stylesheet" href="/CSS/main.css">
        <link type="text/css" rel="stylesheet" href="/CSS/MyFontsWebfontsKit.css">
        <title>Mon TITRE </title>



        <link rel="icon" href="/img/img2.png">
        <link rel="apple-touch-icon" href="/img/img5.png">


        <!--Market_Farmigo Food Community -->

        <script src="Producteur_Farmigo Food Community_fichiers/pd9trnhx" async="" type="text/javascript"></script>            
        <script style="" src="Producteur_Farmigo Food Community_fichiers/fbevents.js" async=""></script>
        <script src="Producteur_Farmigo Food Community_fichiers/roundtrip.js" async="" type="text/javascript"></script>
        <script src="Producteur_Farmigo Food Community_fichiers/gtm.js" async=""></script>


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
                        faq: 'http://help..com',
                        contact: 'http://help..com/hc/en-us/requests/new',
                        producerStandards: '/producer-standards',
                        login: '/login',
                        organizerDashboard: 'https://www..com/go',
                        csaSoftware: 'http://www..com ',
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
                        s.src = 'https://widget..io/widget/' + window.INTERCOM_APP_ID;
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
                    insp.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://';
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
            scRec.src = "//";
            document.getElementsByTagName('head')[0].appendChild(scRec);
            //]]>
        </script>
        <!-- End SessionCam -->

        <script>
            Farmigo.enums = {"MemberType": {"All": "All", "New": "New", "Existing": "Existing"}, "EnumOrderLockReason": {"AdminHold": "AdminHold", "AdminHoldPaymentIssue": "AdminHoldPaymentIssue", "SubscriptionCanceled": "SubscriptionCanceled", "NoDeliveries": "NoDeliveries", "Other": "Other"}, "ShareStatus": {"TEMPORALLY_UNAVAILABLE": "TEMPORALLY_UNAVAILABLE", "UNAVAILABLE": "UNAVAILABLE", "AVAILABLE": "AVAILABLE"}, "EnumStatus": {"Published": "Published", "Open": "Open", "Pending": "Pending", "Closed": "Closed", "Unpublished": "Unpublished", "Canceled": "Canceled", "Relaunch": "Relaunch"}, "EnumSigninStatus": {"Ok": "Ok", "Unauthorized": "Unauthorized", "WrongEmail": "WrongEmail", "WrongPassword": "WrongPassword", "ChangePassword": "ChangePassword", "EmailSendFailed": "EmailSendFailed", "OkExistingForFarm": "OkExistingForFarm"}, "EnumRegion": {"NY": "NY", "SF": "SF", "SEA": "SEA"}};
        </script>


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


        <header id="header-region">
            <div>
                <div class="navbar-wrapper">
                    <div class="navbar navbar-fixed-top" role="navigation">
                        <div class="container">

                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">


                                    <li class="hidden-xs">
                                        <a href="about.jsp" class="login simple-link">About</a>
                                    </li>

                                    <li class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown">
                                            <%= session.getAttribute("nom")%> 
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">

                                            <li>
                                                <a class="faq" href="/ServletController?cmd=updateClient.jsp&commande=updateClient" target="_self" data-analytics-category="header" data-analytics-action="Profil">Profil</a>
                                            </li>

                                            <li>
                                                <a class="faq" href="/ServletController?cmd=ListCommandes.jsp&commande=listCommandes" target="_self" data-analytics-category="header" data-analytics-action="vos commandes">vos commandes</a>
                                            </li>                                             

                                            <li>                                               
                                                <a class="faq" href="/ServletController?cmd=mail_form.jsp&commande=mail_form" target="_self" data-analytics-category="header" data-analytics-action="contact">contact</a>
                                            </li>                                          

                                            <li>
                                                <!--   <a class="faq" href="index.jsp" target="_blank" data-analytics-category="header" data-analytics-action="deconexion">deconexion</a>-->

                                                <form method="post" action="/ServletController">
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
                                    <a  href="/ServletController?cmd=Producteur_Farmigo Food Community.jsp&commande=Producteurs"  class="market nav-option ">
                                        <div>
                                            <i class="hidden-xs"></i>
                                            <span class="text">Producteurs</span>
                                        </div>
                                    </a>
                                </li>

                                <li class="">
                                    <a href="/ServletController?cmd=Market_Farmigo Food Community.jsp&commande=Market" class="market nav-option active">
                                        <div>
                                            <i class="hidden-xs"></i>
                                            <span class="text">Market</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="order-tab-wrapper ">

                                    <a  href="/ServletController?commande=MyBagLink" title="" data-original-title="" class="order nav-option ">
                                        <div>

                                            <span  class="text"> 
                                                My Bag  
                                                <button  style="background-color: #4CAF50;border: none;color: white;padding: 15px 32px;text-align: center;ext-decoration: none;display: inline-block;font-size: 16px;margin: 4px 2p;border-radius: 50%;">
                                                    <label  id="id_countlignecmd"> 
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




        <aside>                                        

            <!--    MENU Nav  ---->

            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

                <div id="pane">


                    <div id="ID_cartpane" class="cart-pane" style="height: calc(100% - 161px);">


                        <!-----  RENDRE DYNAMIQUE cette section de code avec JAVA  ----->  

                        <%

                            AppDAO appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());

                            pageContext.setAttribute("id_client", session.getAttribute("id_client"));

                            int id_client = ((Integer) session.getAttribute("id_client")).intValue();

                            Commande commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);

                            pageContext.setAttribute("commandeStatusENCOURS", commandeStatusENCOURS);

                            List<LigneCommande> listLigneCommande = appDao.listerLigneCommande(commandeStatusENCOURS.getId_commande());

                            pageContext.setAttribute("listLigneCommande", listLigneCommande);

                            List<Produit> listProduits = appDao.listerProduits(0);
                        %>         

                        <% int compteurLigneCommande = 0; %> 

                        <c:forEach var="ligneCommande" items="${ pageScope.listLigneCommande }"> 

                            <%
                                LigneCommande lignecommande = listLigneCommande.get(compteurLigneCommande);

                                Produit produit1 = null;

                                compteurLigneCommande++;

                                int id_produit = lignecommande.getId_produit();

                                for (Produit produitCourant : listProduits) {

                                    if (id_produit == produitCourant.getId_produit()) {
                                        produit1 = produitCourant;
                                    }
                                }

                            %>

                            <div id="idtr${ligneCommande.id_produit}" class="cart-row">

                                <div class="column-quantity">
                                    <a  class="quantity-increase icon-caret-up"  id="idddddd1${ligneCommande.id_produit}" onClick="a_onClickCart(this, 'idtr${ligneCommande.id_produit}', ${ligneCommande.id_produit}, <%= id_client%>, ${ligneCommande.id_lignecommande})"></a>
                                    <div id="id-current_quantity${ligneCommande.id_produit}" class="current_quantity quantity-value cart-quantity-number text-gray-6">${ligneCommande.quantite}</div>
                                    <a class="quantity-decrease icon-caret-down"  id="idddddd2${ligneCommande.id_produit}" onClick="a_onClickCart(this, 'idtr${ligneCommande.id_produit}', ${ligneCommande.id_produit}, <%= id_client%>, ${ligneCommande.id_lignecommande})"></a>
                                </div>

                                <div class="column-products">
                                    <a href="/detailProduit.html" class="product-row">
                                        <div id="dropper-price-282967b" class="price-dropper-module"></div>
                                        <div class="product-image">
                                            <div class="img-holder">
                                                <img src="<%= produit1.getPhoto()%>" alt="ALT image produit"  style="height: 70px; width: 70px; background-color: powderblue;">
                                            </div>
                                        </div>
                                        <div class="pricing-savings">
                                            <div class="pricing-normal">
                                                <div id="id-prix_soustotal-side-cart-price-2829${ligneCommande.id_produit}" class="h3 strong text-gray-6">${ligneCommande.prix_soustotal} &euro;</div>
                                            </div>
                                        </div>
                                    </a>
                                </div>


                                <div class="column-remove">
                                    <a class="side-cart-remove text-gray-3"  id="idbtn1" onclick="deleteTR('idtr${ligneCommande.id_produit}', ${ligneCommande.id_lignecommande}, ${ligneCommande.id_produit}, <%= id_client%>)" >
                                        <i class="icon-close"></i>
                                    </a>
                                </div>

                            </div>

                        </c:forEach>



                    </div>
                </div>
            </div>




            <div style="margin-left: 81%; background-color: #de750a; position:fixed; z-index: 3" id="right-toolbar-footer-region" class="right-toolbar-region__footer">


                <label id="id_nbrproduitsdanspanier"> <% out.print(appDao.calculTotalNbrDeProduitsPanier222(id_client));   %>  </label>  |   
                <label id="id-total-fin"> <% if (appDao.verifExistCommandeEnCours(id_client) != null) {
                        out.print(appDao.calculerCommandTotal(appDao.verifExistCommandeEnCours(id_client).getId_commande()).split(" ")[0]);
                    } %> &euro; </label>



                <svg   onclick="verifEtatNavCart()" class="menu-toggle-icon js-menu-toggle-icon"  width="30px" height="34px" viewBox="0 0 30 34">
                <path d="M0,6 l15,-5 l15,5" />
                <path d="M0,17 l15,0 l15,0" />
                <path d="M0,28 l15,5 l15, -5" />
                </svg>

            </div>

        </aside>





        <div id="main">                                                    
            <!--   END  MENU Nav  ---->


            <main>
                <div class="main-region">

                    <section id="market-header-region">
                        <div><section class="market-header">
                                <div class="info-items   ">
                                    <div class="container">


                                    </div>
                                </div>
                            </section>
                        </div>

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



                                                            <%@ page import="java.util.List,com.test.entity_lifecycle.DaoFactory,com.test.entity_lifecycle.AppDAO,com.test.entity_lifecycle.AppDaoImpl,com.test.entity_lifecycle.Famille" %>

                                                            <%
                                                                appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                                                                List<Famille> listeFamille = appDao.listeFamille();

                                                                //---------------------------------
                                                                int id_fami = 0;

                                                                if (request.getParameter("id_famille") == null) {
                                                                    id_fami = 0;

                                                                } else {

                                                                    id_fami = Integer.parseInt(request.getParameter("id_famille"));
                                                                }

                                                                System.out.println("DEBUG ID_Famille = " + id_fami);

                                                                for (Famille famille : listeFamille) {

                                                                    out.write("<li  style=\"width: 10%;\" class=\"" + ((famille.getId_famille() == id_fami) ? "active" : "lala") + "\">"
                                                                            + "<a id=\"id1\" href=\"/ServletController?cmd=Market_Farmigo%20Food%20Community.jsp&commande=Market&id_famille=" + famille.getId_famille() + "\">"
                                                                            + "<div class=\"category-icon\" style=\"background-image: url(/" + famille.getImg() + ")\"></div>"
                                                                            + "<span class=\"tab-title hidden-xs\">"
                                                                            + famille.getNom()
                                                                            + "</span>"
                                                                            + "</a>"
                                                                            + "</li>");
                                                                }

                                                            %>

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






                                            <%------------------------------------ ZONE JAVA --------------------------------------%>



                                            <%                                    int id_famille = 0;

                                                if (request.getParameter("id_famille") == null) {
                                                    id_famille = 0;

                                                } else {

                                                    id_famille = Integer.parseInt(request.getParameter("id_famille"));
                                                }

                                                System.out.println("Market_Farmigo Food Community DEBUG ID_Famille = " + id_famille);

                                                //AppDAO appDao =  AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                                                listProduits = appDao.listerProduits(id_famille);

                                                pageContext.setAttribute("listProduits", listProduits);

                                            %> 





                                            <div id="region-favorites-items" class="">



                                                <%------------------------------------------------------------------------------------------------------------------%>




                                                <div style="visibility: visible;" class="nav-carousel nav-next   landing-page">
                                                    <i class="nav-next-icon">HELLO OOOOO</i>
                                                </div>

                                                <div id="carousel-region">
                                                    <div class="compact compact-carousel">

                                                        <div style="-moz-user-select: none;" class="shares row">

                                                            <div class="row">                                   


                                                                <%-- BEGIN Table   --%>
                                                                <div class="table">          
                                                                    <table class="table">
                                                                        <thead>
                                                                            <tr>
                                                                                <th></th>
                                                                                <th></th>
                                                                                <th></th>
                                                                                <th></th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>

                                                                            <%--  TEST TABLE PRODUITS ---%>

                                                                            <% int nbr = 0; %>
                                                                            <% int indexID = 0;  %> 

                                                                            <c:forEach var="produit" items="${ pageScope.listProduits }"> 

                                                                                <%
                                                                                    Produit produit = listProduits.get(indexID);
                                                                                    out.write(((nbr % 4) == 0) ? "<tr>" : "");

                                                                                %>
                                                                                
                                                                                 <%  indexID++;%>

                                                                            <td>
                                                                                <div class="item-box custom">

                                                                                    <div class="items-container">                                                                 
                                                                                        <div class="share " data-key="${ produit.id_produit }">
                                                                                            <a>
                                                                                                <div class="picture">
                                                                                                    <img onload="a_OnLoad(<%= indexID %>)" src="${ produit.photo }" class="share-picture img-responsive " alt="Photo of Wild Bristol Bay Sockeye Salmon Fillet Value Pack, Frozen">
                                                                                                    <div class="labels-wrapper">


                                                                                                        <div class="share-label discount">
                                                                                                            <i class="sale-icon"></i>
                                                                                                            <span class="text">${ produit.discount }</span>
                                                                                                        </div>

                                                                                                    </div>

                                                                                                    <div class="bundle-items hidden-xs hidden-sm "></div>

                                                                                                </div>
                                                                                            </a>

                                                                                            <div class="details">
                                                                                                <div class="details-top ">
                                                                                                    <div class="details-inner">
                                                                                                        <div class="">
                                                                                                            <a class="title ">
                                                                                                                <span data-automation-id="share-title" class="text">${ produit.description }</span>
                                                                                                            </a>
                                                                                                        </div>

                                                                                                        <a data-automation-id="producer" class="producer-link">
                                                                                                            <div class="bottom-title">
                                                                                                                <span class="arrow hidden-xs">${ produit.prix }</span>
                                                                                                            </div>
                                                                                                        </a>
                                                                                                    </div>
                                                                                                </div>

                                                                                                <div data-automation-id="price-before-discount" class="price-before-discount"> </div>
                                                                                                <div class="row price-and-quantity">
                                                                                                    <div data-automation-id="price" class="price has-discount col-sm-8 vcenter-sm">
                                                                                                        <div title="" data-original-title="" class="price-container">
                                                                                                            <span class="price">

                                                                                                                <c:forTokens items="${produit.prix_unitaire}" delims="," var="name">
                                                                                                                    <em>
                                                                                                                        <c:out value="${name}"/>
                                                                                                                    </em>    
                                                                                                                </c:forTokens>

                                                                                                                <span class="delimiter-char">/</span>

                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div data-automation-id="quantity" class="share-quantity col-sm-4 vcenter-sm">


                                                                                                        <!-- TODO:1 -->

                                                                                                        <div>



                                                                                                            <div id="idPlusMoins<%= indexID%>" class="add_to_cart_container clearfix mt1 relative hide-small flow-holder">

                                                                                                                <p  id="valeurID<%= indexID%>" class="current_quantity text-center absolute width-full mb0 h3">

                                                                                                                    <%
                                                                                                                        boolean passeee = false;
                                                                                                                        int id_lignecommande = 0;
                                                                                                                        int idproduitCourant = 0;
                                                                                                                        appDao = AppDaoImpl.getInstanceSingleton(DaoFactory.getInstance());
                                                                                                                        id_client = ((Integer) session.getAttribute("id_client")).intValue();
                                                                                                                        commandeStatusENCOURS = appDao.verifExistCommandeEnCours(id_client);
                                                                                                                        listLigneCommande = appDao.listerLigneCommande(commandeStatusENCOURS.getId_commande());

                                                                                                                        for (LigneCommande ligneCommande : listLigneCommande) {
                                                                                                                            int idproduit = ligneCommande.getId_produit();
                                                                                                                            idproduitCourant = produit.getId_produit();

                                                                                                                            if (idproduit == idproduitCourant) {

                                                                                                                                String quantite = ligneCommande.getQuantite();
                                                                                                                                //out.write(quantite);
                                                                                                                                out.print(quantite);
                                                                                                                                passeee = true;
                                                                                                                                id_lignecommande = ligneCommande.getId_lignecommande();
                                                                                                                            }
                                                                                                                        }
                                                                                                                        if (passeee == false) {
                                                                                                                            out.print(0);
                                                                                                                        }

                                                                                                                    %>   

                                                                                                                </p>


                                                                                                                <label id="id_lignecommande<%= indexID%>" class="hidden"><%=id_lignecommande%></label>

                                                                                                                <a   id="idd1<%= indexID%>" onClick="a_onClickButtonPlusMoins(this, <%= indexID%>, <%= idproduitCourant%>, <%= id_client%>);" class="btn btn-small btn-secondary float-right add_one quantity_change">+</a>

                                                                                                                <a   id="idd2<%= indexID%>" onClick="a_onClickButtonPlusMoins(this, <%= indexID%>, <%= idproduitCourant%>, <%= id_client%>);" class="btn btn-small btn-secondary float-left minus_one quantity_change">-</a>


                                                                                                            </div>

                                                                                                            <div  id="idaddbutton<%= indexID%>" class="quick_add_module">
                                                                                                                <div class="relative">
                                                                                                                    <a onclick="onClickAdd(this, <%= indexID%>, ${ produit.id_produit }, <%= session.getAttribute("id_client")%>, <%= produit.getPrix_unitaire().split("/")[0]%>, '${produit.photo}', 1);"  id="idaddbutton_id3<%= indexID%>" class="block btn-secondary btn-small mt1 add hide-small flow-holder">
                                                                                                                        <span class="font-bold quick-add-text">Add${ produit.id_produit }</span>
                                                                                                                    </a>
                                                                                                                </div>
                                                                                                            </div>

                                                                                                        </div>


                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div> 
                                                                            </td>

                                                                            <% //out.write((nbr%4)==0 ? "</tr>" : ""); 
                                                                                nbr++;%> 

                                                                        </c:forEach>

                                                                        <%--  TEST TABLE PRODUITS ---%>
                                                                        </tbody>
                                                                    </table>
                                                                </div>

                                                                <%-- END Table   --%>

                                                            </div>                        
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>                              



                            </div>

                            </main>






                            <%-------------------------------------------- BEGIN  FOOTER  ------------------------------------------------------%>

                            <footer>
                                <div id="footer-region">

                                    <div id="footer" style="background-color: #de750a;">
                                        <div class="container">
                                            FOOTER
                                        </div>
                                    </div> 

                                </div>
                            </footer>


                            <!--   DIV du END  MENU Nav  ---->
                            </div>
                            <!--   DIV du END  MENU Nav  ---->



                            <!-- --------------------A SUPPRIMER ABSOLUMENT ----------------------------------------- -->

                            <!-- require.js -->

                            <script src="JS/build.js"></script>

                            <!--  -------------------------------------------------------------  -->


                            </body>

                            </html>