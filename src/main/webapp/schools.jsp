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


<!-- Mirrored from www.farmigo.com/schools by HTTrack Website Copier/3.x [XR&CO'2010], Sat, 25 Jun 2016 16:54:22 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8"><!-- /Added by HTTrack -->
<head>
    

    
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link type="image/x-icon" rel="shortcut icon" href="site/common/images/favicon.png">
<link href="site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>


<script src="site/common/js/lib/log4javascript_production62b4.js?v=1.4.3"></script>
<script src="site/common/js/lib/fastclick.js"></script>




<link type='text/css' rel="stylesheet" href='site/farmigo.com/css/maind3d7.css?2016-06-24-2230'>



<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, width=device-width">


<meta name="description" content="Shop your online farmer’s market – fresh food, direct from the source. Buy local produce, dairy, meats, and more with delivery straight to your neighborhood."/>

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
	Farmigo.common.data.page = 'Schools';
	Farmigo.common.data.pageWidth = 993;
	Farmigo.common.data.farmKey =  null ;
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




    <script src="site/farmigo.com/buildd3d7.js?2016-06-24-2230"></script>


<script>
		
</script>

<!-- Google Analytics -->
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../www.google-analytics.com/analytics.js','_ga');

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
<script src="../cdn.optimizely.com/js/104763006.js"></script>
<script>
	window.optimizely = window.optimizely || [];
	window.optimizely.push("activateUniversalAnalytics");
</script>

<!-- start Mixpanel --><script type="text/javascript">(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="../cdn.mxpnl.com/libs/mixpanel-2.2.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
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
	Farmigo.com.data.startApplyUrl = 'index.html';
	Farmigo.com.data.currentPage = 'schools';
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
                
                    ga.Flow.START + '/' + ga.Flow.SCHOOLS
                
            );
        });
    </script>
    <title>Start a Community | Farmigo</title>

    

<link rel="icon" href="site/common/images/farmigo-app-icon.png">
<link rel="apple-touch-icon" href="site/common/images/farmigo-app-icon.png"/>


    
	
<!-- Production -->
<!-- Google Tag Manager -->
<noscript><iframe src="http://www.googletagmanager.com/ns.html?id=GTM-MR23K8"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        '../www.googletagmanager.com/gtm5445.html?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-MR23K8');</script>
<!-- End Google Tag Manager -->

</head>

<body id="page-schools" class="not-mobile desktop ">
    
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
                                <a id="about" href="about.html">About</a>
                            </li>
                        
                        <li class="help-col">
                            <a id="help" href="about.html" target="_blank">Help</a>
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
                                    <a href="http://help.farmigo.com/hc/en-us/articles/201245975-How-much-space-is-needed-for-a-pickup-site-" target="_blank">How much space is needed for a pickup site?</a>
                                </li>
                        
                                <li>
                                    <a href="http://help.farmigo.com/hc/en-us/articles/201245205-What-is-the-weekly-time-commitment-for-being-an-Organizer-" target="_blank">What is the weekly time commitment for being an Organizer?</a>
                                </li>
                        
                                <li>
                                    <a href="http://help.farmigo.com/hc/en-us/articles/200800839-What-is-the-best-way-to-recruit-community-members-" target="_blank">What is the best way to recruit Community members?</a>
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
        Farmigo.com.view.StartPageView.show();
    });
