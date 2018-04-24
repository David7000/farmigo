<!DOCTYPE html>
<html class="farmigo-com">

  


    <head>
        <title>Home </title>   
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
        <meta name="description" content="Shop your online farmer?s market ? fresh food, direct from the source. Buy local produce, dairy, meats, and more with delivery straight to your neighborhood."/>
        <meta property="og:title" content="20% off, amazingly fresh food!"/>
        <meta property="og:description" content="I love Farmigo! Incredible food, direct from local farms & producers. Use my code LOCAL20 for 20% off your first order."/>
        <meta property="og:image" content="https://www.farmigo.com/site/common/images/fb-share.jpg"/>
        <link type="image/x-icon" rel="shortcut icon" href="site/common/images/favicon.png">
        <link href="site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>
        <link rel="icon" href="site/common/images/farmigo-app-icon.png">
        <link rel="apple-touch-icon" href="site/common/images/farmigo-app-icon.png"/>
        <link type='text/css' rel="stylesheet" href='site/farmigo.com/css/maind3d7.css?2016-06-24-2230'>
        <link rel="stylesheet" href="/CSS/stylee.css">

        <script src="site/common/js/lib/log4javascript_production62b4.js?v=1.4.3"></script>
        <script src="site/common/js/lib/fastclick.js"></script>
        <script src="site/common/js/namespace/namespace.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAfANpgkDJZ9xA6_PeUIy0PhJbC75OMruc"></script>
        <script src="site/farmigo.com/buildd3d7.js?2016-06-24-2230"></script>

        <script>
            // General values that are detected by the server and passed to JS code
            Farmigo.common.data.isProduction = true;
            Farmigo.common.data.isFarmigoUser = false;
            Farmigo.common.data.isIpad = 0;
            Farmigo.common.data.isTouch = 'ontouchstart' in document.documentElement;
            Farmigo.common.data.isMobile = 0;
            Farmigo.common.data.isMobileDevice = 0;
            Farmigo.common.data.debugMode = false;
            Farmigo.common.data.page = 'Home';
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




   
    <!--jsp:include page="/site/common/jsp/SessionCam.jsp"/> -->




    <script>
        Farmigo.com.data.startApplyUrl = 'index.html';
        Farmigo.com.data.currentPage = 'home';
    </script>


    <script>
        // Create regions object to be used when client needs Region dependent information (map page, organizer page)
        Farmigo.common.data.regions = {};

        Farmigo.common.data.regions['NY'] = {
            farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAwPP3tQsM'
        };

        Farmigo.common.data.regions['SF'] = {
            farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAwOnmlAoM'
        };

        Farmigo.common.data.regions['SEA'] = {
            farmKey: 'ahVzfmZhcm1pZ28tY29tbXVuaXRpZXNyEQsSBEZhcm0YgICAkPLDgAkM'
        };


    </script>
    <script>
        window.runAfter(function () {
            // ga for main pages
            var ga = Farmigo.common.analytics.Common;
            ga.handleHomeAnalytics(
                    ga.Flow.HOME

                    );
        });
    </script>


</head>




