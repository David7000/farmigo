
<!DOCTYPE html>
<html class="farmigo-com">

    <script>
        window.functionsToRun = [];
        window.runAfter = function (callback) {
            if (window.requireFinished) {
                callback();
            } else {
                window.functionsToRun.push(callback);
            }
        }
    </script>


      <meta http-equiv="content-type" content="text/html;charset=utf-8"> 
    <head>
 
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <link type="image/x-icon" rel="shortcut icon" href="site/common/images/favicon.png">
        <link href="site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>


        <script src="site/common/js/lib/log4javascript_production62b4.js?v=1.4.3"></script>
        <script src="site/common/js/lib/fastclick.js"></script>




        <link type='text/css' rel="stylesheet" href='site/farmigo.com/css/maind3d7.css?2016-06-24-2230'>
 
        <meta name='viewport' content='width=993'>


        <meta name="description" content="Shop your online farmerâs market â fresh food, direct from the source. Buy local produce, dairy, meats, and more with delivery straight to your neighborhood."/>

        <!-- Facebook open graph meta tags -->
        <meta property="og:title" content="20% off, amazingly fresh food!"/>
        <meta property="og:description" content="I love Farmigo! Incredible food, direct from local farms & producers. Use my code LOCAL20 for 20% off your first order."/>
        <meta property="og:image" content="https://www.farmigo.com/site/common/images/fb-share.jpg"/>

        <script src="site/common/js/namespace/namespace.js"></script>
 

        <script>
        // General values that are detected by the server and passed to JS code
        Farmigo.common.data.isProduction = true;
        Farmigo.common.data.isFarmigoUser = false;
        Farmigo.common.data.isIpad = 0;
        Farmigo.common.data.isTouch = 'ontouchstart' in document.documentElement;
        Farmigo.common.data.isMobile = 0;
        Farmigo.common.data.isMobileDevice = 0;
        Farmigo.common.data.debugMode = false;
        Farmigo.common.data.page = 'Login';
        Farmigo.common.data.pageWidth = 993;
        Farmigo.common.data.farmKey = null;
        Farmigo.common.data.supportEmail = 'help@farmigo.com';
        Farmigo.common.data.loginUrl = 'login.html';
        Farmigo.common.useragent = {
            ie9: false,
            ie8: false,
            ie7: false,
            ie: false
        }

        // set data for identifying (kiss metrics, qualaroo)




        var communities = [];

        if (communities.length > 0) {
            Farmigo.common.data.memberCommunities = communities;
        }

        </script>

 
        <script>
            (function () {

                Farmigo.enums = {"EnumSigninStatus": {"Ok": "Ok", "Unauthorized": "Unauthorized", "WrongEmail": "WrongEmail", "WrongPassword": "WrongPassword", "ChangePassword": "ChangePassword", "EmailSendFailed": "EmailSendFailed", "OkExistingForFarm": "OkExistingForFarm"}, "SubscriptionStatus": {"NoSubscription": "NoSubscription", "SubscriptionExists": "SubscriptionExists", "ProcessingSubscription": "ProcessingSubscription", "HoldSubscription": "HoldSubscription", "SubscriptionCanceled": "SubscriptionCanceled", "SplitSubscriptionMember": "SplitSubscriptionMember"}, "StatusCode": {"OK": "OK", "FAILURE": "FAILURE", "TIMEOUT": "TIMEOUT", "EXHAUSTED": "EXHAUSTED"}, "EnumAction": {"ThankYou": "ThankYou", "LeadExists": "LeadExists", "StartApply": "StartApply", "OK": "OK", "Failed": "Failed"}, "EnumRegion": {"NY": "NY", "SF": "SF", "SEA": "SEA"}, "EnumSearchSource": {"Member": "Member", "Item": "Item", "StoreItem": "StoreItem", "Location": "Location", "Route": "Route", "Schedule": "Schedule", "Producer": "Producer"}};

                Farmigo.enums.JsonStatus = {
                    OK: 'OK',
                    FAILED: 'Failed'
                };

            })();
        </script>


        <!-- farmigo enums for js -->

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAfANpgkDJZ9xA6_PeUIy0PhJbC75OMruc"></script>




        <script src="site/farmigo.com/buildd3d7.js?2016-06-24-2230"></script>


        <script>

        </script>

        <!-- Google Analytics -->
        
        
        
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../www.google-analytics.com/analytics.js', '_ga');

            _ga('create', 'UA-8893503-1', 'auto');
            //Update GA user-id if exists
            if (Farmigo.common.model.MemberData && Farmigo.common.model.MemberData.memberKey)
                _ga('set', '&uid', Farmigo.common.model.MemberData.memberKey);
            _ga('set', 'campMedium', 'utm_medium');
            _ga('set', 'campName', 'utm_campaign');
            _ga('set', 'campSource', 'utm_source');
        </script>
        
        <!-- End Google Analytics -->

        <!-- Optimizely A/B testing tool -->
        
        <!-- start Mixpanel -->
        
        <!-- end Mixpanel -->

        <script>
            if (Farmigo.common.data.isProduction)
                mixpanel.init("1de18df0e735994ce21b919f3fa006eb");
            else
                mixpanel.init("e560df27bfe6f87fde28c4307b30b940");

            window.runAfter(function () {

                var MemberData = (((Farmigo || {}).common || {}).model || {}).MemberData;
                if (MemberData) {
                    mixpanel.identify(MemberData.email);

                    if (MemberData.firstName) {
                        mixpanel.people.set({
                            $email: MemberData.email,
                            $first_name: MemberData.firstName,
                            $last_name: MemberData.lastName
                        });
                    }
                }
            });
        </script>
        <!-- Evalute screen capture tools -->




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

        <!--jsp:include page="/site/common/jsp/SessionCam.jsp"/> -->