</script>
<div class="page-start">
	<section class="banner-section banner-section-with-forms">
		<div class="centered">
            <div class="forms">
                <div class="message">
                    <div class="top">
                        
                            <h1>Bring delicious, local food to your community!</h1>
                            <h2>Start a farmer’s market fundraiser for your school or place of worship!</h2>
                        
                    </div>
                    <div class="bottom">
                        <h1>Ready to start?</h1>
                    </div>
                </div>

                <div class="forms-content">
                    <form class="starter-content" onsubmit="return false;">
                        <fieldset>
                            <legend>Farmigo Organizer details form</legend>
                            <div class="fields">
                                <div class="form-group">
                                    <div class="first-name form-field">
                                        <label for="firstName">First Name</label>
                                        <input type="text" id="firstName" form-type="name" placeholder="e.g. Jane" error="Please enter a valid name" mandatory/>
                                    </div>
                                    <div class="last-name form-field">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" id="lastName" form-type="name" placeholder="e.g. Smith" error="Please enter a valid name" mandatory/>
                                    </div>
                                </div>
                                <div class="form-field">
                                    <label for="email">Email Address</label>
                                    <input type="email" id="email" form-type="email"  placeholder="e.g. jane@thesmiths.com" error="Please enter a valid email" mandatory/>
                                </div>
                                <div class="form-group">
                                    
                                        <div class="school-name form-field">
                                            <label for="schoolName">School Name</label>
                                            <input type="text" id="schoolName" form-type="name" placeholder="e.g. Healthy Valley" error="Please enter a valid name" mandatory/>
                                        </div>
                                    
                                    <div class="zipCode form-field">
                                        <label for="zipCode">Zip Code</label>
                                        <input type="text" id="zipCode" form-type="zipCode" placeholder="e.g. 90210" error="Please enter a valid zip code" mandatory/>
                                    </div>
                                </div>
                                
                                <div class="form-field">
                                    <label for="communityType">Where would you like to start your pickup site?</label>
                                    <div class="styled-select">
                                        <select id="communityType">
                                            
                                                <option>School</option>
                                                <option>Place of Worship</option>
                                            
                                            <option>Other</option>
                                        </select>
                                    </div>
                                </div>
                                
                                
                                

                            </div>
                            <div>
                                <button type="submit" class="button" id="get-started">
                                    
                                    Start Raising Money
                                    
                                </button>
                            </div>
                            <div class="error-message-box">
                                <span class="ex-mark-image"></span><span></span>
                            </div>
                        </fieldset>
                    </form>

                    <div class="final-content" style="display:none;">
                        <div class="text">
                            <h2>Thanks!</h2>
                            <p class="big">We'll be in touch with you soon.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</section>

    

    


    

    

    
    <section class="how-section">
        <div class="centered">
            <h1>How Farmigo Works</h1>
            <ul>
                
                <li >
                    <figure>
                        <img src='site/farmigo.com/images/start/how1d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <p class="big"><em>Members order amazing local food online</em>: fresh produce, breads, pasta, and more!</p>
                        </figcaption>
                    </figure>
                </li>
                
                <li >
                    <figure>
                        <img src='site/farmigo.com/images/start/how2d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <p class="big">We pass your orders on to <em>our producers, who harvest and make everything fresh</em> — just for you!</p>
                        </figcaption>
                    </figure>
                </li>
                
                <li >
                    <figure>
                        <img src='site/farmigo.com/images/start/how3d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <p class="big">On delivery day, <em>members get their groceries at your pick-up!</em></p>
                        </figcaption>
                    </figure>
                </li>
                
                <li class="bonus">
                    <figure>
                        <img src='site/farmigo.com/images/start/how4d3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <p class="big">Bonus: <em>Your Community gets 10% back of all profits</em> to put towards whatever project you choose!</p>
                        </figcaption>
                    </figure>
                </li>
                
            </ul>
        </div>
    </section>
    
    
    <section class="benefit-section group">
        <div class="centered">
            <h1>Farmigo is better for everyone!</h1>
            
                <p class="intro">Here are some of the warm and fuzzy perks:</p>
            
            <ul>
                
                <li>
                    <figure>
                        <img src='site/farmigo.com/images/start/benefit-piggy-bankd3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>Funding for your community!</h3>
                            <p class="big">Your <em>school or place of worship earns 10% of all sales</em> &mdash; money you can use on wellness programs, supplies, events, or whatever you need!</p>
                        </figcaption>
                    </figure>
                </li>
                
                <li>
                    <figure>
                        <img src='site/farmigo.com/images/start/benefit-boxd3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>Amazing Food</h3>
                            <p class="big">Fill your fridge, your household, and your neighborhood with <em>the best food your region has to offer.</em></p>
                        </figcaption>
                    </figure>
                </li>
                
                <li>
                    <figure>
                        <img src='site/farmigo.com/images/start/benefit-farmerd3d7.svg?2016-06-24-2230'/>
                        <figcaption>
                            <h3>Support for Local Farmers and Small Businesses</h3>
                            <p class="big">Put <em>more money into the hands of local farmers and producers</em> by buying direct.</p>
                        </figcaption>
                    </figure>
                </li>
                
            </ul>
        </div>
    </section>

    
    <section class="testimonials-section">
        <div class="centered">
            
                <h1>Reasons to love Farmigo</h1>
            
            <ul class="group">
                
                <li>
                    <img src='site/farmigo.com/images/start/nedra-bleiferd3d7.jpg?2016-06-24-2230'/>
                    <blockquote>
                        <h3 class="quotee">Nedra Bleifer</h3>
                        <h4 class="quotee-title">School Parent Nutrition Committee</h4>
                        <h4 class="address">Sea Cliff Elementary - Sea Cliff, NY</h4>
                        <p class="quote">&ldquo;I knew it would be a success. We used [the Farmigo] money to get a water filter for our cafeteria. We will come up with some more great uses this coming year!&rdquo;</p>
                    </blockquote>
                    
                        <footer>Raised over $8,300 in 18 months</footer>
                    
                </li>
                
                <li>
                    <img src='site/farmigo.com/images/start/nancy-feyd3d7.jpg?2016-06-24-2230'/>
                    <blockquote>
                        <h3 class="quotee">Nancy Fey</h3>
                        <h4 class="quotee-title">Wellness Committee Co-Chair</h4>
                        <h4 class="address">PS3 in New York, NY</h4>
                        <p class="quote">&ldquo;Having Farmigo at PS3 has been a fantastic community building experience for our school. In fact, it’s become our 3rd largest fundraiser ever!&rdquo;</p>
                    </blockquote>
                    
                        <footer>Raised over $9,000 in 12 months</footer>
                    
                </li>
                
                <li>
                    <img src='site/farmigo.com/images/start/catherine-wolfersd3d7.jpg?2016-06-24-2230'/>
                    <blockquote>
                        <h3 class="quotee">Catherine Wolfers</h3>
                        <h4 class="quotee-title">PTA Health and Wellness</h4>
                        <h4 class="address">Neil Cummins Elementary, CA</h4>
                        <p class="quote">&ldquo;The farmers get paid more and my school community gets great access to freshly-harvested produce. It’s definitely a win-win for everyone!&rdquo;</p>
                    </blockquote>
                    
                        <footer>Raised over $3,700 in 18 months</footer>
                    
                </li>
                
            </ul>
        </div>
    </section>
    
    

    
        