<body id="page-home" class="not-mobile desktop ">




    <section class="member-how-section">
        <a class="close">Close</a>
        <div class="centered">
            <h1>How Farmigo Works</h1>
            <ul>

                <li>
                    <figure>
                        <img src='site/farmigo.com/images/home/how1d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>Order Online</h3>
                            <p class="big">Do your weekly shopping for fresh produce, dairy, fish, meats, snacks, and more! Order a la carte, with total flexibility.</p>
                        </figcaption>
                    </figure>
                </li>

                <li>
                    <figure>
                        <img src='site/farmigo.com/images/home/how2d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>We Harvest</h3>
                            <p class="big">Our products are typically harvested or made after you order, helping us reduce food waste and ensure everything is incredibly fresh and loaded with nutrition.</p>
                        </figcaption>
                    </figure>
                </li>

                <li>
                    <figure>
                        <img src='site/farmigo.com/images/home/how3d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>You Pick Up</h3>
                            <p class="big">Head to your neighborhood pick-up spot to get your groceries and enjoy!</p>
                        </figcaption>
                    </figure>
                </li>

            </ul>
            <button  onclick="window.location.href = '/JSP_boundary/login.jsp'"   class="how-cta button big">Shop Now</button>
        </div>
    </section>


    <div id="page-content">






        <div id="header-box" >
            <header id="header">
                <div class="header-content centered group">


                    <a id="logo" href="/index.jsp"></a>

                    <ul id="user-menu" class="dropdown-menu ">

                        <li id="login" class="menu menu-box" >
                            <a href='/JSP_boundary/login.jsp'>Log In</a>
                        </li>

                        <li id="Inscription" class="menu menu-box" >
                            <a href='/JSP_boundary/signup.jsp'>Inscription</a>
                        </li>                            


                        <li id="user-title" class="menu" hasChildren style='display: none;'>
                            <a></a><span class="down-arrow"></span>

                            <ul style='display: none;'>

                                <li><a id="logout"><span class="icon"></span>Log Out
                                    </a></li>
                            </ul>
                        </li>
                    </ul>

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
                            <a href="http://help.farmigo.com/hc/en-us/articles/200940285-How-does-Farmigo-select-its-producers-" target="_blank">How does Farmigo select its producers?</a>
                        </li>

                        <li>
                            <a href="http://help.farmigo.com/hc/en-us/articles/200940355-What-is-the-Community-pick-up-experience-like-" target="_blank">What is the Community pick up experience like?</a>
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






        <script>
            window.runAfter(function () {
                Farmigo.com.view.HomePageView.show();
            });
        </script>
        <section class="content-section">
            <div class="content default-view">
                <div class="default-content">
                    <h1 class="hero-title">Good food is worth it</h1>
                    <h2 class="hero-title">Get fresh food, direct from the source &mdash;<br class="visible-xs"/> shop our online farmer&rsquo;s market</h2>
                    <!--            <button  href="#" onclick="lightbox_open();" class="cta button ghost">Shopp Now</button>-->




                    <div id="light">
                        <a class="boxclose" id="boxclose" onclick="lightbox_close();"></a>
                        <video id="VisaChipCardVideo" width="600" controls>
                            <source src="https://www.w3schools.com/html/mov_bbb.mp4" type="video/mp4">

                            <!--Browser does not support <video> tag -->
                        </video>
                    </div>
                    <div  id="fade" onClick="lightbox_close();"></div>
                    <div>

                        <button class="hero-title" href="#" onclick="lightbox_open();">Watch video</button>
                    </div>

                    <script  src="/JS/index.js"></script>

                </div>


                <!--        <div class="region-content">
                            <h2 class="hero-title">Where are you located?</h2>
                            <ul class="region-list">
                                
                                    <li>
                                        <button class="button ghost" data-id="NY">New York</button>
                                    </li>
                                
                                    <li>
                                        <button class="button ghost" data-id="NJ">New Jersey</button>
                                    </li>
                                
                                    <li>
                                        <button class="button ghost" data-id="SF">Northern California</button>
                                    </li>
                                
                                    <li>
                                        <button class="button ghost" data-id="SEA">Seattle-Tacoma</button>
                                    </li>
                                
                            </ul>
                            <div class="forms transparent">
                                <div class="forms-content">
                                    <a class="out-of-region-link">Request Farmigo in your area &raquo;</a>
                                    <form class="out-of-region-form" onsubmit="return false;" style="display:none;">
                                        <div class="zip-code form-field">
                                            <input  id="zipCode" type="text" placeholder="Zip Code" error="please enter valid value" mandatory>
                                        </div>
                                        <div class="email form-field">
                                            <input id="email" type="email" form-type="email" placeholder="Email" error="Please enter a valid email" mandatory>
                                        </div>
                                        <button type="submit" class="button">Submit</button>
                                    </form>
                                    <div class="out-of-region-final-content" style="display:none;">
                                        <i class="check-mark"></i>
                                        <h3>Thanks!</h3>
                                        <p>We'll let you know when we're in your neighborhood!</p>
                                    </div>
                                </div>
                            </div>
                        </div>-->
            </div>
            <button class="how-it-works semi-ghost">How it works</button>
        </section>



    </div>

    <!-- marketplace common footer -->

    <footer>
        <div class="top">
            <div class="centered group">
                <div class="col col-1">
                    <span class="logo"></span>
                    <p class="mission">Our mission is to create a food system that's better for everyone, from farmers to eaters.</p>
                </div>
                <div class="col col-2">
                    <nav>
                        <ul>
                            <li>
                                <h3>L'entreprise</h3>
                            </li>
                            <li>
                                <a class="about" href="/JSP_boundary/about/mission.jsp" target="_blank">
                                    Histoire
                                </a>
                            </li>
                            <li>
                                <a class="jobs" href="/JSP_boundary/about/team.jsp" target="_blank">
                                    l'equipe
                                </a>
                            </li>

                        </ul>
                    </nav>
                </div>
                <div class="col col-3">
                    <nav>
                        <ul>
                            <li>
                                <h3>Réseau</h3>
                            </li>
                            <li>
                                <a class="faq" href="/JSP_boundary/about/press.jsp" target="_blank"> 
                                    Comment ça marche ????
                                </a>
                            </li>

                            <li>
                                <a class="producer-standards" href="/JSP_boundary/about/jobs.jsp" target="_blank">
                                    lab
                                </a>
                            </li>                               


                        </ul>
                    </nav>
                </div>
                <div class="col col-4">
                    <nav>
                        <ul>
                            <li>
                                <h3>Contact</h3>
                            </li>
                            <li>
                                <a class="blog" href="mailto:support@mail.fr" target="_blank">support@mail.fr</a>
                            </li>
                            <li>
                                <a class="map"  >
                                    TEL:78576578667
                                </a>
                            </li>

                        </ul>
                    </nav>
                </div>
                <div class="col col-last">
                    <div class="follow-us">
                        <h3>Suivez-nous</h3>
                        <ul class="group">
                            <li><a class="facebook" title="Facebook" target="_blank" href="http://www.facebook.com/"></a></li>
                            <li><a class="twitter" title="Twitter" target="_blank" href="http://twitter.com/"></a></li>
                            <li><a class="instagram" title="Instagram" target="_blank" href="https://instagram.com/"></a></li>
                            <li><a class="pinterest" title="Pinterest" target="_blank" href="https://www.pinterest.com/"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </footer>     


    <div id='fb-root'></div>


</body>