<!--        <script>
            Farmigo.com.data.startApplyUrl = 'index.jsp';
            Farmigo.com.data.currentPage = 'login';
        </script>-->


<!--        <script>
            // Create regions object to be used when client needs Region dependent information (map page, organizer page)
            Farmigo.common.data.regions = {};

            Farmigo.common.data.regions['SF'] = {
                farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAwOnmlAoM'
            };

            Farmigo.common.data.regions['SEA'] = {
                farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAkPLDgAkM'
            };

            Farmigo.common.data.regions['NY'] = {
                farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAwPP3tQsM'
            };


        </script>-->
        
        
<!--        <script>
            window.runAfter(function () {
                // ga for main pages
                var ga = Farmigo.common.analytics.Common;
                ga.handleHomeAnalytics(
                        ga.Flow.LOGIN

                        );
            });
        </script>-->
        
        <title>Login | Farmigo</title>



        <link rel="icon" href="/images/farmigo-app-icon.png">
        <link rel="apple-touch-icon" href="/images/farmigo-app-icon.png"/>




        <!-- Production -->
        <!-- Google Tag Manager -->
    <noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-MR23K8"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
                      
                      
<!--    <script>(function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({'gtm.start':
                        new Date().getTime(), event: 'gtm.js'});
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    '../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-MR23K8');</script>-->
    
    <!-- End Google Tag Manager -->

</head>