<section class="preview-section">
    <div class="centered group">
        <h1>Preview our marketplace:</h1>
        <ul>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item1d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Farmers Choice</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item2d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Organic Whole Grain Loaf</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item3d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Carrots</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item4d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Free Running Large Eggs</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item5d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Blueberry Yogurt 3-Pack</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item6d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Cheddar Bites</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item7d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Creamy Peanut Butter</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item8d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Fuji Apples</h3>
                    </figcaption>
                </figure>
            </li>
            
            <li>
                <figure>
                    <img src='site/farmigo.com/images/item9d3d7.jpg?2016-06-24-2230'/>
                    <figcaption>
                        <h3>Chicken Drumstick</h3>
                    </figcaption>
                </figure>
            </li>
            
        </ul>
    </div>
</section>


    

    


<script>
    window.runAfter(function() {
        var gaCommon = Farmigo.common.analytics.Common;

        $('.pr-section a').each(function() {
            var gaCategory = 'Schools' + ' Page',
                storyId = $(this).data('id');

            if (storyId == 'cnn') {
                $(this).videoLink({
                    isDisableTracking: true // We don't want double tracking on this link (the "News link clicked" below is enough also for the video link)
                });
            }

            $(this).on('click', function() {
                gaCommon.trackEvent(gaCategory, gaCommon.Action.NEWS_LINK_CLICKED, storyId);
            });
        });
    });
</script>

