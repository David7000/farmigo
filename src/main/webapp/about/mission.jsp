<!DOCTYPE html>
<html class="farmigo-com">

<script>
    window.functionsToRun = [];
    window.runAfter = function(callback) {
        if (window.requireFinished) {
            callback();
        } else {
            window.functionsToRun.push(callback);
        }
    }
</script>


<!-- Mirrored from www.farmigo.com/about/mission by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 25 Jun 2016 16:56:47 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
<head>
    






<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link type="image/x-icon" rel="shortcut icon" href="../site/common/images/favicon.png">
<link href="../site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>


<script src="../site/common/js/lib/log4javascript_production62b4.js?v=1.4.3"></script>
<script src="../site/common/js/lib/fastclick.js"></script>




    <link type='text/css' rel="stylesheet" href='../site/farmigo.com/css/maind3d7.css?2016-06-24-2230'>








    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">


<meta name="description" content="Shop your online farmer’s market – fresh food, direct from the source. Buy local produce, dairy, meats, and more with delivery straight to your neighborhood."/>

<!-- Facebook open graph meta tags -->
<meta property="og:title" content="20% off, amazingly fresh food!"/>
<meta property="og:description" content="I love Farmigo! Incredible food, direct from local farms & producers. Use my code LOCAL20 for 20% off your first order."/>
<meta property="og:image" content="https://www.farmigo.com/site/common/images/fb-share.jpg"/>

<script src="../site/common/js/namespace/namespace.js"></script>







<script>
	// General values that are detected by the server and passed to JS code
	Farmigo.common.data.isProduction = true;
	Farmigo.common.data.isFarmigoUser = false;
	Farmigo.common.data.isIpad = 0;
	Farmigo.common.data.isTouch = 'ontouchstart' in document.documentElement;
	Farmigo.common.data.isMobile = 0;
	Farmigo.common.data.isMobileDevice = 0;
	Farmigo.common.data.debugMode = false;
	Farmigo.common.data.page = 'About';
	Farmigo.common.data.pageWidth = 993;
	Farmigo.common.data.farmKey =  null ;
	Farmigo.common.data.supportEmail = 'help@farmigo.com';
	Farmigo.common.data.loginUrl = '../login.html';
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
(function() {

	Farmigo.enums = {"EnumSigninStatus":{"Ok":"Ok","Unauthorized":"Unauthorized","WrongEmail":"WrongEmail","WrongPassword":"WrongPassword","ChangePassword":"ChangePassword","EmailSendFailed":"EmailSendFailed","OkExistingForFarm":"OkExistingForFarm"},"SubscriptionStatus":{"NoSubscription":"NoSubscription","SubscriptionExists":"SubscriptionExists","ProcessingSubscription":"ProcessingSubscription","HoldSubscription":"HoldSubscription","SubscriptionCanceled":"SubscriptionCanceled","SplitSubscriptionMember":"SplitSubscriptionMember"},"StatusCode":{"OK":"OK","FAILURE":"FAILURE","TIMEOUT":"TIMEOUT","EXHAUSTED":"EXHAUSTED"},"EnumAction":{"ThankYou":"ThankYou","LeadExists":"LeadExists","StartApply":"StartApply","OK":"OK","Failed":"Failed"},"EnumRegion":{"NY":"NY","SF":"SF","SEA":"SEA"},"EnumSearchSource":{"Member":"Member","Item":"Item","StoreItem":"StoreItem","Location":"Location","Route":"Route","Schedule":"Schedule","Producer":"Producer"}};

	Farmigo.enums.JsonStatus = {
		OK : 'OK',
		FAILED : 'Failed'
	};

})();
</script>


<!-- farmigo enums for js -->

<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAfANpgkDJZ9xA6_PeUIy0PhJbC75OMruc"></script>




    <script src="../site/farmigo.com/buildd3d7.js?2016-06-24-2230"></script>


<script>
		
</script>

