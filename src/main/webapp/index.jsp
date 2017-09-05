<!DOCTYPE html>

<html class="farmigo-com">
    <head>
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

    
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <link type="image/x-icon" rel="shortcut icon" href="site/common/images/favicon.png">
        <link href="site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>
      
        <script src="site/common/js/lib/log4javascript_production62b4.js?v=1.4.3"></script>
        <script src="site/common/js/lib/fastclick.js"></script>
       
        <link type='text/css' rel="stylesheet" href='site/farmigo.com/css/maind3d7.css?2016-06-24-2230'>
       
        <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">
        <meta name="description" content="Shop your online farmer?s market ? fresh food, direct from the source. Buy local produce, dairy, meats, and more with delivery straight to your neighborhood."/>
        <!-- Facebook open graph meta tags -->
        <meta property="og:title" content="20% off, amazingly fresh food!"/>
        <meta property="og:description" content="I love Farmigo! Incredible food, direct from local farms & producers. Use my code LOCAL20 for 20% off your first order."/>
        <meta property="og:image" content="images/fb-share.jpg"/>
        <script src="site/common/js/namespace/namespace.js"></script>

        
        


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

        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAfANpgkDJZ9xA6_PeUIy0PhJbC75OMruc"></script>       
        <script src="site/farmigo.com/buildd3d7.js?2016-06-24-2230"></script>
     
        

        <!-- Google Analytics -->

        <!-- End Google Analytics -->

        <!-- Optimizely A/B testing tool -->
       
         <!--   start Mixpanel -->
        
        <!-- end Mixpanel -->

   <!-- Evalute screen capture tools -->




        <!-- Begin Inspectlet Embed Code -->
 <!-- End Inspectlet Embed Code -->

        <!--jsp:include page="/site/common/jsp/SessionCam.jsp"/> -->

        <script>
            Farmigo.com.data.startApplyUrl = 'index.html';
            Farmigo.com.data.currentPage = 'home';
        </script>


        <title>Home | Farmigo</title>

        <link rel="icon" href="site/common/images/farmigo-app-icon.png">
        <link rel="apple-touch-icon" href="site/common/images/farmigo-app-icon.png"/>

        <!-- Production -->
        <!-- Google Tag Manager -->
        

    <body id="page-home" class="not-mobile desktop ">

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
                                        <a id="neighbourhood" href="start.jsp" class="start">In your neighborhood</a>
                                    </li>
                                    <li>
                                        <a id="school" href="schools.jsp" class="schools">In your school</a>
                                    </li>
                                    <li>
                                        <a id="workplace" href="benefits.jsp" class="workplace">In your workplace</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>


                        <ul id="user-menu" class="dropdown-menu ">

                            <li id="login" class="menu menu-box" >
                                <a href='JSP_boundary/login.jsp'>Log In</a>
                            </li>
                            
                            <li id="Inscription" class="menu menu-box" >
                                <a href='JSP_boundary/enregistrer.jsp'>Inscription</a>
                            </li>                            
                            
                            
                            <li id="user-title" class="menu" hasChildren style='display: none;'>
                                <a></a><span class="down-arrow"></span>

                                <ul style='display: none;'>

                                    <li><a id="logout"><span class="icon"></span>Log Out
                                        </a></li>
                                </ul>
                            </li>
                        </ul>


                        <nav>
                            <ul id="nav">


                                <li>
                                    <a id="about" href="about.jsp">About</a>
                                </li>

                                <li class="help-col">
                                    <a id="help" href="about.jsp" target="_blank">Help</a>
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
                                <a href="http://help..com/hc/en-us/articles/202778649-How-do-I-sign-up-" target="_blank">How do I sign up?</a>
                            </li>

                            <li>
                                <a href="http://help..com/hc/en-us/articles/200940285-How-does-Farmigo-select-its-producers-" target="_blank">How does Farmigo select its producers?</a>
                            </li>

                            <li>
                                <a href="http://help..com/hc/en-us/articles/200940355-What-is-the-Community-pick-up-experience-like-" target="_blank">What is the Community pick up experience like?</a>
                            </li>

                        </ul>
                        <ul class="links fixed">
                            <li>
                                <a class="browse-faq" href="http://help..com/" target="_blank"><i></i>Browse FAQ</a>
                            </li>
                            <li>
                                <a class="contact" href="http://help..com/hc/en-us/requests/new" target="_blank"><i></i>Contact Support</a>
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

                    </div>
                    
                </div>
                <button class="how-it-works semi-ghost">How it works</button>   
            </section>
        </div>

        <!-- marketplace common footer    open Open  -->

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

            </div>
        </section>		 


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
                                    <h3>Company</h3>
                                </li>
                                <li>
                                    <a class="about" href="about.jsp">
                                        About
                                    </a>
                                </li>
                                <li>
                                    <a class="jobs" href="about/jobs.jsp">
                                        We're Hiring!
                                    </a>
                                </li>
                                <li>
                                    <a class="press" href="about/press.jsp">
                                        Press
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col col-3">
                        <nav>
                            <ul>
                                <li>
                                    <h3>Info</h3>
                                </li>
                                <li>
                                    <a class="faq" href="http://help..com/" target="_blank">FAQ</a>
                                </li>
                                <li class="visible-xs">
                                    <a class="privacy" href="privacy.jsp">
                                        Privacy
                                    </a>
                                </li>
                                <li class="visible-xs">
                                    <a class="terms" href="terms.jsp">
                                        Terms
                                    </a>
                                </li>
                                <li>
                                    <a class="producer-standards" href="producer-standards.jsp">
                                        Producer Standards
                                    </a>
                                </li>
                                <li class="hidden-xs">
                                    <a class="csa-software" href="http://www.csamanagementsoftware.com/" target="_blank">
                                        CSA Software
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col col-4">
                        <nav>
                            <ul>
                                <li>
                                    <h3>Community</h3>
                                </li>
                                <li>
                                    <a class="blog" href="http://blog..com/" target="_blank">Blog</a>
                                </li>
                                <li>
                                    <a class="map" href="map.jsp">
                                        Shop the Market
                                    </a>
                                </li>
                                <li>
                                    <a class="start" href="start.jsp">
                                        Start a Pickup Site
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col col-last">
                        <div class="follow-us">
                            <h3>Follow Us</h3>
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
            <div class="bottom">
                <div class="centered group">
                    <div class="col col-1">
                        <span class="rights">&copy; 2017 Farmigo, </span>
                    </div>
                    <div class="col col-2 hidden-xs">
                        <nav>
                            <ul>
                                <li>
                                    <a class="privacy" href="privacy.jsp">
                                        Privacy
                                    </a>
                                </li>
                                <li>
                                    <a class="terms" href="terms.jsp">
                                        Terms
                                    </a>
                                </li>
                                <li>

                                    <a class="help" href="mailto:help@farmigo.com">
                                        help@farmigo.com
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col col-last hidden-xs">
                        <a class="b-corp" href="http://www.bcorporation.net/about" title="B Corp" target="_blank"></a>
                        <div class="hq">Farmigo is a B Corp Headquartered in Brooklyn, NY</div>
                    </div>
                </div>
            </div>
        </footer>


    </body>

</html>