<section class="pr-section">
    <div class="centered group">
        <h2>Featured in:</h2>
        <ul>
            
                <li class="group">
                    <a
                        
                            href="http://query.nytimes.com/gst/fullpage.html?res=9B00EFDD123CF93AA2575AC0A9679D8B63" target="_blank"
                        
                        data-id="ny-times"
                    >
                        <img src="site/farmigo.com/images/press/logos/ny-timesd3d7.svg?2016-06-24-2230" alt="ny-times logo"/>
                    </a>
                </li>
            
                <li class="group shorter">
                    <a
                        
                            href="http://www.today.com/food/farm-fridge-trend-now-you-can-order-food-online-directly-t36911" target="_blank"
                        
                        data-id="today"
                    >
                        <img src="site/farmigo.com/images/press/logos/todayd3d7.svg?2016-06-24-2230" alt="today logo"/>
                    </a>
                </li>
            
                <li class="group">
                    <a
                        
                            href="http://online.wsj.com/news/articles/SB10001424052970203718504577179100399019874" target="_blank"
                        
                        data-id="wsj"
                    >
                        <img src="site/farmigo.com/images/press/logos/wsjd3d7.svg?2016-06-24-2230" alt="wsj logo"/>
                    </a>
                </li>
            
                <li class="group">
                    <a
                        
                            type="youtube" videoId="hMOC7z0-rFs"
                        
                        data-id="cnn"
                    >
                        <img src="site/farmigo.com/images/press/logos/cnnd3d7.svg?2016-06-24-2230" alt="cnn logo"/>
                    </a>
                </li>
            
                <li class="group">
                    <a
                        
                            href="http://modernfarmer.com/2013/06/state-of-the-csa/" target="_blank"
                        
                        data-id="modern-farmer"
                    >
                        <img src="site/farmigo.com/images/press/logos/modern-farmerd3d7.svg?2016-06-24-2230" alt="modern-farmer logo"/>
                    </a>
                </li>
            
                <li class="group shorter">
                    <a
                        
                            href="http://www.villagevoice.com/restaurants/farmigo-offers-farm-fresh-food-with-the-click-of-a-button-6523971" target="_blank"
                        
                        data-id="village-voice"
                    >
                        <img src="site/farmigo.com/images/press/logos/village-voiced3d7.svg?2016-06-24-2230" alt="village-voice logo"/>
                    </a>
                </li>
            
                <li class="group">
                    <a
                        
                            href="http://www.sfgate.com/business/article/Farmigo-delivers-fresh-food-faster-5749036.php" target="_blank"
                        
                        data-id="sf-chronicle"
                    >
                        <img src="site/farmigo.com/images/press/logos/sf-chronicled3d7.svg?2016-06-24-2230" alt="sf-chronicle logo"/>
                    </a>
                </li>
            
                <li class="group">
                    <a
                        
                            href="http://techcrunch.com/2015/09/30/farmigo-series-b/" target="_blank"
                        
                        data-id="techcrunch"
                    >
                        <img src="site/farmigo.com/images/press/logos/techcrunchd3d7.svg?2016-06-24-2230" alt="techcrunch logo"/>
                    </a>
                </li>
            
        </ul>
    </div>
</section>


    <section class="bottom-forms-section">
        <div class="centered">
        </div>
    </section>

    
        <section class="faq-section centered">
            <p>Still have questions? See our <a href="http://help.farmigo.com/hc/en-us/categories/200093299-For-Organizers" target="_blank">Frequently Asked Questions</a></p>
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
                            <a class="about" href="about.html">
                                About
                            </a>
                        </li>
                        <li>
                            <a class="jobs" href="about/jobs.html">
                                We're Hiring!
                            </a>
                        </li>
                        <li>
                            <a class="press" href="about/press.html">
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
                            <a class="privacy" href="privacy.html">
                                Privacy
                            </a>
                        </li>
                        <li class="visible-xs">
                            <a class="terms" href="terms.html">
                                Terms
                            </a>
                        </li>
                        <li>
                            <a class="producer-standards" href="producer-standards.html">
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
                            <a class="map" href="map.html">
                                Shop the Market
                            </a>
                        </li>
                        <li>
                            <a class="start" href="start.html">
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
                            <a class="privacy" href="privacy.html">
                                Privacy
                            </a>
                        </li>
                        <li>
                            <a class="terms" href="terms.html">
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
		js.src = "../connect.facebook.net/en_US/all.js";
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

</html>

    