<body id="page-login" class="not-mobile desktop ">

    <div id="page-content">






        <div id="header-box" >
            <header id="header">
                <div class="header-content centered group">
                    <a id="logo" href="index.jsp"></a>

                    <ul class="start-community dropdown-menu">
                        <li hasChildren>
                            <a>Host a Pickup Site</a><span class="down-arrow"></span>
                            <ul>
                                <li>
                                    <a id="neighbourhood" href="start.html" class="start">In your neighborhood</a>
                                </li>
                                <li>
                                    <a id="school" href="schools.html" class="schools">In your school</a>
                                </li>
                                <li>
                                    <a id="workplace" href="benefits.html" class="workplace">In your workplace</a>
                                </li>
                            </ul>
                        </li>
                    </ul>






                    <nav>
                        <ul id="nav">


                            <li>
                                <a id="about" href="about.html">About</a>
                            </li>

                            <li class="help-col">
                                <a id="help" href="http://help.farmigo.com/" target="_blank">Help</a>
                            </li>

                        </ul>
                    </nav>
                </div>
            </header>
        </div>





        <section id="confirmation-popup" style="display:none;">
            <span id="type-icon"></span>
            <h3 class="heading"></h3>
            <p class="message"></p>
            <button class="ok button">Continue</button>
            <a class="cancel">Return</a>
        </section>





        <div class="centered">
            <div class="help-tab">
                <div class="help-links">
                    <ul class="links dynamic">

                        <li>
                            <a href="http://help.farmigo.com/hc/en-us/articles/202778649-How-do-I-sign-up-" target="_blank">How do I sign up?</a>
                        </li>

                        <li>
                            <a href="http://help.farmigo.com/hc/en-us/articles/200940355-What-is-the-Community-pick-up-experience-like-" target="_blank">What is the Community pick up experience like?</a>
                        </li>

                        <li>
                            <a href="http://help.farmigo.com/hc/en-us/articles/203515485-When-Can-I-Order-" target="_blank">When can I order?</a>
                        </li>

                    </ul>
                    <ul class="links fixed">
                        <li>
                            <a class="browse-faq" href="http://help.farmigo.com/" target="_blank"><i></i>Browse FAQ</a>
                        </li>
                        <li>
                            <a class="contact" href="http://help.farmigo.com/hc/en-us/requests/new" target="_blank"><i></i>Contact Support</a>
                        </li>
                    </ul>
                </div>
 
            </div>
        </div>



        <!-- widgets -->










        <div id="loginStep" class="boxed-page" style="display: none;">

            <div class="main-content centered">

<!--                <div class="tabs community" style="display: none;">
                    <ul>
                        <li><a class="login active" >Login</a></li>
                        <li><a class="create-user" >Sign Up</a></li>
                    </ul>
                </div>-->

                <div id="login" class="main-box">

                    <div class="heading">
                        <h1 class="title">Please Log In</h1>
                    </div>

                    <div class="or-separator">
                        <p>   </p>
                    </div>


                    <div id="login-email">
               
                        <%@page contentType="text/html" pageEncoding="UTF-8"%>
                        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                        
                        
                        <form method="post" action="ServletController">
                            <input type="hidden" name="commande" value="pwdperdu" id="commande" />
                            <p>
                                <label for="email">Adresse email <span class="requis">*</span></label>
                                <input type="email" id="email" name="login" value="<c:out value="${param.email5}"/>" size="20" maxlength="60" />
                                <span class="erreur">${erreurs['email5']}</span>
                            </p>
<!--                            <input type="submit" name="Login" id="login" value="mot de passe oublié, envoyez moi un mail"/>-->
                            
                            <div class="buttons-box-with-cancel back-enabled group">
                                <button id="login" class="email-pwd-button primary">envoyez moi un mot de passe</button>
<!--                                <button id="button-cancel" class="secondary">Cancel</button>-->
                            </div>  
                            
                        </form>
                
 
                        <div id="error-message-box">
                            <span class="ex-mark-image"></span>
                            <span id="error-message-container"></span>
                        </div>

                    </div>

                </div>

            </div>





            <script>
                Farmigo.common.flow.loginSource = 'null';

                window.runAfter(function () {
                    var startFlow = new Farmigo.common.flow.LoginFlow();
                    startFlow.startWithLogin();
                });

            </script>

        </div>



        <div id='fb-root'></div>

<!--        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '148203751875853',
                    status: true, // check login status
                    cookie: true, // enable cookies to allow the server to access the
                    xfbml: true // parse XFBML
                });
                isFacebookLoaded = true;
            };

            // Load the SDK Asynchronously
            (function (d) {
                var js, id = 'facebook-jssdk';
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement('script');
                js.id = id;
                js.async = true;
                js.src = "../connect.facebook.net/en_US/all.js";
                d.getElementsByTagName('head')[0].appendChild(js);
            }(document));

            window.facebookLoginFunc = function () {
                try {
                    FB.login(function (response) {
                        if (response.authResponse) {
                            FB.api('/me', function (response) {
                                if (response.id != null && response.email != null) {
                                    window.handleFacebookLogin(response.id, response.email, response.first_name, response.last_name);
                                } else {
                                    window.cleanupOnFBLoginFailure();
                                }
                            });
                        } else {
                            window.cleanupOnFBLoginFailure();
                        }
                    }, {
                        scope: 'email'
                    });
                } catch (err) {
                    window.cleanupOnFBLoginFailure();
                }
            };
        </script>-->

</body>
<html