<!-- Google Analytics -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../../www.google-analytics.com/analytics.js','_ga');

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
<script src="../../cdn.optimizely.com/js/104763006.js"></script>
<script>
	window.optimizely = window.optimizely || [];
	window.optimizely.push("activateUniversalAnalytics");
</script>

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="../../cdn.mxpnl.com/libs/mixpanel-2.2.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
</script><!-- end Mixpanel -->

<script>
    if (Farmigo.common.data.isProduction)
        mixpanel.init("1de18df0e735994ce21b919f3fa006eb");
    else
        mixpanel.init("e560df27bfe6f87fde28c4307b30b940");

    window.runAfter(function () {

        var MemberData = (((Farmigo || {}).common ||{}).model||{}).MemberData;
        if (MemberData){
            mixpanel.identify(MemberData.email);

            if (MemberData.firstName){
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
    (function() {
        function __ldinsp(){var insp = document.createElement('script'); insp.type = 'text/javascript'; insp.async = true; insp.id = "inspsync"; insp.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://cdn.inspectlet.com/inspectlet.js'; var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(insp, x); }
        if (window.attachEvent){
            window.attachEvent('onload', __ldinsp);
        }else{
            window.addEventListener('load', __ldinsp, false);
        }
    })();
</script>
<!-- End Inspectlet Embed Code -->

<!--jsp:include page="/site/common/jsp/SessionCam.jsp"/> -->

    









<script>
	Farmigo.com.data.startApplyUrl = '../index.html';
	Farmigo.com.data.currentPage = 'about';
</script>


<script>
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
	

</script>
    <script>
        window.runAfter(function() {
            // ga for main pages
            var ga = Farmigo.common.analytics.Common;
            ga.handleHomeAnalytics(
                
                    ga.Flow.ABOUT + '/' + 'mission'
                
            );
        });
    </script>
    <title>About | Farmigo</title>

    

<link rel="icon" href="../site/common/images/farmigo-app-icon.png">
<link rel="apple-touch-icon" href="../site/common/images/farmigo-app-icon.png"/>


    
	
<!-- Production -->
<!-- Google Tag Manager -->
<noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-MR23K8"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '../../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MR23K8');</script>
<!-- End Google Tag Manager -->

</head>

<body id="page-about" class="not-mobile desktop mission-tab">
    
    <div id="page-content">
        
            




<div id="header-box" >
    <header id="header">
        <div class="header-content centered group">
            <a id="logo" href="../index.jsp"></a>

            <ul class="start-community dropdown-menu">
                <li hasChildren>
                    <a>Host a Pickup Site</a><span class="down-arrow"></span>
                    <ul>
                        <li>
                            <a id="neighbourhood" href="../start.jsp" class="start">In your neighborhood</a>
                        </li>
                        <li>
                            <a id="school" href="../schools.jsp" class="schools">In your school</a>
                        </li>
                        <li>
                            <a id="workplace" href="../benefits.jsp" class="workplace">In your workplace</a>
                        </li>
                    </ul>
                </li>
            </ul>

            
            

            












<ul id="user-menu" class="dropdown-menu ">
	
	<li id="login" class="menu menu-box" >
		<a href='../login.jsp'>Log In</a>
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
                    
                        
                        <li class="help-col">
                            <a id="help" href="../about.jsp" target="_blank">Help</a>
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
                                    <a href="http://help.farmigo.com/hc/en-us/articles/200940435-I-am-interested-in-becoming-a-Farmigo-Organizer-and-starting-my-own-food-Community-How-do-I-get-started-" target="_blank">I am interested in becoming a Farmigo Organizer - how do I get started?</a>
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
                <a class="help-toggle">
                    <span class="text">Help</span>
                    <i></i>
                </a>
            </div>
        </div>

        






<script>
	window.runAfter(function() {
		var ga = Farmigo.common.analytics.Common;
		
	});
</script>
<nav class="about-nav group">
	<div class="centered">
		<ul>
			
				<li selected >
					<a href="mission.jsp">
						About
					</a>
				</li>
			
				<li  >
					<a href="team.jsp">
						Team
					</a>
				</li>
			
				<li  >
					<a href="press.jsp">
						Press
					</a>
				</li>
			
				<li  >
					<a href="jobs.jsp">
						Jobs
					</a>
				</li>
			
		</ul>
	</div>
</nav>

<div class="tab-content">
	
	





<script>
    window.runAfter(function() {
        Farmigo.com.view.AboutPageView.show();
    });
</script>

<section class="banner-section">
    <div class="centered">
        <h2>We believe you deserve to know where your food comes from</h2>
    </div>
</section>


<section class="producer-section">
    <div class="centered">
        <div class="group">
            <img class="decoration" src='../site/farmigo.com/images/about/producersd3d7.svg?2016-06-24-2230'/>
            <div class="content-col">
                <h2>Farmigo partners receive 2 to 3 times more than farms that sell to typical supermarkets</h2>
                <p>In other words, our farmers and foodmakers are earning what their food is actually worth. The industrial food system has set a false standard, and to fix it, we all need to recognize real value &mdash; in the field and on our tables.</p>
            </div>
        </div>
        <ul class="producer-list group">
            
            <li>
                <figure>
                    <img src='../site/farmigo.com/images/about/producer1d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <span class="name">Christopher Washington</span>
                        <span class="title">Radicle Farms</span>
                        
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='../site/farmigo.com/images/about/producer2d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <span class="name">Rory Chase</span>
                        <span class="title">Chaseholm Farm Creamery</span>
                        
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='../site/farmigo.com/images/about/producer3d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <span class="name">Kristi Brown</span>
                        <span class="title">That Brown Girl Cooks</span>
                        
                            <span class="credit">(Photo Credit: Jenny Jimenez)</span>
                        
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='../site/farmigo.com/images/about/producer4d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <span class="name">Viraj Puri, Eric Haley, Jennifer Nelkin Frymark</span>
                        <span class="title">Gotham Greens</span>
                        
                    </figcaption>
                </figure>
            </li>
            
        </ul>
    </div>
</section>

<section class="waste-section">
    <div class="centered group">
        <div class="content-col">
            <h2>Good food should never go to waste</h2>
            <p>
                Most grocery stores lose 40% of their inventory due to expiration and spoilage. Our model yields less than 3% food waste and we don't hold much inventory to ensure you're getting the freshest food in a responsible way.
                Our marketplace is only open for a few days each week because we need to give our farmers and foodmakers time to harvest or make exactly what you've bought &mdash; no more, no less.
            </p>
            <p>But, if we do have any extra, we donate to local food banks.</p>
        </div>
        <img src='../site/farmigo.com/images/about/truckd3d7.svg?2016-06-24-2230'/>
    </div>
</section>

<section class="community-section">
    <figure>
        <figcaption>Members at a school Community pick up their groceries</figcaption>
    </figure>
</section>

<section class="sustainable-section">
    <div class="centered">
        <h2>We believe the best food is sustainably made</h2>
        <p>
            Our food is made with whole, clean ingredients, our produce is non-GMO and grown sustainably, and our livestock, poultry, and ﬁsh are raised or caught humanely and conscientiously.
            All of our partners are completely transparent about their operating practices.
        </p>
    </div>
</section>

<section class="mission-section">
    <div class="centered">
        <h2>We’re on a mission to create a food system that’s better for everyone, from farmers to eaters</h2>
        <p>
            We believe that many of us are ready for an alternative way to shop, cook, and break bread with our families and friends.
            We want to bring joy to those who savor their food and care about where it comes from, who made it, and how it got to their plate.
        </p>
    </div>
</section>

<section class="region-section">
    <h2>Ready to start?</h2>
    <p>Shop your local market:</p>
    <ul class="region-list">
        
        <li>
            <button class="button" data-id="NY">New York</button>
        </li>
        
        <li>
            <button class="button" data-id="NJ">New Jersey</button>
        </li>
        
        <li>
            <button class="button" data-id="SF">Northern California</button>
        </li>
        
        <li>
            <button class="button" data-id="SEA">Seattle-Tacoma</button>
        </li>
        
    </ul>
</section>

<section class="b-corp-section centered">
    <i class="b-corp-logo" title="B Corporation logo"></i>
    Farmigo is proud to be a certified Benefit Corporation (or B corporation for short), a new kind of company that uses the power of business to solve social and environmental problems.
    <a href="http://www.bcorporation.net/about" target="_blank">Learn more</a>
</section>
</div>

    </div>
    
        <!-- marketplace common footer -->








<script>
	window.runAfter(function() {
		var ga = Farmigo.common.analytics.Common;

        $('footer nav a').click(function() {
            ga.trackEventFarmigoCom(ga.Category.FOOTER, $(this).attr('class') + ' clicked');
        });
        $('footer .follow-us a').click(function() {
            ga.trackEventFarmigoCom(ga.Category.FOOTER, 'follow us clicked', $(this).attr('class'));
        });
	});
</script>
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
                            <a class="about" href="../about.jsp">
                                About
                            </a>
                        </li>
                        <li>
                            <a class="jobs" href="jobs.jsp">
                                We're Hiring!
                            </a>
                        </li>
                        <li>
                            <a class="press" href="press.jsp">
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
                            <a class="faq" href="http://help.farmigo.com/" target="_blank">FAQ</a>
                        </li>
                        <li class="visible-xs">
                            <a class="privacy" href="../privacy.jsp">
                                Privacy
                            </a>
                        </li>
                        <li class="visible-xs">
                            <a class="terms" href="../terms.jsp">
                                Terms
                            </a>
                        </li>
                        <li>
                            <a class="producer-standards" href="../producer-standards.jsp">
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
                            <a class="blog" href="http://blog.farmigo.com/" target="_blank">Blog</a>
                        </li>
                        <li>
                            <a class="map" href="../map.jsp">
                                Shop the Market
                            </a>
                        </li>
                        <li>
                            <a class="start" href="../start.jsp">
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
                        <li><a class="facebook" title="Facebook" target="_blank" href="http://www.facebook.com/Farmigo"></a></li>
                        <li><a class="twitter" title="Twitter" target="_blank" href="http://twitter.com/#!/farmigo"></a></li>
                        <li><a class="instagram" title="Instagram" target="_blank" href="https://instagram.com/farmigo/"></a></li>
                        <li><a class="pinterest" title="Pinterest" target="_blank" href="https://www.pinterest.com/farmigo/"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom">
        <div class="centered group">
            <div class="col col-1">
                <span class="rights">&copy; 2016 Farmigo, PBC.</span>
            </div>
            <div class="col col-2 hidden-xs">
                <nav>
                    <ul>
                        <li>
                            <a class="privacy" href="../privacy.jsp">
                                Privacy
                            </a>
                        </li>
                        <li>
                            <a class="terms" href="../terms.jsp">
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


    
    

<div id='fb-root'></div>

<script>
	window.fbAsyncInit = function() {
		FB.init({
			appId : '148203751875853',
			status : true, // check login status
			cookie : true, // enable cookies to allow the server to access the
			xfbml : true // parse XFBML
		});
		isFacebookLoaded = true;
	};

	// Load the SDK Asynchronously
	(function(d) {
	var js, id = 'facebook-jssdk';
		if (d.getElementById(id)) {
			return;
		}
		js = d.createElement('script');
		js.id = id;
		js.async = true;
		js.src = "../../connect.facebook.net/en_US/all.js";
		d.getElementsByTagName('head')[0].appendChild(js);
	}(document));

	window.facebookLoginFunc = function() {
		try {
			FB.login(function(response) {
				if ( response.authResponse ) {
					FB.api('/me', function(response) {
						if ( response.id != null && response.email != null ) {
							window.handleFacebookLogin( response.id, response.email, response.first_name, response.last_name );
						} else {
							window.cleanupOnFBLoginFailure();
						}
					});
				} else {
					window.cleanupOnFBLoginFailure();
				}
			}, {
				scope : 'email'
			});
		} catch (err) {
			window.cleanupOnFBLoginFailure();
		}
	};
</script>

</body>

    
