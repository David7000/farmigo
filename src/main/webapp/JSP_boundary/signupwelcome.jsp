<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>

<html>

<meta http-equiv="content-type" content="text/html;charset=utf-8">
<head>
    <link type="image/x-icon" rel="shortcut icon" href="site/common/images/favicon.png">

    <link href="site/common/css/MyFontsWebfontsKit.css" type="text/css" rel="stylesheet"/>
    <link type="text/css" rel="stylesheet" href="site/common/css/all.css">

    <style type="text/css">

        body {
            font-family: "BrandonText", Helvetica, Arial, sans-serif;
            color: #888;
        }

        a {
            color: #de750a;
        }

        .content-box {
            width: 962px;
            margin: 0 auto;
        }

        .logo {
            display: block;
            margin-top: 14px;
            width: 230px;
            height: 45px;
            background-image: url("site/common/images/logo.svg");
            background-size: 98%;
            background-repeat: no-repeat;
        }

        .upper {
            padding-top: 70px;
            border-bottom: 1px solid #e3e3e3;
            text-align: center;
        }

        img {
            width: 100%;
        }

        .title {
            margin: 40px 0 10px;
            color: #de750a;
            font-size: 100px;
            font-weight: 700;
        }

        .message {
            margin: 0 0 20px;
            font-size: 26px;
            font-weight: 500;
        }

        .lower {
            margin-top: 20px;
        }

        .lower p {
            margin: 0 0 7px 0;
        }

        .lower li+li {
            margin-top: 5px;
        }
    </style>

    <script>
        //Keep using the old GA tracking code
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-8893503-1']);
        _gaq.push(['_setDomainName', '.farmigo.com']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>

    <script>
        _gaq.push([ '_trackEvent', 'Error Page', 'UnknownError', 'The page you were lo' ]);
        var trackAlternativeClick = function(pageTitle) {
            _gaq.push([ '_trackEvent', 'Error Page', pageTitle + ' page link clicked']);
        };
    </script>

</head>
<body>
    <div class="content-box">
        <a class="logo" href="index.jsp"></a>
        <div class="upper">
            <img src="site/common/images/error.gif"/>
            <h1 class="title">Oops.</h1>
            <h2 class="message">
Bienvenue parmi nous !

Une agriculture durable, une rémunération juste des producteurs, une alimentation de qualité? 
En rejoignant le réseau des Ruches aujourd?hui, c?est toutes ces choses auxquelles vous contribuerez demain.

Rejoindre une Ruche
</h2>
        </div>
        
        
        
     <body>
        <h1>
            Validation de l'inscripyion par mail.
            Demande enregister
        </h1>
        
        <c:out value="${session}"/>   
       
       <%= session.getAttribute("nom") %> , <%= session.getAttribute("prenom") %> 
       
       
        <p>
            
            <% SimpleDateFormat dateHeureFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm"); 
        
              out.println(dateHeureFormat);
             %>
        </p>
        
        <p> Date :  <%= dateHeureFormat %></p>
        <p>
             Nous avons bien reçu votre demande d'inscription. 
            Veuillez consulter le mail envoyé. 
            Valider en allant sur l'URL fourni. Merci 
        </p>
        
        
        Infos :  <c:out value="${param.email}"/>
                 <c:out value="${param.nom}"/>
    </body>       
        
        
        
        
        
        
        
        
        
                <div class="lower">
                    <p>Head to one of these links instead:</p>
                    <ul>
                        
                            <li>
                                <a
                                    class="home"
                                    href="index.jsp"
                                    onClick="trackAlternativeClick('Home')">
                                
                                    Home
                                </a>
                            </li>
                        
                            <li>
                                <a
                                    class="about"
                                    href="about.jsp"
                                    onClick="trackAlternativeClick('About')"
                                >
                                    About
                                </a>
                            </li>
                        
                            <li>
                                <a
                                    class="help"
                                    href="http://help.farmigo.com/"
                                    onClick="trackAlternativeClick('Help')">
                                
                                    Help
                                </a>
                            </li>
                        
                            <li>
                                <a
                                    class="start"
                                    href="start.jsp"
                                    onClick="trackAlternativeClick('Start a Community')">
                                
                                    Start a Community
                                </a>
                            </li>
                        
                    </ul>
                </div>
        
    </div>

</body>


</html>