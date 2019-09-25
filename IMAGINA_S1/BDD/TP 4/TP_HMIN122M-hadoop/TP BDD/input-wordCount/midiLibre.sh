    <!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8"/>
    <script>
var dataLayer = [{"tags":["home"],"tagsSuffix":["home-topic"],"insee":[],"ville":[],"dept":[],"deptLabel":[],"bassin":[],"pagetype":"topic","platform":"web","restriction":"","thema":"","topic":"","topics":[],"article":{"id":"","date":"","author":"","source":""},"search":{"query":"","page":""},"xiti":{"site":"78691","n2":"11","chapter1":"home","chapter2":"index","page":"homepage"},"dfp":{"publisherid":"31755961","bloc1":"mm_midilibre","bloc2":"home","bloc3":"","bloc4":"","pagetype":"topic"}}];

var tagManager = {
    cookieName: 'userdl',

    init: function () {
        var user = this.getUserData();
        dataLayer[0].user = user;

        if (user.type === 'subscriber' && dataLayer[0]['restriction'] === 3) {
            dataLayer[0]['restriction'] = 2;
        }
    },

    getUserData: function() {
        var data = {
            id: null,
            md5: null,
            subscriberId: '',
            status: 1,
            type: 'guest'
        };

        var jsonData = this.getCookie(this.cookieName);
        if (typeof(jsonData) !== 'undefined' && jsonData) {
            var userData = JSON.parse(jsonData);
            if (userData) {
                data.id = userData.id;
                data.md5 = userData.md5;
                data.status = userData.status;
                data.type = (userData.isSubscriber) ? 'subscriber' : 'free';
                if (userData.category !== '') {
                    data.type = userData.category;
                }
                else if (userData.contratTitre !== '') {
                    data.type = (userData.contratTitre === '10') ? 'digital' : 'integral';
                }
                if (userData.subscriberId) {
                    data.subscriberId = userData.subscriberId;
                }
            }
        }

        return data;
    },

    getCookie: function (cname) {
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) === ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) === 0) {
                return decodeURIComponent(c.substring(name.length, c.length));
            }
        }
        return '';
    }
};
tagManager.init();
</script>

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
    new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TCHJ8X');</script>
<!-- End Google Tag Manager -->

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-TCHJ8X" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!-- At Internet "noscript" Tag -->
<noscript><img width="1" height="1" alt="" src="https://logs4.xiti.com/hit.xiti?s=78691&s2=11&p=home::index::homepage&di=&" ></noscript>
    <!-- COL -->

<!-- BL Head Meta de type imm -->
<!-- BL in -->
<title>Actualités et infos de Montpellier et sa région - À la une</title>

<meta name="description" content="Toute l’actualité de Montpellier et sa région en direct, photos et vidéos avec Midi Libre. Retrouvez toutes les informations locales : faits divers, politique, sports, économie, loisirs…" itemprop="" property="">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="apple-itunes-app" content="app-id=443410419">
<meta name="google-play-app" content="app-id=com.midilibre.android">
<meta property="fb:pages" content="183518182558">
<meta property="fb:app_id" content="207707432590302">
                        <meta property="og:url" content="https://www.midilibre.fr/">
                                <meta property="og:site_name" content="midilibre.fr">
                                <meta property="og:type" content="website">
                                <meta property="og:title" content="Actualités et infos de Montpellier et sa région - À la une">
                                <meta property="og:description" content="Toute l’actualité de Montpellier et sa région en direct, photos et vidéos avec Midi Libre. Retrouvez toutes les informations locales : faits divers, politique, sports, économie, loisirs…">
                                            <meta property="twitter:card" content="summary_large_image">
                                <meta property="twitter:site" content="https://twitter.com/Midilibre">
                <link rel="canonical" href="https://www.midilibre.fr/">
                <meta http-equiv="refresh" content="300">
        <link rel="alternate" type="application/rss+xml" title="RSS Actualités et infos de Montpellier et sa région - À la une" href="https://www.midilibre.fr/rss.xml" />
    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<link rel="stylesheet" href="/js/lightslider/dist/css/lightslider.min.bd2116e1.css">
<link rel="stylesheet" href="/js/lightgallery/dist/css/lightgallery.min.6a350352.css">
<link rel="stylesheet" href="/js/lightgallery/dist/fonts/lg.717cd836.svg">
<link rel="stylesheet" href="/css/materialize.0e101e46.css">
<link rel="stylesheet" href="/css/template.5e9c3b37.css">
<link rel="stylesheet" href="/css/print.206a8b81.css" media="print">
    <script type="application/ld+json">
        {
           "@context": "http://schema.org",
           "@type": "WebSite",
           "url": "https://www.midilibre.fr",
           "potentialAction": {
             "@type": "SearchAction",
             "target": "https://www.midilibre.fr/recherche?q={search_term}",
             "query-input": "required name=search_term"
           }
        }
    </script>

<!-- /BL -->

</head>
<body itemscope itemtype="http://schema.org/WebPage" class="topic-home">
    <div rel="js-body-wrapper">
        <!-- COL -->

<!-- BL Header Menu de type imm -->
<!-- BL in -->
<header class="main-header" rel="js-header-container">
    <div class="main-header-content" rel="js-main-header-content">
        <nav class="header-top">
    <div class="header-top-container container u-clearfix" rel="js-header-top">
        <a href="https://profil.midilibre.fr/telechargement/#xtatc=INT-102-[col_droite_Une_Edition]"
           data-xiti-action="1,home::header::abonnement::une,A"
           class="header-top-newspaper hide-on-small-only">
            <img src="https://static.milibris.com/thumbnail/title/d64bc564-bc73-4832-a52d-8d58c5c35b2a/front/catalog-cover.png"
                 class="header-top-newspaper-img responsive-img">
            <span class="header-top-btn mod-newspaper"><i
                        class="header-top-btn-icon icon-newspaper"></i>Mon journal</span>
        </a>
        <span class="header-top-menu hide-on-med-and-up" rel="js-side-nav" data-activates="slide-out"
              data-draggable="false">
            <i class="header-top-menu-icon icon-menu"></i>
            <span class="header-top-menu-label">Menu</span>
        </span>
        <a href="/" class="header-top-logo"
           data-xiti-action="1,home::header::transverse::logo,N">
            <img src="/img/logos/logo.png" alt="Logo Midi Libre" class="header-top-logo-img responsive-img">
        </a>
        <a href="https://profil.midilibre.fr/login/?SSO_Context=https%3A%2F%2Fwww.midilibre.fr"
           data-xiti-action="1,home::header::transverse::moncompte,A"
           class="header-top-mobile-account profile-link hide-on-med-and-up"><i
                    class="header-top-mobile-account-icon icon-user"></i></a>
        <div class="mobile-search u-clearfix hide-on-med-and-up" rel="js-mobile-search">
            <i class="mobile-search-loupe icon-loupe" rel="js-open-search"></i>
            <form action="https://www.midilibre.fr/recherche" method="get" class="mobile-search-form" rel="js-header-search-form">
                <input name="q" type="text" placeholder="Rechercher sur le site..." autocomplete="off"
                       class="mobile-search-input">
            </form>
            <i class="mobile-search-close icon-close" rel="js-close-search"></i>
        </div>
        <ul class="header-top-items hide-on-small-only">
            <li class="header-top-item">
                <a href="https://profil.midilibre.fr/login/?SSO_Context=https%3A%2F%2Fwww.midilibre.fr"
                   data-xiti-action="1,home::header::transverse::moncompte,A"
                   class="header-top-btn profile-link"><i
                            class="header-top-btn-icon icon-user"></i><span class="header-top-btn-username truncate">Mon compte</span></a>
            </li>
            <li class="header-top-item">
                <a href="https://abonnement.midilibre.fr/#xtatc=INT-2-[header]"
                   class="header-top-btn mod-subscription"
                   data-subscriber-href="http://passclub.midilibre.fr/"
                   data-subscriber-text="&lt;img src=&quot;/img/icons/passclub.png&quot; alt=&quot;Pass&#039;Club&quot; class=&quot;header-top-btn-passclub&quot;&gt; Mes avantages"
                   data-xiti-action="1,home::header::transverse::sabonner,A"><span
                            class="header-top-btn-icon icon-crown"></span>S'abonner</a>
            </li>
        </ul>
    </div>
</nav>
        <nav class="topics hide-on-small-only">
            <ul class="topics-items container u-clearfix">
                <li class="topics-item">
                    <a class="topics-btn dropdown-button ville"
                       data-xiti-action="1,home::header::menu::ma-ville,N"
                       role="button" rel="js-cities" data-activates="villes" data-constrainWidth="false"
                       data-belowOrigin="true">
                        Ma ville<i class="topics-btn-icon icon-triangle-bottom"></i>
                    </a>
                </li>
                <li class="topics-item">
                    <a class="topics-btn dropdown-button"
                       data-xiti-action="1,home::header::menu::sport,N"
                       role="button" rel="js-sports" data-activates="sport" data-constrainWidth="false"
                       data-belowOrigin="true">
                        Sport<i class="topics-btn-icon icon-triangle-bottom"></i>
                    </a>
                </li>
                <li class="topics-item">
                    <a href="/faits-divers/"
                       class="topics-btn mod-full-width"
                       data-xiti-action="1,home::header::menu::faits-divers,N">
                        Faits divers
                    </a>
                </li>
                <li class="topics-item">
                    <a class="topics-btn dropdown-button"
                       data-xiti-action="1,home::header::menu::actu,N"
                       role="button" rel="js-actu" data-activates="actu"
                       data-constrainWidth="false" data-belowOrigin="true">
                        Actu<i class="topics-btn-icon icon-triangle-bottom"></i>
                    </a>
                </li>
                <li class="topics-item hide-on-med-and-down">
                    <a href="http://www.midilibre-annonces.com/"
                       target="_blank"
                       class="topics-btn mod-full-width"
                       data-xiti-action="1,home::header::menu::annonces,N">
                        Annonces
                    </a>
                </li>
                <li class="topics-item">
                    <a href="https://carnet.midilibre.fr" target="_blank"
                       class="topics-btn mod-full-width"
                       data-xiti-action="1,home::header::menu::carnets,N">
                        Carnets
                    </a>
                </li>
                <li class="topics-item">
                    <a class="topics-btn dropdown-button"
                       data-xiti-action="1,home::header::menu::culture-loisirs,N"
                       role="button" data-activates="guides-ete" data-constrainWidth="false" data-belowOrigin="true">
                        Loisirs<i class="topics-btn-icon icon-triangle-bottom"></i>
                    </a>
                </li>
                <li class="topics-item">
                    <span class="topics-btn mod-btn-more icon-more" data-xiti-action="1,home::header::menu::plus,N"
                          rel="js-side-nav" data-activates="slide-out" data-draggable="false"></span>
                </li>
                <li class="topics-search desktop-search" rel="js-desktop-search">
                    <form action="https://www.midilibre.fr/recherche" method="get" class="desktop-search-form"
                          rel="js-header-search-form">
                        <input name="q" type="text" class="desktop-search-input" placeholder="Recherche"
                               autocomplete="off">
                    </form>
                    <a role="button" class="topics-btn mod-search desktop-search-btn" rel="js-desktop-search-toggle"><i
                                class="desktop-search-btn-icon icon-"></i>Recherche</a>
                </li>
            </ul>
            <div id="villes" class="topics-dropdown dropdown-content row">
                <i class="topics-dropdown-close icon-close" rel="js-close-dropdown"
                   data-xiti-action="1,home::header::fermeture::croix,N"></i>
                <div class="u-same-height-container">
                    <div class="col m8">
                        <div class="col m12">
                            <a href="/communes/" class="mod-topic-home"
                               data-xiti-action="1,home::header::menu-ma-ville::accueil,N">
                                <i class="icon-home"></i>Voir toutes les villes<i class="icon-arrow-right"></i>
                            </a>
                        </div>
                        <div class="row">
                            <div class="col m12">
                                <div class="col m12 topics-dropdown-title">Villes</div>
                                <div class="row">
                                    <div class="col m3">
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/beziers/"
                                               data-xiti-action="1,home::header::menu-ma-ville::beziers,N">Béziers</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/montpellier/"
                                               data-xiti-action="1,home::header::menu-ma-ville::montpellier,N">Montpellier</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/gard/nimes/" data-xiti-action="1,home::header::menu-ma-ville::nimes,N">Nîmes</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/gard/ales/"
                                               data-xiti-action="1,home::header::menu-ma-ville::ales,N">Alès</a>
                                        </div>
                                    </div>
                                    <div class="col m3">
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/sete/"
                                               data-xiti-action="1,home::header::menu-ma-ville::sete,N">Sète</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/lozere/mende/" data-xiti-action="1,home::header::menu-ma-ville::mende,N">Mende</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/gard/bagnols-sur-ceze/" data-xiti-action="1,home::header::menu-ma-ville::bagnols-sur-ceze,N">Bagnols-sur-Cèze</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/aveyron/millau/" data-xiti-action="1,home::header::menu-ma-ville::millau,N">Millau</a>
                                        </div>
                                    </div>
                                    <div class="col m3">
                                        <div class="col m12 u-mb-15">
                                            <a href="/aude/narbonne/" data-xiti-action="1,home::header::menu-ma-ville::narbonne,N">Narbonne</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/lunel/" data-xiti-action="1,home::header::menu-ma-ville::lunel,N">Lunel</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/agde/" data-xiti-action="1,home::header::menu-ma-ville::agde,N">Agde</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/aude/carcassonne/" data-xiti-action="1,home::header::menu-ma-ville::carcassonne,N">Carcassonne</a>
                                        </div>
                                    </div>
                                    <div class="col m3">
                                        <div class="col m12 u-mb-15">
                                            <a href="/herault/lodeve/" data-xiti-action="1,home::header::menu-ma-ville::lodeve,N">Lodève</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/pyrenees-orientales/perpignan/" data-xiti-action="1,home::header::menu-ma-ville::perpignan,N">Perpignan</a>
                                        </div>
                                        <div class="col m12 u-mb-15">
                                            <a href="/aveyron/rodez/" data-xiti-action="1,home::header::menu-ma-ville::rodez,N">Rodez</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col m4">
                        <div class="search-city row">
                            <span class="search-city-or">OU</span>
                            <p class="topics-dropdown-title">Rechercher ma ville</p>
                            <form class="u-relative">
                                <input type="text" rel="autocomplete-cities" placeholder="Recherche..." class="search-city-input">
                                <i class="search-city-icon icon-loupe"></i>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sport" class="topics-dropdown dropdown-content row">
                <i class="topics-dropdown-close icon-close" rel="js-close-dropdown"
                   data-xiti-action="1,home::header::fermeture::croix,N"></i>
                <div class="col m12">
                    <div class="col m12">
                        <a href="/sport/" class="mod-topic-home"
                           data-xiti-action="1,home::header::menu-sport::accueil,N"><i
                                    class="icon-home"></i>Voir tous les sports <i class="icon-arrow-right"></i></a>
                    </div>
                    <div class="row">
                        <div class="col m5">
                            <div class="col m12 topics-dropdown-title">Sports</div>
                            <div class="row">
                                <div class="col m6">
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/rugby-xv/"
                                           data-xiti-action="1,home::header::menu-sport::rugby-xv,N">Rugby XV</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/football/"
                                           data-xiti-action="1,home::header::menu-sport::football,N">Football</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/handball/"
                                           data-xiti-action="1,home::header::menu-sport::handball,N">Handball</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/volley-ball/"
                                           data-xiti-action="1,home::header::menu-sport::volley,N">Volley-ball</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/basket/"
                                           data-xiti-action="1,home::header::menu-sport::basketball,N">Basket-ball</a>
                                    </div>
                                </div>
                                <div class="col m6">
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/rugby-xiii/"
                                           data-xiti-action="1,home::header::menu-sport::rugby-xiii,N">Rugby XIII</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/cyclisme/"
                                           data-xiti-action="1,home::header::menu-sport::cyclisme,N">Cyclisme</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/course-a-pied-trail/"
                                           data-xiti-action="1,home::header::menu-sport::course-a-pied-trail,N">Course à pied - Trail</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/tennis/"
                                           data-xiti-action="1,home::header::menu-sport::tennis,N">Tennis</a>
                                    </div>
                                    <div class="col m12 u-mb-15">
                                        <a href="/sport/auto-moto/"
                                           data-xiti-action="1,home::header::menu-sport::auto-moto,N">Auto-Moto</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col m7">
                            <div class="row">
                                <div class="topics-dropdown-title col m12">Compétitions</div>
                                <div class="col m6">
                                    <div class="u-mb-15">
                                        <a href="/sport/rugby-xv/top-14/"
                                           data-xiti-action="1,home::header::menu-sport::top-14,N">
                                            Top 14
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/rugby/top-14/resultats"
                                               data-xiti-action="1,home::header::menu-sport::top-14-classement,N">
                                                (classement / résultats)
                                            </a>
                                        </span>
                                    </div>
                                    <div class="u-mb-15">
                                        <a href="/sport/rugby-xv/pro-d2/"
                                           data-xiti-action="1,home::header::menu-sport::pro-d2,N">
                                            Pro D2
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/rugby/pro-d2/resultats"
                                               data-xiti-action="1,home::header::menu-sport::pro-d2-classement,N">
                                                (classement / résultats)
                                            </a>
                                        </span>
                                    </div>
                                    <div class="u-mb-15">
                                        <a href="/sport/football/ligue-1/"
                                           data-xiti-action="1,home::header::menu-sport::ligue-1,N">
                                            Ligue 1
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/football/ligue-1/resultats"
                                               data-xiti-action="1,home::header::menu-sport::ligue-1-classement,N">
                                                (classement / résultats)
                                            </a>
                                        </span>
                                    </div>
                                    <div class="u-mb-15">
                                        <a href="/sport/football/ligue-2/"
                                           data-xiti-action="1,home::header::menu-sport::ligue-2,N">
                                            Ligue 2
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/football/ligue-2/resultats"
                                               data-xiti-action="1,home::header::menu-sport::ligue-2-classement,N">
                                                (classement / résultats)
                                            </a>
                                        </span>
                                    </div>
                                </div>
                                <div class="col m6">
                                    <div class="u-mb-15">
                                        <a href="/sport/handball/d1-masculine/"
                                           data-xiti-action="1,home::header::menu-sport::handball-d1m,N">
                                            Handball D1M
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/handball/division-1/resultats"
                                               data-xiti-action="1,home::header::menu-sport::handball-d1m-classement,N">
                                                (résultats)
                                            </a>
                                        </span>
                                    </div>
                                    <div class="u-mb-15">
                                        <a href="/sport/volley-ball/ligue-a/"
                                           data-xiti-action="1,home::header::menu-sport::voley-ligue-a,N">
                                            Volley-ball Ligue A
                                        </a>
                                        <span class="topics-dropdown-idalgo">
                                            <a href="/sports/resultats-sportifs/volley/resultats"
                                               data-xiti-action="1,home::header::menu-sport::voley-ligue-a-classement,N">
                                                (résultats)
                                            </a>
                                        </span>
                                    </div>
                                    <div class="u-mb-15">
                                        <a href="/sports/resultats-sportifs/"
                                           data-xiti-action="1,home::header::menu-sport::tous-les-resultats,N">
                                            Tous les résultats
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="topics-dropdown-clubs">
                    <div class="topics-dropdown-title">Clubs</div>
                    <a href="/sport/football/nimes-olympique/"
                       data-xiti-action="1,home::header::menu-sport::nimes-olympique,N">
                        <img src="/img/logos/sport/clubs/nimes-olympique.jpg"
                             alt="Logo Nîmes Olympique" class="topics-dropdown-clubs-img"><span>Nîmes Olympique</span>
                    </a>
                    <a href="/sport/football/asb/"
                       data-xiti-action="1,home::header::menu-sport::as-beziers,N">
                        <img src="/img/logos/sport/clubs/as-beziers.jpg"
                             alt="Logo AS Béziers" class="topics-dropdown-clubs-img"><span>AS Béziers</span>
                    </a>
                    <a href="/sport/rugby-xv/asbh/"
                       data-xiti-action="1,home::header::menu-sport::asbh,N">
                        <img src="/img/logos/sport/clubs/asbh.jpg"
                             alt="Logo Montpellier HR" class="topics-dropdown-clubs-img"><span>ASBH</span>
                    </a>
                    <a href="/sport/rugby-xv/usa-perpignan/"
                       data-xiti-action="1,home::header::menu-sport::usap,N">
                        <img src="/img/logos/sport/clubs/usap.jpg"
                             alt="Logo USAP" class="topics-dropdown-clubs-img"><span>USAP</span>
                    </a>
                    <a href="/sport/football/mhsc/"
                       data-xiti-action="1,home::header::menu-sport::montpellier-hsc,N">
                        <img src="/img/logos/sport/clubs/montpellier-hsc.jpg"
                             alt="Logo Montpellier HSC" class="topics-dropdown-clubs-img"><span>Montpellier HSC</span>
                    </a>
                    <a href="/sport/rugby-xv/montpellier-hr/"
                       data-xiti-action="1,home::header::menu-sport::montpellier-HR,N">
                        <img src="/img/logos/sport/clubs/mhr.jpg"
                             alt="Logo Montpellier HR" class="topics-dropdown-clubs-img"><span>Montpellier HR</span>
                    </a>
                </div>
            </div>
            <div id="actu" class="topics-dropdown dropdown-content row">
                <i class="topics-dropdown-close icon-close" rel="js-close-dropdown"
                   data-xiti-action="1,home::header::fermeture::croix,N"></i>
                <div class="col m12">
                    <div class="topics-dropdown-title col m9">Thématiques</div>
                    <div class="topics-dropdown-title col m3">Dossiers</div>
                    <div class="col m3">
                        <div class="u-mb-15">
                            <a href="/actu/monde/"
                               data-xiti-action="1,home::header::menu-actu::monde,N">Monde</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/monde/europe/"
                               data-xiti-action="1,home::header::menu-actu::europe,N">Europe</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/politique/"
                               data-xiti-action="1,home::header::menu-actu::politique,N">Politique</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/societe/"
                               data-xiti-action="1,home::header::menu-actu::societe,N">Société</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/justice/"
                               data-xiti-action="1,home::header::menu-actu::bonnes-affaires,N">Justice</a>
                        </div>
                    </div>
                    <div class="col m3">
                        <div class="u-mb-15 truncate">
                            <a href="/actu/circulation-deplacements/"
                               title="Circulation - Déplacements"
                               data-xiti-action="1,home::header::menu-actu::circulation-deplacement,N">Circulation - Déplacements</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/meteo/"
                               data-xiti-action="1,home::header::menu-actu::meteo,N">Météo</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/environnement/"
                               data-xiti-action="1,home::header::menu-actu::environnement,N">Environnement</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/economie/tourisme/mediterranee/"
                               data-xiti-action="1,home::header::menu-actu::mediterranee,N">Méditerranée</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/economie/"
                               data-xiti-action="1,home::header::menu-actu::economie,N">Économie</a>
                        </div>
                    </div>
                    <div class="col m3">
                        <div class="u-mb-15">
                            <a href="/actu/education/"
                               data-xiti-action="1,home::header::menu-actu::education,N">Éducation</a>
                        </div>
                        <div class="u-mb-15 truncate">
                            <a href="/actu/sciences-et-techniques/"
                               title="Sciences et techniques"
                               data-xiti-action="1,home::header::menu-actu::sciences-et-techniques,N">Sciences et techniques</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/sante/"
                               data-xiti-action="1,home::header::menu-actu::sante,N">Santé</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/divertissement/people/"
                               data-xiti-action="1,home::header::menu-actu::people,N">People</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/divertissement/insolite/"
                               data-xiti-action="1,home::header::menu-actu::insolite,N">Insolite</a>
                        </div>
                    </div>
                    <div class="col m3">
                        <div class="u-mb-15">
                            <a href="/actu/rendez-vous-de-la-redaction/video/"
                               data-xiti-action="1,home::header::menu-actu::videos,N">Vidéos</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/diaporamas/"
                               data-xiti-action="1,home::header::menu-actu::diaporamas,N">Diaporamas</a>
                        </div>
                        <div class="u-mb-15 truncate">
                            <a href="/actu/rendez-vous-de-la-redaction/"
                               title="Les rendez-vous de la rédaction"
                               data-xiti-action="1,home::header::menu-actu::rdv-redac,N">Les rendez-vous de la rédaction</a>
                        </div>
                        <div class="u-mb-15">
                            <a href="/actu/edito/"
                               data-xiti-action="1,home::header::menu-actu::edito,N">Edito</a>
                        </div>                        <div class="u-mb-15">
                            <a href="/culture-loisirs/gastronomie-et-terroir/croccitanie/"
                               data-xiti-action="1,home::header::menu-actu::croccitanie,N">Croccitanie</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="guides-ete" class="topics-dropdown dropdown-content row">
    <i class="topics-dropdown-close icon-close" rel="js-close-dropdown"
       data-xiti-action="1,home::header::fermeture::croix,N"></i>
    <div class="u-same-height-container">
        <div class="col m8">
            <div class="col m12">
                <a href="/agenda/" class="mod-topic-home"
                   data-xiti-action="1,home::header::menu-guides-ete::accueil,N"><i
                            class="icon-home"></i>Voir l'agenda de vos sorties<i class="icon-arrow-right"></i></a>
            </div>
            <div class="col m12 topics-dropdown-title">
                Thématiques
            </div>
            <div class="col m4">
                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/" data-xiti-action="1,home::header::menu-guides-ete::cultures-et-loisirs,N">Culture et loisirs</a>
                </div>
                <div class="u-mb-15 truncate">
                    <a href="/balades-et-randonnees/" data-xiti-action="1,home::header::menu-guides-ete::balades-et-randonnees,N" title="Balades et Randonnées">Balades et Randonnées</a>
                </div>
                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/gastronomie-et-terroir/" data-xiti-action="1,home::header::menu-guides-ete::gastronomie,N">Gastronomie</a>
                </div>
                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/patrimoine/" data-xiti-action="1,home::header::menu-guides-ete::patrimoine,N">Patrimoine</a>
                </div>
            </div>
            <div class="col m4">
                                    <div class="u-mb-15">
                        <a href="/culture-et-loisirs/gastronomie-et-terroir/marches/" data-xiti-action="1,home::header::menu-guides-ete::marches,N">Marchés</a>
                    </div>
                                                    <div class="u-mb-15">
                        <a href="/culture-et-loisirs/hebergements/" data-xiti-action="1,home::header::menu-guides-ete::hebergement,N">Hébergement</a>
                    </div>
                                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/grands-sites/" data-xiti-action="1,home::header::menu-guides-ete::grands-sites,N">Grands sites</a>
                </div>
                                    <div class="u-mb-15">
                        <a href="/culture-et-loisirs/patrimoine/chateaux/" data-xiti-action="1,home::header::menu-guides-ete::chateaux,N">Châteaux</a>
                    </div>
                            </div>
            <div class="col m4">
                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/fetes-et-festivals/" data-xiti-action="1,home::header::menu-guides-ete::fetes-et-festivals,N">Fêtes et festivals</a>
                </div>
                <div class="u-mb-15">
                    <a href="/culture-et-loisirs/expositions/" data-xiti-action="1,home::header::menu-guides-ete::expos,N">Expos</a>
                </div>
                                    <div class="u-mb-15">
                        <a href="/culture-et-loisirs/traditions/" data-xiti-action="1,home::header::menu-guides-ete::traditions,N">Traditions</a>
                    </div>
                                                                            </div>
        </div>
        <div class="col m4">
            <div class="search-city mod-guides-ete row">
                <span class="search-city-or">OU</span>
                <p class="topics-dropdown-title truncate" title="Recherche par mots-clés">Recherche par mots-clés</p>
                <form action="/agenda/" class="u-relative">
                    <div>
                        <input name="q" type="text" placeholder="Recherche..." class="search-city-input">
                    </div>
                    <div>
                        <button type="submit" class="btn btn-search"><i class="icon-loupe"></i>Chercher</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>        </nav>
        <nav class="cities hide-on-small-only">
            <ul class="container nav-wrapper u-clearfix">
                                    <li class="cities-item">
                        <a href="/herault/agde/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::agde,N">Agde</a>
                    </li>
                    <li class="cities-item">
                        <a href="/gard/ales/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::ales,N">Alès</a>
                    </li>
                    <li class="cities-item">
                        <a href="/gard/bagnols-sur-ceze/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::bagnols,N">Bagnols-sur-Cèze</a>
                    </li>
                    <li class="cities-item">
                        <a href="/herault/beziers/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::beziers,N">Béziers</a>
                    </li>
                    <li class="cities-item">
                        <a href="/aude/carcassonne/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::carcassonne,N">Carcassonne</a>
                    </li>
                    <li class="cities-item hide-on-med-and-down">
                        <a href="/herault/lodeve/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::lodeve,N">Lodève</a>
                    </li>
                    <li class="cities-item">
                        <a href="/herault/lunel/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::lunel,N">Lunel</a>
                    </li>
                    <li class="cities-item">
                        <a href="/lozere/mende/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::mende,N">Mende</a>
                    </li>
                    <li class="cities-item">
                        <a href="/aveyron/millau/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::millau,N">Millau</a>
                    </li>
                    <li class="cities-item">
                        <a href="/herault/montpellier/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::montpellier,N">Montpellier</a>
                    </li>
                    <li class="cities-item hide-on-med-and-down">
                        <a href="/aude/narbonne/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::narbonne,N">Narbonne</a>
                    </li>
                    <li class="cities-item hide-on-med-and-down">
                        <a href="/gard/nimes/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::nimes,N">Nîmes</a>
                    </li>
                    <li class="cities-item hide-on-large-and-down">
                        <a href="/pyrenees-orientales/perpignan/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::perpignan,N">Perpignan</a>
                    </li>
                    <li class="cities-item hide-on-large-and-down">
                        <a href="/aveyron/rodez/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::rodez,N">Rodez</a>
                    </li>
                    <li class="cities-item hide-on-large-and-down">
                        <a href="/herault/sete/" class="cities-item-link"
                           data-xiti-action="1,home::header::menu-ma-ville::sete,N">Sète</a>
                    </li>
                    <li class="cities-item">
                        <a class="cities-item-link icon-more" role="button" rel="js-open-dropdown" data-trigger="js-cities"
                           data-xiti-action="1,home::header::sousmenu::plus,N"></a>
                    </li>
                            </ul>
        </nav>
        <div id="slide-out" class="side-nav" data-topics="https://www.midilibre.fr/topics/menu">
    <div class="menu">
        <i class="icon-menu"></i>
        Menu
        <i class="icon-close" rel="js-close-menu"></i>
    </div>
    <a href="https://profil.midilibre.fr/telechargement/#xtatc=INT-2-[header-journal]"
       data-xiti-action="1,home::header::transverse::journal,A"
       class="newspaper" target="_blank">Journal<i class="nav-icon icon-newspaper"></i></a>
    <a class="subscription" href="https://abonnement.midilibre.fr/" data-subscriber-href="https://abonnement.midilibre.fr/site/midilibrev2/default/fr/compte/monAbonnement.html" data-subscriber-text="Mon abonnement">Abonnez-vous<i class="nav-icon icon-crown"></i></a>
    <a class="accueil" href="/">Accueil<i class="nav-icon icon-home"></i></a>
    <ul class="collapsible hide-on-med-and-up" data-collapsible="expandable">
    <li>
        <div class="collapsible-header di-red">
            <a href="/communes/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-ma-ville::accueil,N">Ma ville</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li>
                    <a href="/herault/beziers/"
                       data-xiti-action="1,home::header::menu-ma-ville::beziers,N">Béziers</a>
                </li>
                <li>
                    <a href="/herault/montpellier/"
                       data-xiti-action="1,home::header::menu-ma-ville::montpellier,N">Montpellier</a>
                </li>
                <li>
                    <a href="/gard/nimes/"
                       data-xiti-action="1,home::header::menu-ma-ville::nimes,N">Nîmes</a>
                </li>
                <li>
                    <a href="/gard/ales/"
                       data-xiti-action="1,home::header::menu-ma-ville::ales,N">Alès</a>
                </li>
                <li>
                    <a href="/herault/sete/"
                       data-xiti-action="1,home::header::menu-ma-ville::sete,N">Sète</a>
                </li>
                <li>
                    <a href="/lozere/mende/"
                       data-xiti-action="1,home::header::menu-ma-ville::mende,N">Mende</a>
                </li>
                <li>
                    <a href="/gard/bagnols-sur-ceze/"
                       data-xiti-action="1,home::header::menu-ma-ville::bagnols-sur-ceze,N">Bagnols-sur-Cèze</a>
                </li>
                <li>
                    <a href="/aveyron/millau/"
                       data-xiti-action="1,home::header::menu-ma-ville::millau,N">Millau</a>
                </li>
                <li>
                    <a href="/aude/narbonne/"
                       data-xiti-action="1,home::header::menu-ma-ville::narbonne,N">Narbonne</a>
                </li>
                <li>
                    <a href="/herault/lunel/"
                       data-xiti-action="1,home::header::menu-ma-ville::lunel,N">Lunel</a>
                </li>
                <li>
                    <a href="/herault/agde/"
                       data-xiti-action="1,home::header::menu-ma-ville::agde,N">Agde</a>
                </li>
                <li>
                    <a href="/aude/carcassonne/"
                       data-xiti-action="1,home::header::menu-ma-ville::carcassonne,N">Carcassonne</a>
                </li>
                <li>
                    <a href="/herault/lodeve/"
                       data-xiti-action="1,home::header::menu-ma-ville::lodeve,N">Lodève</a>
                </li>
                <li>
                    <a href="/pyrenees-orientales/perpignan/"
                       data-xiti-action="1,home::header::menu-ma-ville::perpignan,N">Perpignan</a>
                </li>
                <li>
                    <a href="/aveyron/rodez/"
                       data-xiti-action="1,home::header::menu-ma-ville::rodez,N">Rodez</a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/sport/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-sport::accueil,N">Sport</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li>
                    <a href="/sport/rugby-xv/"
                       data-xiti-action="1,home::header::menu-sport::rugby-xv,N">Rugby
                        XV</a>
                </li>
                <li>
                    <a href="/sport/football/"
                       data-xiti-action="1,home::header::menu-sport::football,N">Football</a>
                </li>
                <li>
                    <a href="/sport/handball/"
                       data-xiti-action="1,home::header::menu-sport::handball,N">Handball</a>
                </li>
                <li>
                    <a href="/sport/volley-ball/"
                       data-xiti-action="1,home::header::menu-sport::volley-ball,N">Volley-ball</a>
                </li>
                <li>
                    <a href="/sport/basket/"
                       data-xiti-action="1,home::header::menu-sport::basketball,N">Basket-ball</a>
                </li>
                <li>
                    <a href="/sport/rugby-xiii/"
                       data-xiti-action="1,home::header::menu-sport::rugby-xiii,N">Rugby
                        XIII</a>
                </li>
                <li>
                    <a href="/sport/cyclisme/"
                       data-xiti-action="1,home::header::menu-sport::cyclisme,N">Cyclisme</a>
                </li>
                <li>
                    <a href="/sport/course-a-pied-trail/"
                       data-xiti-action="1,home::header::menu-sport::course-a-pied-trail,N">Course
                        à pied - Trail</a>
                </li>
                <li>
                    <a href="/sport/tennis/"
                       data-xiti-action="1,home::header::menu-sport::tennis,N">Tennis</a>
                </li>
                <li>
                    <a href="/sport/auto-moto/"
                       data-xiti-action="1,home::header::menu-sport::auto-moto,N">Auto-Moto</a>
                </li>
                <li>
                    <a href="/sport/rugby-xv/top-14/"
                       data-xiti-action="1,home::header::menu-sport::top-14,N">
                        Top 14
                    </a>
                </li>
                <li>
                    <a href="/sport/rugby-15/pro-d2/"
                       data-xiti-action="1,home::header::menu-sport::pro-d2,N">
                        Pro D2
                    </a>
                </li>
                <li>
                    <a href="/sport/football/ligue-1/"
                       data-xiti-action="1,home::header::menu-sport::ligue-1,N">
                        Ligue 1
                    </a>
                </li>
                <li>
                    <a href="/sport/football/ligue-2/"
                       data-xiti-action="1,home::header::menu-sport::ligue-2,N">
                        Ligue 2
                    </a>
                </li>
                <li>
                    <a href="/sport/handball/d1-masculine/"
                       data-xiti-action="1,home::header::menu-sport::handball-d1m,N">
                        Handball D1M
                    </a>
                </li>
                <li>
                    <a href="/sport/volley-ball/ligue-a/"
                       data-xiti-action="1,home::header::menu-sport::volley-ball,N">
                        Volley-ball Ligue A
                    </a>
                </li>
                <li>
                    <a href="/sports/resultats-sportifs/"
                       data-xiti-action="1,home::header::menu-sport::tous-les-resultats,N">
                        Tous les résultats
                    </a>
                </li>
                <li>
                    <a href="/sport/football/nimes-olympique/"
                       data-xiti-action="1,home::header::menu-sport::nimes-olympique,N">
                        Nîmes Olympique
                    </a>
                </li>
                <li>
                    <a href="/sport/football/asb/"
                       data-xiti-action="1,home::header::menu-sport::as-beziers,N">
                        AS Béziers
                    </a>
                </li>
                <li>
                    <a href="/sport/rugby-xv/asbh/"
                       data-xiti-action="1,home::header::menu-sport::asbh,N">
                        ASBH
                    </a>
                </li>
                <li>
                    <a href="/sport/rugby-xv/usa-perpignan/"
                       data-xiti-action="1,home::header::menu-sport::usap,N">
                        USAP
                    </a>
                </li>
                <li>
                    <a href="/sport/football/mhsc/"
                       data-xiti-action="1,home::header::menu-sport::montpellier-hsc,N">
                        Montpellier HSC
                    </a>
                </li>
                <li>
                    <a href="/sport/rugby-xv/montpellier-hr/"
                       data-xiti-action="1,home::header::menu-sport::montpellier-hr,N">
                        Montpellier HR
                    </a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/faits-divers/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu::faits-divers,N">Faits divers</a>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/actu/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-actu::accueil,N">Actu</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li><a href="/actu/monde/"
                       data-xiti-action="1,home::header::menu-actu::monde,N">Monde</a>
                </li>
                <li><a href="/actu/monde/europe/"
                       data-xiti-action="1,home::header::menu-actu::europe,N">Europe</a>
                </li>
                <li><a href="/actu/politique/"
                       data-xiti-action="1,home::header::menu-actu::politique,N">Politique</a>
                </li>
                <li><a href="/actu/societe/"
                       data-xiti-action="1,home::header::menu-actu::societe,N">Société</a>
                </li>
                <li><a href="/actu/justice/"
                       data-xiti-action="1,home::header::menu-actu::justice,N">Justice</a>
                </li>
                <li><a href="/actu/education/"
                       data-xiti-action="1,home::header::menu-actu::education,N">Éducation</a>
                </li>
                <li><a href="/actu/circulation-deplacements/"
                       data-xiti-action="1,home::header::menu-actu::circulation-deplacement,N">Circulation
                        - Déplacements</a></li>
                <li><a href="/actu/meteo/"
                       data-xiti-action="1,home::header::menu-actu::meteo,N">Météo</a>
                </li>
                <li><a href="/actu/environnement/"
                       data-xiti-action="1,home::header::menu-actu::environnement,N">Environnement</a>
                </li>
                <li><a href="/economie/tourisme/mediterranee/"
                       data-xiti-action="1,home::header::menu-actu::mediterranee,N">Méditerannée</a>
                </li>
                <li><a href="/economie/"
                       data-xiti-action="1,home::header::menu-actu::economie,N">Économie</a>
                </li>
                <li><a href="/economie/immobilier/"
                       data-xiti-action="1,home::header::menu-actu::immobilier,N">Immobilier</a>
                </li>
                <li><a href="/actu/sciences-et-techniques/"
                       data-xiti-action="1,home::header::menu-actu::sciences-et-techniques,N">Sciences
                        et techniques</a>
                </li>
                <li><a href="/sante/"
                       data-xiti-action="1,home::header::menu-actu::sante,N">Santé</a>
                </li>
                <li><a href="/divertissement/people/"
                       data-xiti-action="1,home::header::menu-actu::people,N">People</a>
                </li>
                <li><a href="/divertissement/insolite/"
                       data-xiti-action="1,home::header::menu-actu::insolite,N">Insolite</a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/divertissement/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-divertissement::accueil,N">Divertissement</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li>
                    <a href="/divertissement/actu-cine/"
                       data-xiti-action="1,home::header::menu-divertissement::actu-cine,N">Actu ciné</a>
                </li>
                <li>
                    <a href="/divertissement/musique/"
                       data-xiti-action="1,home::header::menu-divertissement::musique,N">Musique</a>
                </li>
                <li>
                    <a href="/divertissement/quiz/"
                       data-xiti-action="1,home::header::menu-divertissement::quiz,N">Quiz</a>
                </li>
                <li>
                    <a href="/divertissement/tele-medias/"
                       data-xiti-action="1,home::header::menu-divertissement::tele-medias,N">Télé-médias</a>
                </li>
                <li>
                    <a href="/divertissement/insolite/"
                       data-xiti-action="1,home::header::menu-divertissement::insolite,N">Insolite</a>
                </li>
                <li>
                    <a href="/divertissement/people/"
                       data-xiti-action="1,home::header::menu-divertissement::people,N">People</a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/culture-et-loisirs/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-culture-et-loisirs::accueil,N">Culture et loisirs</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li>
                    <a href="/culture-et-loisirs/animations/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::animations,N">Animations</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/bande-dessinee/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::bande-dessinee,N">Bande dessinée</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/concerts-spectacles/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::concerts-spectacles,N">Concerts - Spectacles</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/detente-et-bien-etre/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::detente-et-bien-etre,N">Détente et bien-être</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/expositions/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::expositions,N">Expositions</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/fetes-et-festivals/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::fetes-et-festivals,N">Fêtes et festivals</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/foires-et-salons/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::foires-et-salons,N">Foires et salons</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/grands-sites/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::grands-sites,N">Grands sites - Occitanie</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/patrimoine/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::patrimoine,N">Patrimoine</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/jeune-public/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::jeune-public,N">Jeune public</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/montagne/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::montagne,N">Montagne</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/parcs-animaliers/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::parcs-animaliers,N">Parcs animaliers</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/restaurants/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::restaurants,N">Restaurants</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/sports-et-nature/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::sports-et-nature,N">Sports et nature</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/tourisme-industriel/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::tourisme-industriel,N">Tourisme industriel</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/sports-et-nature/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::sports-et-nature,N">Sports et nature</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/cinema/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::cinema,N">Cinéma</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/traditions/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::traditions,N">Traditions</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/danse/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::danse,N">Danse</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/ferias/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::ferias,N">Ferias</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/litterature/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::litterature,N">Litterature</a>
                </li>
                <li>
                    <a href="/culture-et-loisirs/theatre/"
                       data-xiti-action="1,home::header::menu-culture-et-loisirs::theatre,N">Théâtre</a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/sante/" rel="js-no-collapse"
               data-xiti-action="1,home::header::menu-sante::accueil,N">Santé</a><i class="icon-triangle-bottom"></i>
        </div>
        <div class="collapsible-body">
            <ul>
                <li>
                    <a href="/sante/beaute/"
                       data-xiti-action="1,home::header::menu-sante::beaute,N">Beauté</a>
                </li>
                <li>
                    <a href="/sante/bien-etre/"
                       data-xiti-action="1,home::header::menu-sante::bien-etre,N">Bien-être</a>
                </li>
                <li>
                    <a href="/sante/famille/"
                       data-xiti-action="1,home::header::menu-sante::famille,N">Famille</a>
                </li>
                <li>
                    <a href="/sante/nutrition/"
                       data-xiti-action="1,home::header::menu-sante::nutrition,N">Nutrition</a>
                </li>
                <li>
                    <a href="/sante/psycho-sexo/"
                       data-xiti-action="1,home::header::menu-sante::psycho-sexo,N">Psycho-Sexo</a>
                </li>
            </ul>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="/infolight/"
               data-xiti-action="1,home::header::menu::infolight,N">Infolight</a>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="http://www.midilibre-annonces.com/" target="_blank"
               data-xiti-action="1,home::header::menu::annonces,N">Annonces</a>
        </div>
    </li>
    <li>
        <div class="collapsible-header di-red">
            <a href="https://carnet.midilibre.fr/" target="_blank"
               data-xiti-action="1,home::header::menu::carnets,N">Carnets</a>
        </div>
    </li>
    </ul>    <div rel="js-menu-container" class="hide-on-small-only"></div>
</div>    </div>
</header>
<!-- /BL -->
<!-- BL Bloc DFP Bannière Haute de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [banniere_haute] -->
<div >
    <div rel="js-pushpin-banniere_haute">
        <div id="pub_dfp_banniere_haute"
             class="pub mod-banniere_haute center-align "
             data-dfp-mobile="">
                                                        </div>
    </div>
</div><!-- /BL -->

<div class="container u-clearfix main-content">
                    <div class="left-col">
                                <h1 class="bottom-title">Actualités et infos de Montpellier et sa région - À la une</h1>
                                                                <!-- COL -->

<!-- BL Content Topic 1 article Offset 0 de type imm -->
<!-- BL in -->
    
        
                                <section class="u-mb-15">
                    
            <article class="article mod-article-large">
        <div class="u-relative">
            <figure class="hover-effect mod-dark-bg ">
                                                <a href="/2018/11/16/tgv-au-depart-de-paris-avant-darriver-a-montpellier-vous-ferez-un-detour-par-sete,4864243.php"
                   data-xiti-action="1,home::colgauche::article1::article-large-image,N">
                                                                                                                                                                                <img alt="TGV au départ de Paris : avant d'arriver à Montpellier, vous ferez un détour par Sète"
                                src="https://images.midilibre.fr/api/v1/images/view/5bee7c5d8fe56f19d158f982/large/image.jpg"
                                
                             srcset="https://images.midilibre.fr/api/v1/images/view/5bee7c5d8fe56f19d158f982/large/image.jpg 885w,https://images.midilibre.fr/api/v1/images/view/5bee7c5d8fe56f19d158f982/medium/image.jpg 435w"
                             sizes="(min-width: 1201px) 885px, (min-width: 769px) calc(100vw - 315px), 100vw"
                             class="responsive-img">
                                    </a>
            </figure>
            <div class="article-content hover-target">
                <header>
                    <h2 class="article-title">
                        <a href="/2018/11/16/tgv-au-depart-de-paris-avant-darriver-a-montpellier-vous-ferez-un-detour-par-sete,4864243.php"
                           data-xiti-action="1,home::colgauche::article1::article-large-titre,N">
                            TGV au départ de Paris : avant d'arriver à Montpellier, vous ferez un détour par Sète
                        </a>
                    </h2>
                </header>
                <p class="article-chapo hide-on-med-and-down">
                    Jusqu’à février 2019, les TGV tardifs subiront ce léger détournement technique en raison du chantier nocturne (de 21 h à 6 h) de rénovation des voies entre Nîmes et Montpellier.
                </p>
            </div>
        </div>
            </article>
    
                        

    </section>

<!-- /BL -->
<!-- BL Content Topic 2 articles double Offset 1 de type imm -->
<!-- BL in -->
    <section class="row u-same-height-container">
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  ">
                                                                                        <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                                                    <a href="/2018/11/16/bebe-du-coffre-huit-ans-de-prison-requis-contre-la-mere-de-serena,4864522.php"
                           data-xiti-action="1,home::colgauche::article2::video-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5beed01b8fe56f68e1781913/large/image.jpg"
                                     alt="FRANCE-TRIAL-CHILDREN-SOCIAL-ASSIZE"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/bebe-du-coffre-huit-ans-de-prison-requis-contre-la-mere-de-serena,4864522.php"
                               data-xiti-action="1,home::colgauche::article2::video-titre,N">
                                Bébé du "coffre" : huit ans de prison requis contre la mère de Séréna
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Justice.</span>&nbsp;                            Huit ans de prison et la déchéance de l'autorité parentale ont été requis vendredi 16 novembre...
                        </p>
                        <div class="article-footer">
                                                            
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864522-5beed11b21c77" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864522-5beed11b21c77" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/bebe-du-coffre-huit-ans-de-prison-requis-contre-la-mere-de-serena,4864522.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/bebe-du-coffre-huit-ans-de-prison-requis-contre-la-mere-de-serena,4864522.php" data-text="Bébé du "coffre" : huit ans de prison requis contre la mère de Séréna"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                        
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  ">
                                                                                        <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                                                    <a href="/2018/11/16/gilets-jaunes-lhumoriste-arlesien-anthony-joubert-leur-a-consacre-une-chanson,4864544.php"
                           data-xiti-action="1,home::colgauche::article3::video-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5beecaca3e4546490370c582/large/image.jpg"
                                     alt="&quot;Gilets jaunes&quot; : l&#039;humoriste arlésien Anthony Joubert leur a consacré une chanson"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/gilets-jaunes-lhumoriste-arlesien-anthony-joubert-leur-a-consacre-une-chanson,4864544.php"
                               data-xiti-action="1,home::colgauche::article3::video-titre,N">
                                "Gilets jaunes" : l'humoriste arlésien Anthony Joubert leur a consacré une chanson
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Société.</span>&nbsp;                            "RDV le 17" est le titre de la chanson de l'humoriste arlésien. Elle fait le buzz sur le net. 
                        </p>
                        <div class="article-footer">
                                                            
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864544-5beed11b21d44" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864544-5beed11b21d44" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/gilets-jaunes-lhumoriste-arlesien-anthony-joubert-leur-a-consacre-une-chanson,4864544.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/gilets-jaunes-lhumoriste-arlesien-anthony-joubert-leur-a-consacre-une-chanson,4864544.php" data-text=""Gilets jaunes" : l'humoriste arlésien Anthony Joubert leur a consacré une chanson"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                                        <div class="col s12">
                    <!-- Pub DFP Position [mobile_droite_haute] -->
<div >
    <div rel="js-pushpin-mobile_droite_haute">
        <div id="pub_dfp_mobile_droite_haute"
             class="pub mod-mobile_droite_haute center-align hide-on-med-and-up"
             data-dfp-mobile="">
                                                        </div>
    </div>
</div>                </div>
            
            </section>

<!-- /BL -->
<!-- BL Content Topic 2 articles double Offset 3 de type imm -->
<!-- BL in -->
    <section class="row u-same-height-container">
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  ">
                                                                                                                            <a href="/2018/11/16/une-adolescente-qui-prenait-un-bain-meurt-electrocute-par-son-telephone,4864346.php"
                           data-xiti-action="1,home::colgauche::article4::article-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5bee9afe8fe56f42bf037edb/large/image.jpg"
                                     alt="Une adolescente de 17 ans est morte des suites d&#039;une électrocution"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/une-adolescente-qui-prenait-un-bain-meurt-electrocute-par-son-telephone,4864346.php"
                               data-xiti-action="1,home::colgauche::article4::article-titre,N">
                                Une adolescente qui prenait un bain meurt électrocutée par son téléphone
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Faits divers.</span>&nbsp;                            Le drame s'est produit dans la commune d'Outreau, dans les Hauts-de-France. La jeune fille...
                        </p>
                        <div class="article-footer">
                                                            
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864346-5beed11b22115" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864346-5beed11b22115" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/une-adolescente-qui-prenait-un-bain-meurt-electrocute-par-son-telephone,4864346.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/une-adolescente-qui-prenait-un-bain-meurt-electrocute-par-son-telephone,4864346.php" data-text="Une adolescente qui prenait un bain meurt électrocutée par son téléphone"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                        
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  ">
                                                                                                                            <a href="/2018/11/16/larnaque-aux-telephones-free-fait-des-milliers-de-victimes-une-nimoise-temoigne,4863631.php"
                           data-xiti-action="1,home::colgauche::article5::article-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5bee62e38fe56f7c1f3e1ba4/large/image.jpg"
                                     alt="En France, ils sont des milliers à avoir eu la même mauvaise surprise que Gaëlle Astier"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/larnaque-aux-telephones-free-fait-des-milliers-de-victimes-une-nimoise-temoigne,4863631.php"
                               data-xiti-action="1,home::colgauche::article5::article-titre,N">
                                L'arnaque aux téléphones Free fait des milliers de victimes : une Nîmoise témoigne
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Société.</span>&nbsp;                            Depuis Nîmes, Gaëlle se bat pour être reconnue comme victime. Mais, comme de nombreux français,...
                        </p>
                        <div class="article-footer">
                                                            
                                                <a href="/2018/11/16/larnaque-aux-telephones-free-fait-des-milliers-de-victimes-une-nimoise-temoigne,4863631.php#commentaires" class="article-nb-comment is-warm "
           data-xiti-action="1,home::colgauche::home::article5::commentaire-is-warm,N">
            <i class="icon-comment"></i> 33
                            <span class="hide-on-med-and-down">commentaires</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863631-5beed11b221cd" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article5::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863631-5beed11b221cd" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/larnaque-aux-telephones-free-fait-des-milliers-de-victimes-une-nimoise-temoigne,4863631.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/larnaque-aux-telephones-free-fait-des-milliers-de-victimes-une-nimoise-temoigne,4863631.php" data-text="L'arnaque aux téléphones Free fait des milliers de victimes : une Nîmoise témoigne"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                                        <div class="col s12">
                    <!-- Pub DFP Position [publi_haut] -->
<div >
    <div rel="js-pushpin-publi_haut">
        <div id="pub_dfp_publi_haut"
             class="pub mod-publi_haut center-align "
             data-dfp-mobile="">
                                                        </div>
    </div>
</div>                </div>
            
            </section>

<!-- /BL -->
<!-- BL Content Topic 2 articles double Offset 5 de type imm -->
<!-- BL in -->
    <section class="row u-same-height-container">
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  ">
                                                                                                                            <a href="/2018/11/16/conseil-regional-une-minute-de-silence-en-hommage-aux-victimes-des-inondations-de-laude,4864375.php"
                           data-xiti-action="1,home::colgauche::article6::article-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5beeb8848fe56f43194e7da7/large/image.jpg"
                                     alt="L’assemblée plénière du conseil régional d’Occitanie s’est ouverte ce vendredi"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/conseil-regional-une-minute-de-silence-en-hommage-aux-victimes-des-inondations-de-laude,4864375.php"
                               data-xiti-action="1,home::colgauche::article6::article-titre,N">
                                Conseil régional : les élus Rassemblement National enfilent des gilets jaunes
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Politique.</span>&nbsp;                            Les conseillers régionaux du groupe Rassemblement national ont enfilé un gilet jaune ce vendredi...
                        </p>
                        <div class="article-footer">
                                                            
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864375-5beed11b222a4" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article6::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864375-5beed11b222a4" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/conseil-regional-une-minute-de-silence-en-hommage-aux-victimes-des-inondations-de-laude,4864375.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/conseil-regional-une-minute-de-silence-en-hommage-aux-victimes-des-inondations-de-laude,4864375.php" data-text="Conseil régional : les élus Rassemblement National enfilent des gilets jaunes"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                        
                                            <div class="col l6 m12 u-mb-15">
                <article class="article mod-article-1-2 ">
                    <figure class="hover-effect  article-premium">
                            <span class="article-premium-label"><span class="article-premium-text">Abonnés</span><i class="article-premium-icon icon-crown"></i></span>
                                                                <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                                                    <a href="/2018/11/16/pedophilie-dans-leglise-la-resistance-vient-des-eveques-declare-laveyronnais-olivier-savignac,4864312.php"
                           data-xiti-action="1,home::colgauche::article7::videopayant-image,N">
                                                            <img src="/img/lazy_large.jpg"
                                     data-src="https://images.midilibre.fr/api/v1/images/view/5bee8d6b3e4546571971dc55/large/image.jpg"
                                     alt="&quot;La résistance vient des évêques&quot;"
                                     class="responsive-img">
                                                    </a>
                                            </figure>
                    <div class="article-content hover-target">
                        <h2 class="article-title u-medium-title">
                            <a href="/2018/11/16/pedophilie-dans-leglise-la-resistance-vient-des-eveques-declare-laveyronnais-olivier-savignac,4864312.php"
                               data-xiti-action="1,home::colgauche::article7::videopayant-titre,N">
                                Pédophilie dans l'Église : "La résistance vient des évêques" déclare l'Aveyronnais Olivier Savignac
                            </a>
                        </h2>
                        <p class="article-chapo">
                            <span class="article-topic-principal">Justice.</span>&nbsp;                            Agressé sexuellement par un prêtre à l’âge de 13 ans, le Ruthénois Olivier Savignac porte la...
                        </p>
                        <div class="article-footer">
                                                            
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864312-5beed11b2235a" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article7::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864312-5beed11b2235a" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/pedophilie-dans-leglise-la-resistance-vient-des-eveques-declare-laveyronnais-olivier-savignac,4864312.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/pedophilie-dans-leglise-la-resistance-vient-des-eveques-declare-laveyronnais-olivier-savignac,4864312.php" data-text="Pédophilie dans l'Église : "La résistance vient des évêques" déclare l'Aveyronnais Olivier Savignac"></span>
            </li>
        </ul>
    </div>



                                                    </div>
                    </div>
                </article>
            </div>

                                        <div class="col s12">
                    <!-- Pub DFP Position [publi_bas] -->
<div >
    <div rel="js-pushpin-publi_bas">
        <div id="pub_dfp_publi_bas"
             class="pub mod-publi_bas center-align "
             data-dfp-mobile="">
                                                        </div>
    </div>
</div>                </div>
            
            </section>

<!-- /BL -->
<!-- BL Content Topic 9 articles Offset 7 de type imm -->
<!-- BL in -->
    
        
                                <section class="u-mb-15">
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                                <a href="/2018/11/16/montpellier-le-voleur-des-sous-terrains-pris-au-piege-par-un-habitant,4864540.php"
                   data-xiti-action="1,home::colgauche::article8::article-image,N">
                                                                                                                                    <img alt="Montpellier : le voleur des souterrains pris au piège par un habitant"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5beecc253e45461ae023617c/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5beecc253e45461ae023617c/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5beecc253e45461ae023617c/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5beecc253e45461ae023617c/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5beecc253e45461ae023617c/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/montpellier-le-voleur-des-sous-terrains-pris-au-piege-par-un-habitant,4864540.php"
                   data-xiti-action="1,home::colgauche::article8::article-titre,N">
                    Montpellier : le voleur des souterrains pris au piège par un habitant
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Faits divers.</span>&nbsp;                Le trentenaire entrait par effraction dans les garages et en dérobait le contenu.
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864540-5beed11b22453" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article8::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864540-5beed11b22453" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/montpellier-le-voleur-des-sous-terrains-pris-au-piege-par-un-habitant,4864540.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/montpellier-le-voleur-des-sous-terrains-pris-au-piege-par-un-habitant,4864540.php" data-text="Montpellier : le voleur des souterrains pris au piège par un habitant"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-article-large">
        <div class="u-relative">
            <figure class="hover-effect mod-dark-bg article-premium">
                    <span class="article-premium-label"><span class="article-premium-text">Abonnés</span><i class="article-premium-icon icon-crown"></i></span>
                                <a href="/2018/11/16/a-beziers-les-groupes-automobiles-se-regroupent,4864295.php"
                   data-xiti-action="1,home::colgauche::article9::articlepayant-large-image,N">
                                                                                                                                                                                <img alt="À Béziers, les groupes automobiles se regroupent"
                                src="/img/lazy_large.jpg"
                                data-src="https://images.midilibre.fr/api/v1/images/view/5bee8f908fe56f494b741441/large/image.jpg"
                             data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee8f908fe56f494b741441/large/image.jpg 885w,https://images.midilibre.fr/api/v1/images/view/5bee8f908fe56f494b741441/medium/image.jpg 435w"
                             sizes="(min-width: 1201px) 885px, (min-width: 769px) calc(100vw - 315px), 100vw"
                             class="responsive-img">
                                    </a>
            </figure>
            <div class="article-content hover-target">
                <header>
                    <h2 class="article-title">
                        <a href="/2018/11/16/a-beziers-les-groupes-automobiles-se-regroupent,4864295.php"
                           data-xiti-action="1,home::colgauche::article9::articlepayant-large-titre,N">
                            À Béziers, les groupes automobiles se regroupent
                        </a>
                    </h2>
                </header>
                <p class="article-chapo hide-on-med-and-down">
                    Evénement Midi Libre. En 2018, plusieurs marques de véhicules vendus localement ont changé de mains.
                </p>
            </div>
        </div>
            </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                                <a href="/2018/11/16/inondations-dans-laude-reprise-de-la-circulation-des-trains-entre-narbonne-et-carcassonne,4864447.php"
                   data-xiti-action="1,home::colgauche::article10::article-image,N">
                                                                                                                                    <img alt="Inondations dans l'Aude : reprise de la circulation des trains entre Narbonne et Carcassonne"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5beeaf053e454667347c0a0a/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5beeaf053e454667347c0a0a/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5beeaf053e454667347c0a0a/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5beeaf053e454667347c0a0a/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5beeaf053e454667347c0a0a/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/inondations-dans-laude-reprise-de-la-circulation-des-trains-entre-narbonne-et-carcassonne,4864447.php"
                   data-xiti-action="1,home::colgauche::article10::article-titre,N">
                    Inondations dans l'Aude : reprise de la circulation des trains entre Narbonne et Carcassonne
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Transports.</span>&nbsp;                Les précipitations exceptionnelles survenues lundi 15 octobre dans le département de l’Aude ont provoqué d’importants...
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864447-5beed11b2256f" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article10::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864447-5beed11b2256f" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/inondations-dans-laude-reprise-de-la-circulation-des-trains-entre-narbonne-et-carcassonne,4864447.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/inondations-dans-laude-reprise-de-la-circulation-des-trains-entre-narbonne-et-carcassonne,4864447.php" data-text="Inondations dans l'Aude : reprise de la circulation des trains entre Narbonne et Carcassonne"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                            <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                    <a href="/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php"
                   data-xiti-action="1,home::colgauche::article11::video-image,N">
                                                                                                                                    <img alt="FRANCE-TRIAL-CHILDREN-SOCIAL-ASSIZE"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5bee7f498fe56f19bd5f9366/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5bee7f498fe56f19bd5f9366/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5bee7f498fe56f19bd5f9366/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5bee7f498fe56f19bd5f9366/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5bee7f498fe56f19bd5f9366/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php"
                   data-xiti-action="1,home::colgauche::article11::video-titre,N">
                    Bébé du "coffre" : la mère de Séréna, un cas exceptionnel pour les psychiatres
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Justice.</span>&nbsp;                "Déni absolu de grossesse", "dénégation d'enfant" ou "incapacité parentale" ? La cour d'assises de la Corrèze a...
            </p>
            <footer class="article-footer">
                                    
                            <a href="/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php#commentaires" class="article-nb-comment  "
           data-xiti-action="1,home::colgauche::home::article11::commentaire,N">
            <i class="icon-comment"></i> 1
                            <span class="hide-on-med-and-down">commentaire</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863846-5beed11b22638" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article11::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863846-5beed11b22638" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php" data-text="Bébé du "coffre" : la mère de Séréna, un cas exceptionnel pour les psychiatres"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect article-premium">
                    <span class="article-premium-label"><span class="article-premium-text">Abonnés</span><i class="article-premium-icon icon-crown"></i></span>
                                <a href="/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php"
                   data-xiti-action="1,home::colgauche::article12::articlepayant-image,N">
                                                                                                                                    <img alt="&quot;Un territoire en fonction de la voiture&quot;"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5bee701d3e454650e26f819b/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5bee701d3e454650e26f819b/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5bee701d3e454650e26f819b/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5bee701d3e454650e26f819b/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5bee701d3e454650e26f819b/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php"
                   data-xiti-action="1,home::colgauche::article12::articlepayant-titre,N">
                    Grogne des "gilets jaunes" : des Français trop dépendants de leur véhicule
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Transports.</span>&nbsp;                Selon le journaliste Olivier Razemon, les Français sont trop dépendants de leur véhicule.
            </p>
            <footer class="article-footer">
                                    
                            <a href="/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php#commentaires" class="article-nb-comment  "
           data-xiti-action="1,home::colgauche::home::article12::commentaire,N">
            <i class="icon-comment"></i> 1
                            <span class="hide-on-med-and-down">commentaire</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863641-5beed11b226f4" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article12::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863641-5beed11b226f4" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php" data-text="Grogne des "gilets jaunes" : des Français trop dépendants de leur véhicule"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                                <a href="/2018/11/16/brulures-tabassages-et-coups-de-feu-entre-adolescents,4864241.php"
                   data-xiti-action="1,home::colgauche::article13::article-image,N">
                                                                                                                                    <img alt="Brûlures, tabassages et coups de feu entre adolescents"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5bee77248fe56f7b6f21e46d/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5bee77248fe56f7b6f21e46d/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5bee77248fe56f7b6f21e46d/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5bee77248fe56f7b6f21e46d/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5bee77248fe56f7b6f21e46d/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/brulures-tabassages-et-coups-de-feu-entre-adolescents,4864241.php"
                   data-xiti-action="1,home::colgauche::article13::article-titre,N">
                    Brûlures, tabassages et coups de feu entre adolescents à Sète
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Faits divers.</span>&nbsp;                Trois mineurs sétois ont été visés par une bande pour un motif futile au cours d'agressions très violentes..
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864241-5beed11b2279b" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article13::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864241-5beed11b2279b" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/brulures-tabassages-et-coups-de-feu-entre-adolescents,4864241.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/brulures-tabassages-et-coups-de-feu-entre-adolescents,4864241.php" data-text="Brûlures, tabassages et coups de feu entre adolescents à Sète"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                            <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                    <a href="/2018/11/16/perpetuite-pour-genocide-a-lencontre-de-deux-dirigeants-khmers-rouges-encore-vivants,4864506.php"
                   data-xiti-action="1,home::colgauche::article14::video-image,N">
                                                                                                                                    <img alt="CAMBODIA-UN-TRIAL"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5beec2408fe56f0b0e3394c8/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5beec2408fe56f0b0e3394c8/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5beec2408fe56f0b0e3394c8/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5beec2408fe56f0b0e3394c8/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5beec2408fe56f0b0e3394c8/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/perpetuite-pour-genocide-a-lencontre-de-deux-dirigeants-khmers-rouges-encore-vivants,4864506.php"
                   data-xiti-action="1,home::colgauche::article14::video-titre,N">
                    Perpétuité pour "génocide" à l'encontre de deux dirigeants khmers rouges encore vivants
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Justice.</span>&nbsp;                Les deux plus hauts dirigeants khmers rouges encore en vie ont été condamnés vendredi 16 novembre au Cambodge à la...
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864506-5beed11b22844" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article14::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864506-5beed11b22844" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/perpetuite-pour-genocide-a-lencontre-de-deux-dirigeants-khmers-rouges-encore-vivants,4864506.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/perpetuite-pour-genocide-a-lencontre-de-deux-dirigeants-khmers-rouges-encore-vivants,4864506.php" data-text="Perpétuité pour "génocide" à l'encontre de deux dirigeants khmers rouges encore vivants"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect ">
                                            <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                    <a href="/2018/11/15/les-nuits-zebrees-de-nova-le-coup-de-coeur-de-yannick-philiponnat,4863012.php"
                   data-xiti-action="1,home::colgauche::article15::video-image,N">
                                                                                                                                    <img alt="Les Nuits Zébrées de Nova, le coup de coeur de Yanick Philipponnat"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5beda0e58fe56f4df96f43a1/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5beda0e58fe56f4df96f43a1/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5beda0e58fe56f4df96f43a1/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5beda0e58fe56f4df96f43a1/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5beda0e58fe56f4df96f43a1/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/15/les-nuits-zebrees-de-nova-le-coup-de-coeur-de-yannick-philiponnat,4863012.php"
                   data-xiti-action="1,home::colgauche::article15::video-titre,N">
                    Les Nuits Zébrées de Nova, le coup de coeur de Yanick Philipponnat
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Rendez-vous de la rédaction.</span>&nbsp;                Le coup de coeur de ce vendredi 16 novembre par Yanick Philipponnat, journaliste à Midi Libre, est consacré aux Nuits...
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863012-5beed11b228f2" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article15::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863012-5beed11b228f2" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/les-nuits-zebrees-de-nova-le-coup-de-coeur-de-yannick-philiponnat,4863012.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/les-nuits-zebrees-de-nova-le-coup-de-coeur-de-yannick-philiponnat,4863012.php" data-text="Les Nuits Zébrées de Nova, le coup de coeur de Yanick Philipponnat"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        
        
                    
            <article class="article mod-list ">
                    <figure class="article-figure hover-effect article-premium">
                    <span class="article-premium-label"><span class="article-premium-text">Abonnés</span><i class="article-premium-icon icon-crown"></i></span>
                                <a href="/2018/11/16/education-pouvoir-dachat-territoires-les-reponses-de-laurent-wauquiez-a-midi-libre,4863654.php"
                   data-xiti-action="1,home::colgauche::article16::articlepayant-image,N">
                                                                                                                                    <img alt="Laurent Wauquiez était face aux lecteurs de Midi Libre"
                            src="/img/lazy_standard.jpg"
                            data-src="https://images.midilibre.fr/api/v1/images/view/5bee8c133e4546211377e841/standard/image.jpg"
                         data-srcset="
                            https://images.midilibre.fr/api/v1/images/view/5bee8c133e4546211377e841/small/image.jpg 205w,
                            https://images.midilibre.fr/api/v1/images/view/5bee8c133e4546211377e841/standard/image.jpg 300w,
                            https://images.midilibre.fr/api/v1/images/view/5bee8c133e4546211377e841/medium/image.jpg 435w,
                            https://images.midilibre.fr/api/v1/images/view/5bee8c133e4546211377e841/large/image.jpg 885w
                         "
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) calc(100vw - 315px), 100vw"
                         class="article-img u-cover-img">
                </a>
            </figure>
                <div class="article-content hover-target">
            <h2 class="article-title u-medium-title">
                <a href="/2018/11/16/education-pouvoir-dachat-territoires-les-reponses-de-laurent-wauquiez-a-midi-libre,4863654.php"
                   data-xiti-action="1,home::colgauche::article16::articlepayant-titre,N">
                    Education, pouvoir d'achat, territoires... les réponses de Laurent Wauquiez à Midi Libre
                </a>
            </h2>
            <p class="article-chapo hide-on-small-only">
                <span class="article-topic-principal">Politique.</span>&nbsp;                Laurent Wauquiez a choisi sa paroisse. Il ne sera pas l’homme "des villes et des start-up" mais bien celui de la...
            </p>
            <footer class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863654-5beed11b229a6" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article16::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863654-5beed11b229a6" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/education-pouvoir-dachat-territoires-les-reponses-de-laurent-wauquiez-a-midi-libre,4863654.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/education-pouvoir-dachat-territoires-les-reponses-de-laurent-wauquiez-a-midi-libre,4863654.php" data-text="Education, pouvoir d'achat, territoires... les réponses de Laurent Wauquiez à Midi Libre"></span>
            </li>
        </ul>
    </div>



                            </footer>
        </div>
    </article>
    
                        

    </section>

<!-- /BL -->
<!-- BL Bloc pager Homepage de type ext -->
<!-- BL in -->
    <div class="u-mb-15 center" rel="js-home-pager">
        <a class="btn u-mb-15" rel="js-home-see-more" data-href="https://www.midilibre.fr/topics/home/2">Voir plus d'articles</a>
        <div class="center">
            <div class="preloader-wrapper small" rel="js-home-pager-loader">
                <div class="spinner-layer spinner-blue-only">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div><div class="gap-patch">
                        <div class="circle"></div>
                    </div><div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- /BL -->
<!-- BL Bloc DFP Mobile Droite Basse de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [mobile_droite_basse] -->
<div >
    <div rel="js-pushpin-mobile_droite_basse">
        <div id="pub_dfp_mobile_droite_basse"
             class="pub mod-mobile_droite_basse center-align hide-on-med-and-up"
             data-dfp-mobile="">
                                                        </div>
    </div>
</div><!-- /BL -->
<!-- BL L&#039;actu en vidéo - MDL de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/actu/rendez-vous-de-la-redaction/video/"
                   data-xiti-action="1,home::colgauche::home::titre-topic,N">L&#039;actu en images</a>
            </h2>
            <a href="/actu/rendez-vous-de-la-redaction/video/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::home::tous,N"><i
                        class="icon-arrow-right"></i>Voir toutes les vidéos            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                                        <a href="/2018/11/16/beziers-daniel-guichard-interprete-son-tube-la-tendresse-en-repetition,4864378.php"
                                       data-xiti-action="1,home::colgauche::home::article1::video-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5beea1a98fe56f428947d599/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5beea1a98fe56f428947d599/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beea1a98fe56f428947d599/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beea1a98fe56f428947d599/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt=" "
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/beziers-daniel-guichard-interprete-son-tube-la-tendresse-en-repetition,4864378.php"
                                       data-xiti-action="1,home::colgauche::home::article1::video-titre,N">
                                        Béziers : Daniel Guichard interprète son tube La Tendresse en répétition
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Culture et loisirs.</span>&nbsp;                                    C'est ce samedi 17 novembre à Béziers que Daniel Guichard débute sa nouvelle tournée. Midi Libre a assisté aux dernières répétitions.
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864378-5beed11b24036" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864378-5beed11b24036" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/beziers-daniel-guichard-interprete-son-tube-la-tendresse-en-repetition,4864378.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/beziers-daniel-guichard-interprete-son-tube-la-tendresse-en-repetition,4864378.php" data-text="Béziers : Daniel Guichard interprète son tube La Tendresse en répétition"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/15/ales-thomas-champigny-designe-candidat-de-la-france-insoumise-pour-les-europeennes,4863187.php"
               data-xiti-action="1,home::colgauche::home::article2::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bedbfe93e454646eb18d013/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bedbfe93e454646eb18d013/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bedbfe93e454646eb18d013/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bedbfe93e454646eb18d013/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Alès : Thomas Champigny désigné candidat de la France Insoumise pour les européennes"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/15/ales-thomas-champigny-designe-candidat-de-la-france-insoumise-pour-les-europeennes,4863187.php"
                       data-xiti-action="1,home::colgauche::home::article2::video-titre,N">
                        Alès : Thomas Champigny désigné candidat de la France Insoumise pour les européennes
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
                            <a href="/2018/11/15/ales-thomas-champigny-designe-candidat-de-la-france-insoumise-pour-les-europeennes,4863187.php#commentaires" class="article-nb-comment  "
           data-xiti-action="1,home::colgauche::home::article2::commentaire,N">
            <i class="icon-comment"></i> 2
                            <span class="hide-on-med-and-down">commentaires</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863187-5beed11b24444" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863187-5beed11b24444" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/ales-thomas-champigny-designe-candidat-de-la-france-insoumise-pour-les-europeennes,4863187.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/ales-thomas-champigny-designe-candidat-de-la-france-insoumise-pour-les-europeennes,4863187.php" data-text="Alès : Thomas Champigny désigné candidat de la France Insoumise pour les européennes"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/14/beziers-lasbh-doit-evacuer-la-pression-negative-pour-pouvoir-battre-bayonne,4861271.php"
               data-xiti-action="1,home::colgauche::home::article3::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bec4bba3e4546415e325af0/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bec4bba3e4546415e325af0/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bec4bba3e4546415e325af0/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bec4bba3e4546415e325af0/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt=" "
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/14/beziers-lasbh-doit-evacuer-la-pression-negative-pour-pouvoir-battre-bayonne,4861271.php"
                       data-xiti-action="1,home::colgauche::home::article3::video-titre,N">
                        Béziers : l'ASBH doit "évacuer la pression négative" pour pouvoir battre Bayonne
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4861271-5beed11b244d0" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4861271-5beed11b244d0" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/14/beziers-lasbh-doit-evacuer-la-pression-negative-pour-pouvoir-battre-bayonne,4861271.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/14/beziers-lasbh-doit-evacuer-la-pression-negative-pour-pouvoir-battre-bayonne,4861271.php" data-text="Béziers : l'ASBH doit "évacuer la pression négative" pour pouvoir battre Bayonne"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/14/beziers-pour-battre-bayonne-il-faudra-etre-presents-80-minutes,4861185.php"
               data-xiti-action="1,home::colgauche::home::article4::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bec3bff8fe56f276942a217/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bec3bff8fe56f276942a217/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bec3bff8fe56f276942a217/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bec3bff8fe56f276942a217/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt=" "
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/14/beziers-pour-battre-bayonne-il-faudra-etre-presents-80-minutes,4861185.php"
                       data-xiti-action="1,home::colgauche::home::article4::video-titre,N">
                        Béziers : pour battre Bayonne, "il faudra être présents 80 minutes"
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4861185-5beed11b2455d" rel="js-share-link"       data-xiti-action="1,home::colgauche::home::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4861185-5beed11b2455d" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/14/beziers-pour-battre-bayonne-il-faudra-etre-presents-80-minutes,4861185.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/14/beziers-pour-battre-bayonne-il-faudra-etre-presents-80-minutes,4861185.php" data-text="Béziers : pour battre Bayonne, "il faudra être présents 80 minutes""></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Topic Sport 4 articles - MDL de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/sport/"
                   data-xiti-action="1,home::colgauche::sport::titre-topic,N">Sport</a>
            </h2>
            <a href="/sport/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::sport::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/16/handball-montpellier-avec-faustin-et-richardson-face-a-tremblay,4864523.php"
                                       data-xiti-action="1,home::colgauche::sport::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5beec85b8fe56f2dba3d4695/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5beec85b8fe56f2dba3d4695/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beec85b8fe56f2dba3d4695/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beec85b8fe56f2dba3d4695/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="Handball : Montpellier avec Faustin et Richardson face à Tremblay"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/handball-montpellier-avec-faustin-et-richardson-face-a-tremblay,4864523.php"
                                       data-xiti-action="1,home::colgauche::sport::article1::article-titre,N">
                                        Handball : Montpellier avec Faustin et Richardson face à Tremblay
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Handball.</span>&nbsp;                                    L'arrière droit, touché à la cuisse mercredi soir, et le demi centre de retour de blessure seront aptes pour ce déplacement, samedi soir.
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864523-5beed11b25a20" rel="js-share-link"       data-xiti-action="1,home::colgauche::sport::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864523-5beed11b25a20" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/handball-montpellier-avec-faustin-et-richardson-face-a-tremblay,4864523.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/handball-montpellier-avec-faustin-et-richardson-face-a-tremblay,4864523.php" data-text="Handball : Montpellier avec Faustin et Richardson face à Tremblay"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/football-les-bleus-affrontent-les-pays-bas-a-rotterdam-ce-vendredi,4864201.php"
               data-xiti-action="1,home::colgauche::sport::article2::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bee745c3e454650e7169e25/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee745c3e454650e7169e25/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee745c3e454650e7169e25/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee745c3e454650e7169e25/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Les Bleus ont un travail à finir"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/football-les-bleus-affrontent-les-pays-bas-a-rotterdam-ce-vendredi,4864201.php"
                       data-xiti-action="1,home::colgauche::sport::article2::article-titre,N">
                        Football : les Bleus affrontent les Pays-Bas à Rotterdam ce vendredi
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864201-5beed11b25ab1" rel="js-share-link"       data-xiti-action="1,home::colgauche::sport::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864201-5beed11b25ab1" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/football-les-bleus-affrontent-les-pays-bas-a-rotterdam-ce-vendredi,4864201.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/football-les-bleus-affrontent-les-pays-bas-a-rotterdam-ce-vendredi,4864201.php" data-text="Football : les Bleus affrontent les Pays-Bas à Rotterdam ce vendredi"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/voile-thomson-echoue-de-pavant-poursuit-son-chemin-sur-la-route-du-rhum,4864395.php"
               data-xiti-action="1,home::colgauche::sport::article3::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beea3318fe56f430a4855f5/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beea3318fe56f430a4855f5/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beea3318fe56f430a4855f5/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beea3318fe56f430a4855f5/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Voile : Thomson échoué, De Pavant poursuit son chemin sur la Route du Rhum"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/voile-thomson-echoue-de-pavant-poursuit-son-chemin-sur-la-route-du-rhum,4864395.php"
                       data-xiti-action="1,home::colgauche::sport::article3::article-titre,N">
                        Voile : Thomson échoué, De Pavant poursuit son chemin sur la Route du Rhum
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864395-5beed11b25b39" rel="js-share-link"       data-xiti-action="1,home::colgauche::sport::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864395-5beed11b25b39" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/voile-thomson-echoue-de-pavant-poursuit-son-chemin-sur-la-route-du-rhum,4864395.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/voile-thomson-echoue-de-pavant-poursuit-son-chemin-sur-la-route-du-rhum,4864395.php" data-text="Voile : Thomson échoué, De Pavant poursuit son chemin sur la Route du Rhum"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/beziers-la-pelouse-du-stade-de-la-mediterranee-souffre-mais-tient-bon,4864393.php"
               data-xiti-action="1,home::colgauche::sport::article4::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beea47e8fe56f0b32552bf3/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beea47e8fe56f0b32552bf3/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beea47e8fe56f0b32552bf3/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beea47e8fe56f0b32552bf3/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt=" "
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/beziers-la-pelouse-du-stade-de-la-mediterranee-souffre-mais-tient-bon,4864393.php"
                       data-xiti-action="1,home::colgauche::sport::article4::article-titre,N">
                        Béziers : la pelouse du stade de la Méditerranée souffre mais tient bon
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864393-5beed11b25bbe" rel="js-share-link"       data-xiti-action="1,home::colgauche::sport::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864393-5beed11b25bbe" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/beziers-la-pelouse-du-stade-de-la-mediterranee-souffre-mais-tient-bon,4864393.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/beziers-la-pelouse-du-stade-de-la-mediterranee-souffre-mais-tient-bon,4864393.php" data-text="Béziers : la pelouse du stade de la Méditerranée souffre mais tient bon"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Info Light 4 articles de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/infolight/"
                   data-xiti-action="1,home::colgauche::infolight::titre-topic,N">Infolight</a>
            </h2>
            <a href="/infolight/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::infolight::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/15/the-game-awards-2018-red-dead-redemption-2-et-god-of-war-menent-les-nominations,4862693.php"
                                       data-xiti-action="1,home::colgauche::infolight::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5bed59343e454671c9308910/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5bed59343e454671c9308910/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bed59343e454671c9308910/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bed59343e454671c9308910/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="The Game Awards 2018: &quot;Red Dead Redemption 2&quot; et &quot;God of War&quot; mènent les nominations"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/15/the-game-awards-2018-red-dead-redemption-2-et-god-of-war-menent-les-nominations,4862693.php"
                                       data-xiti-action="1,home::colgauche::infolight::article1::article-titre,N">
                                        The Game Awards 2018 : "Red Dead Redemption 2" et "God of War" mènent les nominations
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Innovation - High Tech.</span>&nbsp;                                    Alors que l'édition 2018 de The Game Awards (TGA) se tiendra le 6 décembre et sera diffusée en livestream, les candidats aux prix des jeux vidéo de l'année ont été dévoilés dans...
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4862693-5beed11b28590" rel="js-share-link"       data-xiti-action="1,home::colgauche::infolight::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4862693-5beed11b28590" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/the-game-awards-2018-red-dead-redemption-2-et-god-of-war-menent-les-nominations,4862693.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/the-game-awards-2018-red-dead-redemption-2-et-god-of-war-menent-les-nominations,4862693.php" data-text="The Game Awards 2018 : "Red Dead Redemption 2" et "God of War" mènent les nominations"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/15/lets-go-pikachu-et-lets-go-evoli-surfent-sur-le-succes-de-pokemon-go,4863075.php"
               data-xiti-action="1,home::colgauche::infolight::article2::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bedad933e454605f968242e/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bedad933e454605f968242e/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bedad933e454605f968242e/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bedad933e454605f968242e/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="&quot;Let&#039;s Go, Pikachu&quot; et &quot;Let&#039;s Go, Evoli!&quot; surfent sur le succès de Pokémon Go"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/15/lets-go-pikachu-et-lets-go-evoli-surfent-sur-le-succes-de-pokemon-go,4863075.php"
                       data-xiti-action="1,home::colgauche::infolight::article2::video-titre,N">
                        "Let's Go, Pikachu" et "Let's Go, Evoli!" surfent sur le succès de Pokémon Go
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863075-5beed11b28626" rel="js-share-link"       data-xiti-action="1,home::colgauche::infolight::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863075-5beed11b28626" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/lets-go-pikachu-et-lets-go-evoli-surfent-sur-le-succes-de-pokemon-go,4863075.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/lets-go-pikachu-et-lets-go-evoli-surfent-sur-le-succes-de-pokemon-go,4863075.php" data-text=""Let's Go, Pikachu" et "Let's Go, Evoli!" surfent sur le succès de Pokémon Go"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/15/zayn-sassocie-avec-nicki-minaj-sur-no-candle-no-light,4863004.php"
               data-xiti-action="1,home::colgauche::infolight::article3::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bed9f858fe56f4d4c1fbed3/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bed9f858fe56f4d4c1fbed3/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bed9f858fe56f4d4c1fbed3/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bed9f858fe56f4d4c1fbed3/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Zayn s&#039;associe avec Nicki Minaj sur &quot;No Candle No Light&quot;"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/15/zayn-sassocie-avec-nicki-minaj-sur-no-candle-no-light,4863004.php"
                       data-xiti-action="1,home::colgauche::infolight::article3::video-titre,N">
                        Zayn s'associe avec Nicki Minaj sur "No Candle No Light"
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4863004-5beed11b286af" rel="js-share-link"       data-xiti-action="1,home::colgauche::infolight::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4863004-5beed11b286af" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/zayn-sassocie-avec-nicki-minaj-sur-no-candle-no-light,4863004.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/zayn-sassocie-avec-nicki-minaj-sur-no-candle-no-light,4863004.php" data-text="Zayn s'associe avec Nicki Minaj sur "No Candle No Light""></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php"
               data-xiti-action="1,home::colgauche::infolight::article4::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bed8bd38fe56f361045ec92/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bed8bd38fe56f361045ec92/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bed8bd38fe56f361045ec92/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bed8bd38fe56f361045ec92/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Une hôtesse de l&#039;air allaite le bébé d&#039;une passagère en manque de lait en poudre"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php"
                       data-xiti-action="1,home::colgauche::infolight::article4::video-titre,N">
                        Une hôtesse de l'air allaite le bébé d'une passagère en manque de lait en poudre
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
                                                <a href="/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php#commentaires" class="article-nb-comment is-warm "
           data-xiti-action="1,home::colgauche::infolight::article4::commentaire-is-warm,N">
            <i class="icon-comment"></i> 11
                            <span class="hide-on-med-and-down">commentaires</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4862798-5beed11b28746" rel="js-share-link"       data-xiti-action="1,home::colgauche::infolight::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4862798-5beed11b28746" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php" data-text="Une hôtesse de l'air allaite le bébé d'une passagère en manque de lait en poudre"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Montpellier 4 articles de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/herault/montpellier/"
                   data-xiti-action="1,home::colgauche::montpellier::titre-topic,N">Montpellier</a>
            </h2>
            <a href="/herault/montpellier/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::montpellier::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles de Montpellier            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/16/montpellier-on-sest-retrouve-par-necessite-de-sevader-des-urgences,4864508.php"
                                       data-xiti-action="1,home::colgauche::montpellier::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5beec0f78fe56f2dd35a1769/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5beec0f78fe56f2dd35a1769/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beec0f78fe56f2dd35a1769/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beec0f78fe56f2dd35a1769/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="&quot;On s’est retrouvé par nécessité de s’évader des urgences&quot;"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/montpellier-on-sest-retrouve-par-necessite-de-sevader-des-urgences,4864508.php"
                                       data-xiti-action="1,home::colgauche::montpellier::article1::article-titre,N">
                                        Montpellier : "On s’est retrouvé par nécessité de s’évader des urgences"
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Culture et loisirs.</span>&nbsp;                                    Showcase. Retour sur le direct avec Caregivers jeudi pour la sortie de leur 2e EP.
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864508-5beed11b29f17" rel="js-share-link"       data-xiti-action="1,home::colgauche::montpellier::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864508-5beed11b29f17" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/montpellier-on-sest-retrouve-par-necessite-de-sevader-des-urgences,4864508.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/montpellier-on-sest-retrouve-par-necessite-de-sevader-des-urgences,4864508.php" data-text="Montpellier : "On s’est retrouvé par nécessité de s’évader des urgences""></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/16/montpellier-les-mediatheques-tirent-leur-epingle-du-jeu,4864448.php"
               data-xiti-action="1,home::colgauche::montpellier::article2::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beebedc8fe56f25f01b66bd/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beebedc8fe56f25f01b66bd/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beebedc8fe56f25f01b66bd/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beebedc8fe56f25f01b66bd/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Des jeux sous toutes les formes durant deux semaines."
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/montpellier-les-mediatheques-tirent-leur-epingle-du-jeu,4864448.php"
                       data-xiti-action="1,home::colgauche::montpellier::article2::video-titre,N">
                        Montpellier :  les médiathèques tirent leur épingle du jeu
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864448-5beed11b29fac" rel="js-share-link"       data-xiti-action="1,home::colgauche::montpellier::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864448-5beed11b29fac" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/montpellier-les-mediatheques-tirent-leur-epingle-du-jeu,4864448.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/montpellier-les-mediatheques-tirent-leur-epingle-du-jeu,4864448.php" data-text="Montpellier :  les médiathèques tirent leur épingle du jeu"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/gilets-jaunes-que-risque-t-on-en-manifestant-le-samedi-17-novembre,4864328.php"
               data-xiti-action="1,home::colgauche::montpellier::article3::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bee97bb8fe56f42df7d6184/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee97bb8fe56f42df7d6184/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee97bb8fe56f42df7d6184/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee97bb8fe56f42df7d6184/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="X2MOTARDS"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/gilets-jaunes-que-risque-t-on-en-manifestant-le-samedi-17-novembre,4864328.php"
                       data-xiti-action="1,home::colgauche::montpellier::article3::article-titre,N">
                        Gilets jaunes : que risque-t-on en manifestant le samedi 17 novembre ?
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864328-5beed11b2a012" rel="js-share-link"       data-xiti-action="1,home::colgauche::montpellier::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864328-5beed11b2a012" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/gilets-jaunes-que-risque-t-on-en-manifestant-le-samedi-17-novembre,4864328.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/gilets-jaunes-que-risque-t-on-en-manifestant-le-samedi-17-novembre,4864328.php" data-text="Gilets jaunes : que risque-t-on en manifestant le samedi 17 novembre ?"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
               data-xiti-action="1,home::colgauche::montpellier::article4::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                       data-xiti-action="1,home::colgauche::montpellier::article4::article-titre,N">
                        Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864541-5beed11b2a09c" rel="js-share-link"       data-xiti-action="1,home::colgauche::montpellier::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864541-5beed11b2a09c" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php" data-text="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Beziers 4 articles de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/herault/beziers/"
                   data-xiti-action="1,home::colgauche::beziers::titre-topic,N">Béziers</a>
            </h2>
            <a href="/herault/beziers/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::beziers::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                                       data-xiti-action="1,home::colgauche::beziers::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                                       data-xiti-action="1,home::colgauche::beziers::article1::article-titre,N">
                                        Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Vide-greniers et brocantes.</span>&nbsp;                                    Retrouvez la liste des brocantes et vide-greniers qui se tiennent dans les départements de l'Aude, l'Aveyron, le Gard, l'Hérault, la Lozère et les Pyrénées-Orientales, du 16 au...
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864541-5beed11b2b2a4" rel="js-share-link"       data-xiti-action="1,home::colgauche::beziers::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864541-5beed11b2b2a4" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php" data-text="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/de-fideles-lecteurs-du-biterrois-ont-assite-au-tirage-du-journal,4864511.php"
               data-xiti-action="1,home::colgauche::beziers::article2::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beec3e63e4546673678ae3b/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beec3e63e4546673678ae3b/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beec3e63e4546673678ae3b/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beec3e63e4546673678ae3b/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="LECTEURSBEZIERS"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/de-fideles-lecteurs-du-biterrois-ont-assite-au-tirage-du-journal,4864511.php"
                       data-xiti-action="1,home::colgauche::beziers::article2::article-titre,N">
                        De fidèles lecteurs du Biterrois ont assité au tirage du journal
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864511-5beed11b2b335" rel="js-share-link"       data-xiti-action="1,home::colgauche::beziers::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864511-5beed11b2b335" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/de-fideles-lecteurs-du-biterrois-ont-assite-au-tirage-du-journal,4864511.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/de-fideles-lecteurs-du-biterrois-ont-assite-au-tirage-du-journal,4864511.php" data-text="De fidèles lecteurs du Biterrois ont assité au tirage du journal"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/beziers-le-salon-de-lautomobile-officiellement-lance,4864478.php"
               data-xiti-action="1,home::colgauche::beziers::article3::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beec3863e4546445930a7c5/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beec3863e4546445930a7c5/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beec3863e4546445930a7c5/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beec3863e4546445930a7c5/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt=" "
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/beziers-le-salon-de-lautomobile-officiellement-lance,4864478.php"
                       data-xiti-action="1,home::colgauche::beziers::article3::article-titre,N">
                        Béziers : le salon de l'automobile officiellement lancé
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864478-5beed11b2b39a" rel="js-share-link"       data-xiti-action="1,home::colgauche::beziers::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864478-5beed11b2b39a" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/beziers-le-salon-de-lautomobile-officiellement-lance,4864478.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/beziers-le-salon-de-lautomobile-officiellement-lance,4864478.php" data-text="Béziers : le salon de l'automobile officiellement lancé"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"
               data-xiti-action="1,home::colgauche::beziers::article4::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Le matador Juan Leal : &quot;2019 sera la temporada la plus importante de ma carrière&quot;"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"
                       data-xiti-action="1,home::colgauche::beziers::article4::article-titre,N">
                        Le matador Juan Leal : "2019 sera la temporada la plus importante de ma carrière"
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864403-5beed11b2b42d" rel="js-share-link"       data-xiti-action="1,home::colgauche::beziers::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864403-5beed11b2b42d" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php" data-text="Le matador Juan Leal : "2019 sera la temporada la plus importante de ma carrière""></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Nimes 4 articles de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/gard/nimes/"
                   data-xiti-action="1,home::colgauche::nimes::titre-topic,N">Nîmes</a>
            </h2>
            <a href="/gard/nimes/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::nimes::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/16/nimes-une-aide-aux-sinistres-audois-de-50-000-euros-sera-votee-en-conseil-municipal-ce-samedi,4864285.php"
                                       data-xiti-action="1,home::colgauche::nimes::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5bee88a28fe56f18865fd782/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee88a28fe56f18865fd782/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee88a28fe56f18865fd782/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee88a28fe56f18865fd782/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="W100MARBIS"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/nimes-une-aide-aux-sinistres-audois-de-50-000-euros-sera-votee-en-conseil-municipal-ce-samedi,4864285.php"
                                       data-xiti-action="1,home::colgauche::nimes::article1::article-titre,N">
                                        Nîmes : une aide aux sinistrés audois de 50 000 euros sera votée en conseil municipal ce samedi
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Politique.</span>&nbsp;                                    Au total, 56 questions seront à l'ordre du jour ce camedi, dès 8 h.
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864285-5beed11b2c1ba" rel="js-share-link"       data-xiti-action="1,home::colgauche::nimes::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864285-5beed11b2c1ba" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/nimes-une-aide-aux-sinistres-audois-de-50-000-euros-sera-votee-en-conseil-municipal-ce-samedi,4864285.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/nimes-une-aide-aux-sinistres-audois-de-50-000-euros-sera-votee-en-conseil-municipal-ce-samedi,4864285.php" data-text="Nîmes : une aide aux sinistrés audois de 50 000 euros sera votée en conseil municipal ce samedi"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"
               data-xiti-action="1,home::colgauche::nimes::article2::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beea8ad3e4546301b70ba51/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Le matador Juan Leal : &quot;2019 sera la temporada la plus importante de ma carrière&quot;"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"
                       data-xiti-action="1,home::colgauche::nimes::article2::article-titre,N">
                        Le matador Juan Leal : "2019 sera la temporada la plus importante de ma carrière"
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864403-5beed11b2c255" rel="js-share-link"       data-xiti-action="1,home::colgauche::nimes::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864403-5beed11b2c255" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php" data-text="Le matador Juan Leal : "2019 sera la temporada la plus importante de ma carrière""></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/nimes-a-pissevin-le-carrefour-market-va-fermer,4864254.php"
               data-xiti-action="1,home::colgauche::nimes::article3::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bee7d7d8fe56f7fa904a8eb/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee7d7d8fe56f7fa904a8eb/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee7d7d8fe56f7fa904a8eb/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee7d7d8fe56f7fa904a8eb/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Nîmes : à Pissevin, le Carrefour Market va fermer"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/nimes-a-pissevin-le-carrefour-market-va-fermer,4864254.php"
                       data-xiti-action="1,home::colgauche::nimes::article3::article-titre,N">
                        Nîmes : à Pissevin, le Carrefour Market va fermer
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
                            <a href="/2018/11/16/nimes-a-pissevin-le-carrefour-market-va-fermer,4864254.php#commentaires" class="article-nb-comment  "
           data-xiti-action="1,home::colgauche::nimes::article3::commentaire,N">
            <i class="icon-comment"></i> 3
                            <span class="hide-on-med-and-down">commentaires</span>                    </a>
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864254-5beed11b2c2f4" rel="js-share-link"       data-xiti-action="1,home::colgauche::nimes::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864254-5beed11b2c2f4" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/nimes-a-pissevin-le-carrefour-market-va-fermer,4864254.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/nimes-a-pissevin-le-carrefour-market-va-fermer,4864254.php" data-text="Nîmes : à Pissevin, le Carrefour Market va fermer"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/10/nimes-le-silence-de-la-mer-au-telemac-theatre,4830719.php"
               data-xiti-action="1,home::colgauche::nimes::article4::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5be6f8778fe56f28cb2a6dbf/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5be6f8778fe56f28cb2a6dbf/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5be6f8778fe56f28cb2a6dbf/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5be6f8778fe56f28cb2a6dbf/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Nîmes : Le Silence de la mer au Télémac théâtre"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/10/nimes-le-silence-de-la-mer-au-telemac-theatre,4830719.php"
                       data-xiti-action="1,home::colgauche::nimes::article4::video-titre,N">
                        Nîmes : Le Silence de la mer au Télémac théâtre
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4830719-5beed11b2c38c" rel="js-share-link"       data-xiti-action="1,home::colgauche::nimes::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4830719-5beed11b2c38c" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/10/nimes-le-silence-de-la-mer-au-telemac-theatre,4830719.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/10/nimes-le-silence-de-la-mer-au-telemac-theatre,4830719.php" data-text="Nîmes : Le Silence de la mer au Télémac théâtre"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->
<!-- BL Bloc Sete 4 articles de type imm -->
<!-- BL in -->
    <section class="thematic">
        <header class="thematic-header">
            <h2 class="thematic-title">
                <a href="/herault/sete/"
                   data-xiti-action="1,home::colgauche::sete::titre-topic,N">Sète</a>
            </h2>
            <a href="/herault/sete/"
               class="thematic-link"
               data-xiti-action="1,home::colgauche::sete::tous,N"><i
                        class="icon-arrow-right"></i>Voir tous les articles            </a>
        </header>
        <div class="row">
                                                                <div class="col l12">
                        <article class="row u-mb-15">
                            <div class="col l7 push-l5 hover-effect">
                                <figure class="">
                                                                                                            <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                                       data-xiti-action="1,home::colgauche::sete::article1::article-image,N">
                                                                                    <img src="/img/lazy_large.jpg"
                                                 data-src="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg"
                                                 data-srcset="https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5beecf2a3e454669dd7d378c/large/image.jpg 885w"
                                                 sizes="(min-width: 1201px) 500px, (min-width: 769px) 885px, 100vw"
                                                 alt="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"
                                                 class="responsive-img">
                                                                            </a>
                                </figure>
                            </div>
                            <div class="col l5 pull-l7 hover-target">
                                <h3 class="article-title u-medium-title">
                                    <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                                       data-xiti-action="1,home::colgauche::sete::article1::article-titre,N">
                                        Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre
                                    </a>
                                </h3>
                                <p class="article-chapo">
                                    <span class="article-topic-principal">Vide-greniers et brocantes.</span>&nbsp;                                    Retrouvez la liste des brocantes et vide-greniers qui se tiennent dans les départements de l'Aude, l'Aveyron, le Gard, l'Hérault, la Lozère et les Pyrénées-Orientales, du 16 au...
                                </p>
                                <div class="article-footer">
                                    
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864541-5beed11b46f98" rel="js-share-link"       data-xiti-action="1,home::colgauche::sete::article1::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864541-5beed11b46f98" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php" data-text="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"></span>
            </li>
        </ul>
    </div>



                                </div>
                            </div>
                        </article>
                    </div>
                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/16/bus-de-linondation-prets-pour-lembarquement-sur-le-bassin-de-thau,4864242.php"
               data-xiti-action="1,home::colgauche::sete::article2::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bee77283e45461a8d13fce3/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee77283e45461a8d13fce3/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee77283e45461a8d13fce3/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee77283e45461a8d13fce3/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="“Bus de l’inondation” : prêts pour l’embarquement !"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/bus-de-linondation-prets-pour-lembarquement-sur-le-bassin-de-thau,4864242.php"
                       data-xiti-action="1,home::colgauche::sete::article2::article-titre,N">
                        “Bus de l’inondation” : prêts pour l’embarquement sur le bassin de Thau !
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864242-5beed11b4702e" rel="js-share-link"       data-xiti-action="1,home::colgauche::sete::article2::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864242-5beed11b4702e" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/bus-de-linondation-prets-pour-lembarquement-sur-le-bassin-de-thau,4864242.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/bus-de-linondation-prets-pour-lembarquement-sur-le-bassin-de-thau,4864242.php" data-text="“Bus de l’inondation” : prêts pour l’embarquement sur le bassin de Thau !"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <span class="icon-video"><span class="path1"></span><span class="path2"></span></span>
                <a href="/2018/11/16/sete-le-camp-de-roms-sest-vide-peu-a-peu,4864388.php"
               data-xiti-action="1,home::colgauche::sete::article3::video-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bee9e0a3e454677bf5d371c/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bee9e0a3e454677bf5d371c/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bee9e0a3e454677bf5d371c/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bee9e0a3e454677bf5d371c/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Sète : le camp de roms s&#039;est vidé peu à peu"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/16/sete-le-camp-de-roms-sest-vide-peu-a-peu,4864388.php"
                       data-xiti-action="1,home::colgauche::sete::article3::video-titre,N">
                        Sète : le camp de roms s'est vidé peu à peu
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4864388-5beed11b470b7" rel="js-share-link"       data-xiti-action="1,home::colgauche::sete::article3::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4864388-5beed11b470b7" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/16/sete-le-camp-de-roms-sest-vide-peu-a-peu,4864388.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/16/sete-le-camp-de-roms-sest-vide-peu-a-peu,4864388.php" data-text="Sète : le camp de roms s'est vidé peu à peu"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                                                                <div class="col l4 m12 s12">
    <article class="article mod-article-vertical">
        <figure class="hover-effect ">
                                    <a href="/2018/11/15/les-sorties-cinema-du-bassin-de-thau-de-ce-vendredi-16-novembre,4862617.php"
               data-xiti-action="1,home::colgauche::sete::article4::article-image,N">
                                    <img src="/img/lazy_standard.jpg"
                         data-src="https://images.midilibre.fr/api/v1/images/view/5bed4c408fe56f55fc244a68/standard/image.jpg"
                         data-srcset="https://images.midilibre.fr/api/v1/images/view/5bed4c408fe56f55fc244a68/standard/image.jpg 300w, https://images.midilibre.fr/api/v1/images/view/5bed4c408fe56f55fc244a68/medium/image.jpg 435w, https://images.midilibre.fr/api/v1/images/view/5bed4c408fe56f55fc244a68/large/image.jpg 885w"
                         sizes="(min-width: 1201px) 300px, (min-width: 769px) 435px, 100vw"
                         alt="Les sorties cinéma du bassin de Thau de ce vendredi 16 novembre"
                         class="u-cover-img">
                            </a>
        </figure>
        <div class="hover-target">
            <header>
                                <h3 class="article-title u-small-title">
                    <a href="/2018/11/15/les-sorties-cinema-du-bassin-de-thau-de-ce-vendredi-16-novembre,4862617.php"
                       data-xiti-action="1,home::colgauche::sete::article4::article-titre,N">
                        Les sorties cinéma du bassin de Thau de ce vendredi 16 novembre
                    </a>
                </h3>
            </header>
            <footer class="article-footer">
                
    
        <a href="#" class="article-nb-share dropdown-button hide "
       data-activates="social-listing-share-elements-4862617-5beed11b4714a" rel="js-share-link"       data-xiti-action="1,home::colgauche::sete::article4::partage,N">
        <i class="icon-share"></i> <span rel="js-share-text"><span class="fb-counter">--</span> <span class="hide-on-med-and-down">partages</span></span>
    </a>
    <div id="social-listing-share-elements-4862617-5beed11b4714a" class="dropdown-content mod-share" rel="js-share">
        <div class="label">Partager sur</div>
        <ul class="social-icons mod-round">
            <li class="social-icons-icon">
                <span class="icon-facebook" data-url="https://www.midilibre.fr/2018/11/15/les-sorties-cinema-du-bassin-de-thau-de-ce-vendredi-16-novembre,4862617.php"></span>
            </li>
            <li class="social-icons-icon">
                <span class="icon-twitter" data-url="https://www.midilibre.fr/2018/11/15/les-sorties-cinema-du-bassin-de-thau-de-ce-vendredi-16-novembre,4862617.php" data-text="Les sorties cinéma du bassin de Thau de ce vendredi 16 novembre"></span>
            </li>
        </ul>
    </div>



            </footer>
        </div>
    </article>
</div>                                    </div>
    </section>

<!-- /BL -->

                        </div>
            <aside class="right-col">
                        <!-- COL -->

<!-- BL Bloc En Direct - MDL de type ext -->
<!-- BL in -->
<div class="sidebar-item sidebar-direct" rel="js-direct-num">
    <p class="sidebar-title">En direct d&#039;occitanie</p>
    <div class="block">
                                                    <ul class="sidebar-direct-items" rel="js-page-1" >
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h14</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/toutes-les-brocantes-et-vide-greniers-de-la-region-du-16-au-22-novembre,4864541.php"
                               title="Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre"
                               data-xiti-action="1,::coldroite::endirect::article1,N">Toutes les brocantes et vide-greniers de la région, du 16 au 22 novembre</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h00</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/montpellier-le-voleur-des-sous-terrains-pris-au-piege-par-un-habitant,4864540.php"
                               title="Montpellier : le voleur des souterrains pris au piège par un habitant"
                               data-xiti-action="1,::coldroite::endirect::article2,N">Montpellier : le voleur des souterrains pris au piège par un habitant</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h56</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/gilets-jaunes-lhumoriste-arlesien-anthony-joubert-leur-a-consacre-une-chanson,4864544.php"
                               title="&quot;Gilets jaunes&quot; : l&#039;humoriste arlésien Anthony Joubert leur a consacré une chanson"
                               data-xiti-action="1,::coldroite::endirect::article3,N">&quot;Gilets jaunes&quot; : l&#039;humoriste arlésien Anthony Joubert leur a consacré une chanson</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h40</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/handball-montpellier-avec-faustin-et-richardson-face-a-tremblay,4864523.php"
                               title="Handball : Montpellier avec Faustin et Richardson face à Tremblay"
                               data-xiti-action="1,::coldroite::endirect::article4,N">Handball : Montpellier avec Faustin et Richardson face à Tremblay</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h24</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/montpellier-on-sest-retrouve-par-necessite-de-sevader-des-urgences,4864508.php"
                               title="Montpellier : &quot;On s’est retrouvé par nécessité de s’évader des urgences&quot;"
                               data-xiti-action="1,::coldroite::endirect::article5,N">Montpellier : &quot;On s’est retrouvé par nécessité de s’évader des urgences&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h21</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/de-fideles-lecteurs-du-biterrois-ont-assite-au-tirage-du-journal,4864511.php"
                               title="De fidèles lecteurs du Biterrois ont assité au tirage du journal"
                               data-xiti-action="1,::coldroite::endirect::article6,N">De fidèles lecteurs du Biterrois ont assité au tirage du journal</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h19</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/beziers-le-salon-de-lautomobile-officiellement-lance,4864478.php"
                               title="Béziers : le salon de l&#039;automobile officiellement lancé"
                               data-xiti-action="1,::coldroite::endirect::article7,N">Béziers : le salon de l&#039;automobile officiellement lancé</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h01</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/avignon-manifestez-pour-la-marche-pour-le-climat-plutot-que-le-17-novembre,4864334.php"
                               title="Avignon : &quot;Manifestez pour la marche pour le climat plutôt que le 17 novembre !&quot;"
                               data-xiti-action="1,::coldroite::endirect::article8,N">Avignon : &quot;Manifestez pour la marche pour le climat plutôt que le 17 novembre !&quot;</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-2" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h00</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/montpellier-les-mediatheques-tirent-leur-epingle-du-jeu,4864448.php"
                               title="Montpellier :  les médiathèques tirent leur épingle du jeu"
                               data-xiti-action="1,::coldroite::endirect::article9,N">Montpellier :  les médiathèques tirent leur épingle du jeu</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h51</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/le-matador-juan-leal-2019-sera-la-temporada-la-plus-importante-de-ma-carriere,4864403.php"
                               title="Le matador Juan Leal : &quot;2019 sera la temporada la plus importante de ma carrière&quot;"
                               data-xiti-action="1,::coldroite::endirect::article10,N">Le matador Juan Leal : &quot;2019 sera la temporada la plus importante de ma carrière&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h44</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/beziers-les-confidences-de-lenni-kim-avant-son-concert,4864479.php"
                               title="Béziers : les confidences du chanteur Lenni-Kim avant son concert"
                               data-xiti-action="1,::coldroite::endirect::article11,N">Béziers : les confidences du chanteur Lenni-Kim avant son concert</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h39</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/battle-of-the-year-a-limage-de-montpellier-transpirant-le-hip-hop,4864445.php"
                               title="Battle of the year : à l’image de Montpellier, transpirant le hip-hop"
                               data-xiti-action="1,::coldroite::endirect::article12,N">Battle of the year : à l’image de Montpellier, transpirant le hip-hop</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h28</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/beziers-la-pelouse-du-stade-de-la-mediterranee-souffre-mais-tient-bon,4864393.php"
                               title="Béziers : la pelouse du stade de la Méditerranée souffre mais tient bon"
                               data-xiti-action="1,::coldroite::endirect::article13,N">Béziers : la pelouse du stade de la Méditerranée souffre mais tient bon</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h22</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/mejannes-le-clap-les-inkorrigibles-invitent-a-venir-au-concours-de-chant-en-gilet-jaune,4864460.php"
                               title="Méjannes-le-Clap : les Inkorrigibles invitent à venir au concours de chant... en gilet jaune !"
                               data-xiti-action="1,::coldroite::endirect::article14,N">Méjannes-le-Clap : les Inkorrigibles invitent à venir au concours de chant... en gilet jaune !</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h16</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/bus-de-linondation-prets-pour-lembarquement-sur-le-bassin-de-thau,4864242.php"
                               title="“Bus de l’inondation” : prêts pour l’embarquement sur le bassin de Thau !"
                               data-xiti-action="1,::coldroite::endirect::article15,N">“Bus de l’inondation” : prêts pour l’embarquement sur le bassin de Thau !</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h08</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/lozere-jaune-couleur-de-la-colere,4863861.php"
                               title="Lozère :jaune, couleur de la colère"
                               data-xiti-action="1,::coldroite::endirect::article16,N">Lozère :jaune, couleur de la colère</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-3" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h52</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/inondations-dans-laude-reprise-de-la-circulation-des-trains-entre-narbonne-et-carcassonne,4864447.php"
                               title="Inondations dans l&#039;Aude : reprise de la circulation des trains entre Narbonne et Carcassonne"
                               data-xiti-action="1,::coldroite::endirect::article17,N">Inondations dans l&#039;Aude : reprise de la circulation des trains entre Narbonne et Carcassonne</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h04</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/voile-thomson-echoue-de-pavant-poursuit-son-chemin-sur-la-route-du-rhum,4864395.php"
                               title="Voile : Thomson échoué, De Pavant poursuit son chemin sur la Route du Rhum"
                               data-xiti-action="1,::coldroite::endirect::article18,N">Voile : Thomson échoué, De Pavant poursuit son chemin sur la Route du Rhum</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h03</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/beziers-daniel-guichard-interprete-son-tube-la-tendresse-en-repetition,4864378.php"
                               title="Béziers : Daniel Guichard interprète son tube La Tendresse en répétition"
                               data-xiti-action="1,::coldroite::endirect::article19,N">Béziers : Daniel Guichard interprète son tube La Tendresse en répétition</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h03</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/alexia-arnault-miss-ales-il-faut-se-lancer-ne-pas-hesiter,4864311.php"
                               title="Alexia Arnault, Miss Alès : &quot;Il faut se lancer, ne pas hésiter&quot;"
                               data-xiti-action="1,::coldroite::endirect::article20,N">Alexia Arnault, Miss Alès : &quot;Il faut se lancer, ne pas hésiter&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h55</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/ecusson-pour-les-commercants-de-nimes-lurgence-est-toujours-la,4864291.php"
                               title="Écusson : pour les commerçants de Nîmes, &quot;l’urgence est toujours là&quot;"
                               data-xiti-action="1,::coldroite::endirect::article21,N">Écusson : pour les commerçants de Nîmes, &quot;l’urgence est toujours là&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h40</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/sete-le-camp-de-roms-sest-vide-peu-a-peu,4864388.php"
                               title="Sète : le camp de roms s&#039;est vidé peu à peu"
                               data-xiti-action="1,::coldroite::endirect::article22,N">Sète : le camp de roms s&#039;est vidé peu à peu</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h33</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/conseil-regional-une-minute-de-silence-en-hommage-aux-victimes-des-inondations-de-laude,4864375.php"
                               title="Conseil régional : les élus Rassemblement National enfilent des gilets jaunes"
                               data-xiti-action="1,::coldroite::endirect::article23,N">Conseil régional : les élus Rassemblement National enfilent des gilets jaunes</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h31</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/avignon-ados-vs-parents-mode-demploi-une-comedie-pour-toute-la-famille,4862746.php"
                               title="Avignon : &quot;Ados VS parents mode d&#039;emploi&quot; une comédie pour toute la famille"
                               data-xiti-action="1,::coldroite::endirect::article24,N">Avignon : &quot;Ados VS parents mode d&#039;emploi&quot; une comédie pour toute la famille</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-4" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h30</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/salon-du-littoral-de-midi-libre-debat-sur-les-energies-de-demain,4863666.php"
                               title="Salon du littoral de Midi Libre : débat sur les énergies de demain"
                               data-xiti-action="1,::coldroite::endirect::article25,N">Salon du littoral de Midi Libre : débat sur les énergies de demain</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h27</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/pedophilie-dans-leglise-la-resistance-vient-des-eveques-declare-laveyronnais-olivier-savignac,4864312.php"
                               title="Pédophilie dans l&#039;Église : &quot;La résistance vient des évêques&quot; déclare l&#039;Aveyronnais Olivier Savignac"
                               data-xiti-action="1,::coldroite::endirect::article26,N">Pédophilie dans l&#039;Église : &quot;La résistance vient des évêques&quot; déclare l&#039;Aveyronnais Olivier Savignac</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h18</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/gilets-jaunes-que-risque-t-on-en-manifestant-le-samedi-17-novembre,4864328.php"
                               title="Gilets jaunes : que risque-t-on en manifestant le samedi 17 novembre ?"
                               data-xiti-action="1,::coldroite::endirect::article27,N">Gilets jaunes : que risque-t-on en manifestant le samedi 17 novembre ?</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">10h57</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/avignon-le-plasticien-et-poete-raoul-hebreard-expose-au-chene-noir,4864336.php"
                               title="Avignon : le plasticien et poète, Raoul Hebréard expose au Chêne noir"
                               data-xiti-action="1,::coldroite::endirect::article28,N">Avignon : le plasticien et poète, Raoul Hebréard expose au Chêne noir</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">10h54</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/volley-ball-les-beziers-angels-motivees-avant-d-aller-defier-parissaint-cloud,4864326.php"
                               title="Volley-ball : les Béziers Angels motivées avant d&#039; aller défier Paris/Saint-Cloud"
                               data-xiti-action="1,::coldroite::endirect::article29,N">Volley-ball : les Béziers Angels motivées avant d&#039; aller défier Paris/Saint-Cloud</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">10h52</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/bassin-dales-des-annulations-et-fermetures-prevues-avec-le-mouvement-des-gilets-jaunes,4864305.php"
                               title="Gilets jaunes : une quinzaine de commerces fermés à Saint-Ambroix et autres annulations en Cévennes"
                               data-xiti-action="1,::coldroite::endirect::article30,N">Gilets jaunes : une quinzaine de commerces fermés à Saint-Ambroix et autres annulations en Cévennes</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">10h48</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/lodeve-un-bel-hommage-rendu-a-marie-christine-bousquet,4864287.php"
                               title="Lodève  : Un bel hommage rendu à Marie-Christine Bousquet"
                               data-xiti-action="1,::coldroite::endirect::article31,N">Lodève  : Un bel hommage rendu à Marie-Christine Bousquet</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">10h39</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/a-beziers-les-groupes-automobiles-se-regroupent,4864295.php"
                               title="À Béziers, les groupes automobiles se regroupent"
                               data-xiti-action="1,::coldroite::endirect::article32,N">À Béziers, les groupes automobiles se regroupent</a></span>
                    </li>
                            </ul>
        
                    <div class="center-align">
                <span class="sidebar-direct-pager is-current" rel="js-pager" id="1">1</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="2">2</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="3">3</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="4">4</span>
            </div>
            </div>
</div>
<!-- /BL -->
<!-- BL Bloc DFP Droite Haute de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [droite_haute] -->
<div data-sticky data-sticky-ratio="2">
    <div rel="js-pushpin-droite_haute">
        <div id="pub_dfp_droite_haute"
             class="pub mod-droite_haute center-align "
             data-dfp-mobile="pub_dfp_mobile_droite_haute">
                                                        </div>
    </div>
</div><!-- /BL -->
<!-- BL Bloc Newspaper de type imm -->
<!-- BL in -->
<div class="sidebar-item sidebar-newspaper" rel="js-pushpin-newspaper" data-sticky data-sticky-ratio="2">
    <div class="sidebar-newspaper-container">
        <div class="sidebar-newspaper-daily">
            <span class="sidebar-newspaper-date">Journal du 16 novembre</span>
            <a href="https://profil.midilibre.fr/telechargement/#xtatc=INT-102-[col_droite_Une_Edition]"
               data-xiti-action="1,home::coldroite::abonnement::une,A">
                <img src="https://static.milibris.com/thumbnail/title/d64bc564-bc73-4832-a52d-8d58c5c35b2a/front/catalog-cover.png" class="responsive-img">
            </a>
        </div>
        <a class="sidebar-newspaper-edition waves-effect waves-light btn"
           href="https://abonnement.midilibre.fr/site/midilibrev2/default/fr/abonnement/kiosque.html#xtatc=INT-102-[col_droite_acheterEdition]"
           data-xiti-action="1,home::coldroite::abonnement::acheter,A">
            <i class="icon-newspaper"></i><span data-premium-text="Acheter une édition">Acheter le journal</span>
        </a>
        <a class="sidebar-newspaper-shop waves-effect waves-light btn"
           href="https://abonnement.midilibre.fr/site/midilibrev2/default/fr/abonnement/boutique.html#xtatc=INT-103-[col_droite_Boutique]"
           data-xiti-action="1,home::coldroite::abonnement::boutique,A">
            <i class="icon-shopping-cart"></i>Accès boutique "hors série"
        </a>
        <a class="sidebar-newspaper-archives waves-effect waves-light btn"
           href="/archives-journal/#xtatc=INT-104-[col_droite_Archives]"
           data-xiti-action="1,home::coldroite::abonnement::archives,A">
            <i class="icon-inbox"></i>Archives Journal
        </a>

        <a class="btn mod-icon-before waves-effect waves-light"
           href="http://passclub.midilibre.fr/#xtatc=INT-100-[col_droite_voirClubabo]"
           data-xiti-action="1,home::coldroite::abonnement::avantages,A">
            <i class="btn-icon icon-credit-card"></i>Les avantages du club <img src="/img/icons/passclub.png" class="sidebar-newspaper-img-passclub">
        </a>
        <a class="btn mod-icon-before waves-effect waves-light"
           href="https://abonnement.midilibre.fr/#xtatc=INT-101-[col_droite_sabonner]"
           data-subscriber-href="https://profil.midilibre.fr/telechargement/"
           data-xiti-action="1,home::coldroite::abonnement::sabonner,A">
            <span class="btn-icon icon-crown"></span>
            </span>
            <div data-subscriber-text="Lire mon journal">S'abonner à partir de 1€</div>
        </a>
        <div id="newspaper-reconciliation" class="sidebar-newspaper-footer">
            Abonné papier ?
            <a href="https://profil.midilibre.fr/reconciliation/#xtatc=INT-105-[col_droite_activezAcces]"
               data-xiti-action="1,home::coldroite::abonnement::activeraccès,A">
                Activez votre accès
            </a>
        </div>
    </div>
</div>

<!-- /BL -->
<!-- BL Bloc Newsletter de type imm -->
<!-- BL in -->
<div class="sidebar-item sidebar-social" rel="js-pushpin-newsletter">
    <div class="sidebar-title">Suivez-nous</div>
    <div class="block">
        <ul class="sidebar-social-icons social-icons mod-round">
            <li class="social-icons-icon">
                <a href="https://www.facebook.com/midilibre/" target="_blank"
                   data-xiti-action="1,home::coldroite::newsletter::facebook,A"
                   class="icon-facebook"></a>
            </li>
            <li class="social-icons-icon">
                <a href="https://twitter.com/Midilibre" target="_blank"
                   data-xiti-action="1,home::coldroite::newsletter::twitter,A"
                   class="icon-twitter"></a>
            </li>
                            <li class="social-icons-icon">
                    <a href="https://plus.google.com/115764348922722060983" class="icon-google"></a>
                </li>
                        <li class="social-icons-icon">
                <a href="https://www.midilibre.fr/rss.xml" target="_blank"
                   data-xiti-action="1,home::coldroite::newsletter::rss,A"
                   class="icon-rss"></a>
            </li>
                            <li class="social-icons-icon">
                    <a href="/apps/"
                       data-xiti-action="1,home::coldroite::newsletter::application,A"
                       class="icon-phone"></a>
                </li>
                    </ul>
        <div class="form-newsletter">
            <label class="u-small-title">Inscription à la newsletter</label>
            <form action="https://profil.midilibre.fr" method="post">
                <input type="email" name="prefillEmail" placeholder="Votre email..." required>
                <div class="row">
                    <input type="submit" value="S'inscrire" class="btn col s8 offset-s2"
                           data-xiti-action="1,home::coldroite::newsletter::inscription,A">
                </div>
            </form>
        </div>
    </div>
</div>

<!-- /BL -->
<!-- BL Bloc DFP x50 de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [x50] -->
<div >
    <div rel="js-pushpin-x50">
        <div id="pub_dfp_x50"
             class="pub mod-x50 center-align "
             data-dfp-mobile="">
                                                        </div>
    </div>
</div><!-- /BL -->
<!-- BL Bloc En Direct Aussi dans l&#039;actu - MDL de type ext -->
<!-- BL in -->
<div class="sidebar-item sidebar-direct" rel="js-direct-num">
    <p class="sidebar-title">Aussi dans l&#039;actu</p>
    <div class="block">
                                                    <ul class="sidebar-direct-items" rel="js-page-1" >
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h12</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/bebe-du-coffre-huit-ans-de-prison-requis-contre-la-mere-de-serena,4864522.php"
                               title="Bébé du &quot;coffre&quot; : huit ans de prison requis contre la mère de Séréna"
                               data-xiti-action="1,::coldroite::endirect::article1,N">Bébé du &quot;coffre&quot; : huit ans de prison requis contre la mère de Séréna</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h58</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/perpetuite-pour-genocide-a-lencontre-de-deux-dirigeants-khmers-rouges-encore-vivants,4864506.php"
                               title="Perpétuité pour &quot;génocide&quot; à l&#039;encontre de deux dirigeants khmers rouges encore vivants"
                               data-xiti-action="1,::coldroite::endirect::article2,N">Perpétuité pour &quot;génocide&quot; à l&#039;encontre de deux dirigeants khmers rouges encore vivants</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">13h24</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/football-les-bleus-affrontent-les-pays-bas-a-rotterdam-ce-vendredi,4864201.php"
                               title="Football : les Bleus affrontent les Pays-Bas à Rotterdam ce vendredi"
                               data-xiti-action="1,::coldroite::endirect::article3,N">Football : les Bleus affrontent les Pays-Bas à Rotterdam ce vendredi</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h40</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/territoires-dinfos-cyril-viguier-recoit-brune-poirson,4864413.php"
                               title="Territoires d&#039;Infos : Cyril Viguier reçoit Brune Poirson"
                               data-xiti-action="1,::coldroite::endirect::article4,N">Territoires d&#039;Infos : Cyril Viguier reçoit Brune Poirson</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h58</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/il-se-reveille-lors-de-sa-propre-veillee-funebre-the-ou-cafe-la-faute-aux-genes-cest-la-pause-midi,4864281.php"
                               title="Il se réveille lors de sa propre veillée funèbre, Clark Gable éternel, ... : c&#039;est la pause Midi"
                               data-xiti-action="1,::coldroite::endirect::article5,N">Il se réveille lors de sa propre veillée funèbre, Clark Gable éternel, ... : c&#039;est la pause Midi</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h25</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/une-adolescente-qui-prenait-un-bain-meurt-electrocute-par-son-telephone,4864346.php"
                               title="Une adolescente qui prenait un bain meurt électrocutée par son téléphone"
                               data-xiti-action="1,::coldroite::endirect::article6,N">Une adolescente qui prenait un bain meurt électrocutée par son téléphone</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h52</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/grogne-des-gilets-jaunes-des-francais-trop-dependants-de-leur-vehicule,4863641.php"
                               title="Grogne des &quot;gilets jaunes&quot; : des Français trop dépendants de leur véhicule"
                               data-xiti-action="1,::coldroite::endirect::article7,N">Grogne des &quot;gilets jaunes&quot; : des Français trop dépendants de leur véhicule</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h48</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/the-game-awards-2018-red-dead-redemption-2-et-god-of-war-menent-les-nominations,4862693.php"
                               title="The Game Awards 2018 : &quot;Red Dead Redemption 2&quot; et &quot;God of War&quot; mènent les nominations"
                               data-xiti-action="1,::coldroite::endirect::article8,N">The Game Awards 2018 : &quot;Red Dead Redemption 2&quot; et &quot;God of War&quot; mènent les nominations</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-2" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h45</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/lets-go-pikachu-et-lets-go-evoli-surfent-sur-le-succes-de-pokemon-go,4863075.php"
                               title="&quot;Let&#039;s Go, Pikachu&quot; et &quot;Let&#039;s Go, Evoli!&quot; surfent sur le succès de Pokémon Go"
                               data-xiti-action="1,::coldroite::endirect::article9,N">&quot;Let&#039;s Go, Pikachu&quot; et &quot;Let&#039;s Go, Evoli!&quot; surfent sur le succès de Pokémon Go</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h43</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/le-sud-de-la-france-toujours-plus-plebiscite-par-les-francais-pour-travailler,4862696.php"
                               title="Le Sud de la France toujours plus plébiscité par les français pour travailler"
                               data-xiti-action="1,::coldroite::endirect::article10,N">Le Sud de la France toujours plus plébiscité par les français pour travailler</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h34</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/16/coffre-du-bebe-la-mere-de-serena-un-cas-exceptionnel-pour-les-psychiatres,4863846.php"
                               title="Bébé du &quot;coffre&quot; : la mère de Séréna, un cas exceptionnel pour les psychiatres"
                               data-xiti-action="1,::coldroite::endirect::article11,N">Bébé du &quot;coffre&quot; : la mère de Séréna, un cas exceptionnel pour les psychiatres</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h33</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/zayn-sassocie-avec-nicki-minaj-sur-no-candle-no-light,4863004.php"
                               title="Zayn s&#039;associe avec Nicki Minaj sur &quot;No Candle No Light&quot;"
                               data-xiti-action="1,::coldroite::endirect::article12,N">Zayn s&#039;associe avec Nicki Minaj sur &quot;No Candle No Light&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">09h30</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/soulever-de-la-fonte-moins-dune-heure-par-semaine-pourrait-reduire-le-risque-dattaque,4862535.php"
                               title="Soulever de la fonte moins d&#039;une heure par semaine pourrait réduire le risque d&#039;attaque"
                               data-xiti-action="1,::coldroite::endirect::article13,N">Soulever de la fonte moins d&#039;une heure par semaine pourrait réduire le risque d&#039;attaque</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">23h31</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/inondations-a-barcelone-en-alerte-rouge-jeudi-soir,4863616.php"
                               title="Inondations à Barcelone en alerte rouge jeudi soir"
                               data-xiti-action="1,::coldroite::endirect::article14,N">Inondations à Barcelone en alerte rouge jeudi soir</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">20h11</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/tariq-ramadan-sort-de-prison,4863199.php"
                               title="Tariq Ramadan sort de prison"
                               data-xiti-action="1,::coldroite::endirect::article15,N">Tariq Ramadan sort de prison</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">17h23</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/le-goncourt-des-lyceens-a-david-diop-et-frere-dame-dans-lenfer-des-tranchees,4862960.php"
                               title="Le Goncourt des lycéens à David Diop et &quot;Frère d&#039;âme&quot; dans l&#039;enfer des tranchées"
                               data-xiti-action="1,::coldroite::endirect::article16,N">Le Goncourt des lycéens à David Diop et &quot;Frère d&#039;âme&quot; dans l&#039;enfer des tranchées</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-3" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">16h52</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/florence-trebuchon-denonce-la-pollution-atmospherique-tue-lentement,4862865.php"
                               title="Florence Trebuchon, allergologue : &quot;Je me bats pour que le diesel soit plus cher !&quot;"
                               data-xiti-action="1,::coldroite::endirect::article17,N">Florence Trebuchon, allergologue : &quot;Je me bats pour que le diesel soit plus cher !&quot;</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">16h49</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/ce-russe-avait-tranche-les-mains-de-sa-femme-a-la-hache-14-ans-de-prison,4862915.php"
                               title="Ce Russe avait tranché les mains de sa femme à la hache : 14 ans de prison"
                               data-xiti-action="1,::coldroite::endirect::article18,N">Ce Russe avait tranché les mains de sa femme à la hache : 14 ans de prison</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">16h13</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/une-hotesse-de-lair-allaite-le-bebe-dune-passagere-en-manque-de-lait-en-poudre,4862798.php"
                               title="Une hôtesse de l&#039;air allaite le bébé d&#039;une passagère en manque de lait en poudre"
                               data-xiti-action="1,::coldroite::endirect::article19,N">Une hôtesse de l&#039;air allaite le bébé d&#039;une passagère en manque de lait en poudre</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h42</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/lantibioresistance-pourrait-devenir-lune-des-principales-causes-de-mortalite,4862639.php"
                               title="L’antibiorésistance pourrait devenir l’une des principales causes de mortalité"
                               data-xiti-action="1,::coldroite::endirect::article20,N">L’antibiorésistance pourrait devenir l’une des principales causes de mortalité</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h24</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/lex-secretaire-detat-georges-tron-acquitte-des-accusations-de-viols,4862789.php"
                               title="Accusé de viols, l&#039;ex-secrétaire d&#039;Etat Georges Tron acquitté"
                               data-xiti-action="1,::coldroite::endirect::article21,N">Accusé de viols, l&#039;ex-secrétaire d&#039;Etat Georges Tron acquitté</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h20</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/un-test-sanguin-pour-detecter-le-cancer,4862687.php"
                               title="Un test sanguin pour détecter le cancer"
                               data-xiti-action="1,::coldroite::endirect::article22,N">Un test sanguin pour détecter le cancer</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h17</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/incident-ribery-guillou-ribery-sexcuse-en-video-sur-le-site-du-bayern,4862785.php"
                               title="Incident avec un journaliste : Ribéry s&#039;excuse en vidéo sur le site du Bayern"
                               data-xiti-action="1,::coldroite::endirect::article23,N">Incident avec un journaliste : Ribéry s&#039;excuse en vidéo sur le site du Bayern</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h16</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/les-francais-plebiscitent-a-nouveau-le-petit-dejeuner,4862739.php"
                               title="Les Français plébiscitent à nouveau le petit-déjeuner"
                               data-xiti-action="1,::coldroite::endirect::article24,N">Les Français plébiscitent à nouveau le petit-déjeuner</a></span>
                    </li>
                            </ul>
                    <ul class="sidebar-direct-items" rel="js-page-4" style="display:none;">
                                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h03</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/14/champignons-comment-eviter-les-intoxications,4861089.php"
                               title="Champignons : comment éviter les intoxications ?"
                               data-xiti-action="1,::coldroite::endirect::article25,N">Champignons : comment éviter les intoxications ?</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">15h02</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/territoires-dinfos-cyril-viguier-recoit-mounir-mahjoubi,4862777.php"
                               title="Territoires d&#039;Infos : Cyril Viguier reçoit Mounir Mahjoubi"
                               data-xiti-action="1,::coldroite::endirect::article26,N">Territoires d&#039;Infos : Cyril Viguier reçoit Mounir Mahjoubi</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h52</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/13/menus-sante-les-vitamines-b-a-toutes-les-sauces,4858776.php"
                               title="Menus Santé : les vitamines B, à toutes les sauces"
                               data-xiti-action="1,::coldroite::endirect::article27,N">Menus Santé : les vitamines B, à toutes les sauces</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h31</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/lhorrible-et-acariatre-harriet-oleson-de-la-petite-maison-dans-la-prairie-est-decedee,4862703.php"
                               title="L&#039;horrible et acariâtre Harriet Oleson de &quot;La Petite maison dans la prairie&quot; est décédée"
                               data-xiti-action="1,::coldroite::endirect::article28,N">L&#039;horrible et acariâtre Harriet Oleson de &quot;La Petite maison dans la prairie&quot; est décédée</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">14h30</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/un-chasseur-de-88-ans-agresse-lors-dune-partie-de-chasse,4862742.php"
                               title="Un chasseur de 88 ans agressé lors d&#039;une partie de chasse"
                               data-xiti-action="1,::coldroite::endirect::article29,N">Un chasseur de 88 ans agressé lors d&#039;une partie de chasse</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h05</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/14/homosexualite-et-don-de-sang-pas-plus-de-risques-de-vih,4861229.php"
                               title="Homosexualité et don de sang : pas plus de risques de VIH"
                               data-xiti-action="1,::coldroite::endirect::article30,N">Homosexualité et don de sang : pas plus de risques de VIH</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">12h04</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/la-pause-midi-un-ado-rate-son-ferry-part-a-la-nage-et-passe-une-nuit-dans-locean,4862000.php"
                               title="La Pause Midi : un ado rate son ferry, part à la nage et passe une nuit dans l&#039;océan"
                               data-xiti-action="1,::coldroite::endirect::article31,N">La Pause Midi : un ado rate son ferry, part à la nage et passe une nuit dans l&#039;océan</a></span>
                    </li>
                                                        <li class="sidebar-direct-item ">
                                                    <span class="sidebar-direct-time">11h27</span>
                                                <span class="sidebar-direct-title">
                            <a href="/2018/11/15/une-mesure-anti-fessee-bientot-examinee-par-les-deputes,4862594.php"
                               title="Une mesure anti-fessée bientôt examinée par les députés"
                               data-xiti-action="1,::coldroite::endirect::article32,N">Une mesure anti-fessée bientôt examinée par les députés</a></span>
                    </li>
                            </ul>
        
                    <div class="center-align">
                <span class="sidebar-direct-pager is-current" rel="js-pager" id="1">1</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="2">2</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="3">3</span>
                <span class="sidebar-direct-pager" rel="js-pager" id="4">4</span>
            </div>
            </div>
</div>
<!-- /BL -->
<!-- BL Bloc Tops de type imm -->
<!-- BL in -->
<div class="sidebar-item sidebar-tops">
    <p class="sidebar-title">Les tops de la semaine</p>
    <ul class="tabs row">
        <li class="tab col s4"><a href="#top-lus" class="active" data-xiti-action="1,home::coldroite::tops-lus::onglet,A"><i class="icon-view"></i>Lus</a></li>
        <li class="tab col s4"><a href="#top-comments" data-xiti-action="1,home::coldroite::tops-commentes::onglet,A"><i class="icon-comment"></i>Commentés</a></li>
            </ul>
    <div id="top-lus">
        <ul class="sidebar-tops-items">
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">1</span>
            <a href="/2018/11/14/ou-auront-lieu-les-blocages-des-gilets-jaunes-samedi-17-novembre,4860206.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-lus::article,N">Où auront lieu les blocages des "gilets jaunes" ce samedi  ?</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">2</span>
            <a href="/2018/11/09/herault-une-mini-tornade-traverse-le-cres-des-arbres-et-tuiles-arraches,4829262.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-lus::article,N">Hérault : une mini-tornade traverse Le Crès et Lattes, arbres, tuiles et vérandas arrachés</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">3</span>
            <a href="/2018/11/14/gilets-jaunes-la-carte-des-operations-de-blocage-en-occitanie-ce-samedi,4861274.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-lus::article,N">Gilets jaunes : la carte des blocages en Occitanie remise à jour en temps réel</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">4</span>
            <a href="/2018/11/12/la-mere-et-la-soeur-du-cycliste-tue-par-un-chasseur-il-meritait-de-se-faire-abattre,4832564.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-lus::article,N">La mère et la soeur du cycliste tué par un chasseur se réjouissent de sa mort</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">5</span>
            <a href="/2018/11/13/agde-un-homme-atteint-de-plusieurs-balles-ce-mardi-matin-lors-dune-fusillade,4858195.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-lus::article,N">Agde : un patron de boîte de nuit atteint de plusieurs balles ce mardi matin lors d'une fusillade</a>
        </li>
    </ul>
    </div>
    <div id="top-comments">
        <ul class="sidebar-tops-items">
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">1</span>
            <a href="/2018/11/13/gilets-jaunes-le-gouvernement-nacceptera-aucun-blocage-total-le-17-novembre-affirme-castaner,4858231.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-commentes::article,N">"Gilets jaunes" : "Partout où il y aura un blocage le 17 novembre, nous interviendrons", affirme Castaner</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">2</span>
            <a href="/2018/11/12/le-train-de-vie-de-luxe-des-dirigeants-de-force-ouvriere-devoile,4832707.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-commentes::article,N">Des dirigeants de Force Ouvrière épinglés pour leur train de vie de luxe</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">3</span>
            <a href="/2018/11/14/gilets-jaunes-la-carte-des-operations-de-blocage-en-occitanie-ce-samedi,4861274.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-commentes::article,N">Gilets jaunes : la carte des blocages en Occitanie remise à jour en temps réel</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">4</span>
            <a href="/2018/11/14/carburant-edouard-philippe-annonce-les-mesures-daide-decidees-par-le-gouvernement,4859353.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-commentes::article,N">Carburant : Édouard Philippe a dévoilé les mesures d'aide décidées par le gouvernement</a>
        </li>
            <li class="sidebar-tops-item">
            <span class="sidebar-tops-number">5</span>
            <a href="/2018/11/14/montpellier-une-proposition-de-loi-pour-la-suppression-des-tickets-de-caisse,4860938.php" class="sidebar-tops-title" data-xiti-action="1,home::coldroite::tops-commentes::article,N">Montpellier : une proposition de loi pour la suppression des tickets de caisse</a>
        </li>
    </ul>
    </div>
    <div id="top-share">
        <ul class="sidebar-tops-items">
    </ul>
    </div>
</div>

<!-- /BL -->
<!-- BL Bloc Archives de type imm -->
<!-- BL in -->
<div class="sidebar-item sidebar-archive">
    <div class="sidebar-title">Archives</div>
    <div class="block u-clearfix">
        <div class="row">
            <ul class="u-clearfix">
                                                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2011"
                           data-xiti-action="1,home::coldroite::archives::2011,N"><i class="icon-triangle-right"></i>2011</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2012"
                           data-xiti-action="1,home::coldroite::archives::2012,N"><i class="icon-triangle-right"></i>2012</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2013"
                           data-xiti-action="1,home::coldroite::archives::2013,N"><i class="icon-triangle-right"></i>2013</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2014"
                           data-xiti-action="1,home::coldroite::archives::2014,N"><i class="icon-triangle-right"></i>2014</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2015"
                           data-xiti-action="1,home::coldroite::archives::2015,N"><i class="icon-triangle-right"></i>2015</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2016"
                           data-xiti-action="1,home::coldroite::archives::2016,N"><i class="icon-triangle-right"></i>2016</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2017"
                           data-xiti-action="1,home::coldroite::archives::2017,N"><i class="icon-triangle-right"></i>2017</a>
                    </li>
                                    <li class="col s4">
                        <a href="https://www.midilibre.fr/articles/2018"
                           data-xiti-action="1,home::coldroite::archives::2018,N"><i class="icon-triangle-right"></i>2018</a>
                    </li>
                            </ul>
        </div>
            </div>
        <a href="https://www.midilibre.fr/articles/2018/11/16"
       class="sidebar-footer"
       data-xiti-action="1,home::coldroite::archives::articlesdujour,N">Voir tous les articles du jour</a>
    </div>

<!-- /BL -->
<!-- BL Bloc Purl 1 de type ext -->
<!-- BL in -->
<!-- Pub Purl Position [bloc1] -->
<div class="pub mod-purl">
            <div id="pub_dfp_purl1"
             class="purl1 center-align"
             data-dfp-mobile="">
        </div>
        <div id="pub_dfp_purl2"
             class="purl2 center-align"
             data-dfp-mobile="">
        </div>
        <div id="pub_dfp_purl3"
             class="purl3 center-align"
             data-dfp-mobile="">
        </div>
    </div><!-- /BL -->
<!-- BL Bloc Météo de type imm -->
<!-- BL in -->
    <div class="sidebar-item sidebar-meteo">
        <div class="sidebar-title">Météo</div>
        <div class="block">
            <div class="row valign-wrapper u-mb-15">
                <div class="col s4 center-align">
                    <img src="/img/meteo/temps/100.png" class="responsive-img" rel="js-weather-image-0" title="Clair ou peu nuageux">
                    <span rel="js-weather-temps-0">13° / 16°</span>
                </div>
                <div class="col s8">
                                            <div class="right-align u-mb-15">
                            <a href="https://profil.midilibre.fr/account/"
                               class="grey-text"
                               rel="js-weather-change"
                               data-xiti-action="1,home::coldroite::meteo::changeville,A">Changer de ville</a>
                        </div>
                                        <div class="sidebar-meteo-city" rel="js-weather-town">Montpellier</div>
                    <span rel="js-weather-label-0">Clair ou peu nuageux</span>
                </div>
            </div>
            <div class="row valign-wrapper">
                <div class="col s6 center-align">
                    <div class="col s5"><img src="/img/meteo/temps/9.png" class="responsive-img" rel="js-weather-image-1" title="Pluie faible par place"></div>
                    <div class="col s7">
                        <div>Samedi</div>
                        <div class="sidebar-meteo-degrees" rel="js-weather-temps-1">14° / 12°</div>
                    </div>
                </div>
                <div class="col s6 center-align">
                    <div class="col s5"><img src="/img/meteo/temps/104.png" class="responsive-img" rel="js-weather-image-2" title="Ciel de traîne"></div>
                    <div class="col s7">
                        <div>Dimanche</div>
                        <div class="sidebar-meteo-degrees" rel="js-weather-temps-2">8° / 13°</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- /BL -->
<!-- BL Bloc Horoscope de type imm -->
<!-- BL in -->
    <div class="sidebar-item sidebar-horoscope" rel="js-horoscope">
        <div class="sidebar-title">Horoscope</div>
        <div class="block">
            <div class="row u-same-height-container">
                                    <div class="col s4 center u-same-height-container">
                        <div class="sidebar-horoscope-signe" rel="js-signe">
                            <div class="sidebar-horoscope-circle">
                                <img src="/img/horoscope/taureau.png">
                            </div>
                            Taureau
                        </div>
                    </div>
                    <div class="col s8">
                        <div class="sidebar-horoscope-previsions" rel="js-previsions">
                            <span class="icon-left-quote"></span>
                            Vous vivrez une belle journée de tendresse et de complicité.
                        </div>
                        <div class="sidebar-horoscope-footer right-align">
                            <a href="/services/horoscope/#taureau" rel="js-lien-signe">Lire la suite ...</a><br>
                            <a href="/services/horoscope/">Voir les autres signes <i class="icon-arrow-right"></i></a>
                        </div>
                    </div>
                            </div>
        </div>
    </div>

<!-- /BL -->
<!-- BL Bloc Quizz de type imm -->
<!-- BL in -->
<div class="sidebar-item">
    <div class="sidebar-title">Jeux & invitations</div>
    <div>
        <a href="/jeux/">
            <img src="/img/rubrique-quiz.jpg" class="responsive-img">
        </a>
        <a href="/jeux/" class="sidebar-footer">Accédez à tous les jeux & invitations</a>
    </div>
</div>
<!-- /BL -->
<!-- BL Bloc DFP Droite Basse de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [droite_basse] -->
<div >
    <div rel="js-pushpin-droite_basse">
        <div id="pub_dfp_droite_basse"
             class="pub mod-droite_basse center-align "
             data-dfp-mobile="pub_dfp_mobile_droite_basse">
                                                        </div>
    </div>
</div><!-- /BL -->
<!-- BL Bloc programme TV - MDL de type html -->
<!-- BL in -->
<div class="sidebar-item">
 <div class="sidebar-title">Programme Tv</div>
 <div class="block">
 <a href="http://tvmag.midilibre.fr">
 <img width="100%" src="/img/logo-tv-mag.jpg">
 </a>
 </div>
</div>
<!-- /BL -->
<!-- BL Bloc Avocat de type imm -->
<!-- BL in -->
<div class="sidebar-item">
    <div class="sidebar-title">Midi libre & les avocats vous répondent</div>
    <div class="sidebar-avocat">
        <a href="/actu/rendez-vous-de-la-redaction/midi-libre-et-les-avocats-vous-repondent/">
            <img src="/img/rubrique-avocats.jpg" class="responsive-img">
        </a>
        <a href="/actu/rendez-vous-de-la-redaction/midi-libre-et-les-avocats-vous-repondent/" class="sidebar-footer">Accédez à toutes les réponses</a>
    </div>
</div>
<!-- /BL -->
<!-- BL Bloc personnalisé MDL de type html -->
<!-- BL in -->
<!--
<div class="sidebar-item">
 <div class="sidebar-title">Le JT</div>
 <div class="block">
 <a href="/actu/le-jt/">
 <img src="/img/visuel_via_occitanie.jpg" class="responsive-img">
 </a>
 </div>
</div>
-->
<!-- /BL -->

        </aside>
        <section class="subscription-block" rel="js-subscription-bloc">
    <p class="subscription-block-title">L'édition abonnés</p>
    <div class="subscription-block-content">
        <div class="row">
            <div class="subscription-block-subtitle col s12">Profitez des avantages exclusifs abonnés :</div>
            <div class="col s12 m5">
                <img src="/img/img_abo.png" class="subscription-block-mockup responsive-img">
            </div>
            <div class="col s12 m7">
                <p class="subscription-block-advantage"><i class="icon-crown mod-sub"></i>Accès réservé aux contenus premium site et appli</p>
                <p class="subscription-block-advantage"><i class="icon-timer"></i>Journal numérique disponible dès 6h00</p>
                <p class="subscription-block-advantage"><i class="icon-lock"></i>Abonnement dès 1€, sans engagement</p>
                <p class="subscription-block-advantage"><img src="/img/icons/passclub.png" class="img-pass-club">Avantages et privilèges du Club Abonnés &nbsp;<a
                            href="http://passclub.midilibre.fr/"
                            data-xiti-action="1,home::footer::abonnement::infoclubabonnes,N">(En
                        savoir plus)</a></p>
                <p class="subscription-block-advantage"><i class="icon-newspaper-light"></i>Accès 24h/24 à votre espace de gestion et de téléchargement</p>
            </div>
            <div class="col s12 center-align">
                <a href="https://abonnement.midilibre.fr/#xtatc=INT-2-[footer]" class="btn btn-abonnement mod-large"
                   data-xiti-action="1,home::footer::abonnement::sabonner,A">S'abonner à partir de 1€</a>
            </div>
            <div class="col s12 center-align">
                <div class="subscription-block-footer">Déjà abonné ? <a
                            href="https://profil.midilibre.fr/login/?SSO_Context=https%3A%2F%2Fwww.midilibre.fr"
                            data-xiti-action="1,home::footer::abonnement::seconnecter,A"
                            class="subscription-block-login">Se connecter</a></div>
            </div>
        </div>
    </div>
</section></div>
<!-- COL -->

<!-- BL Bloc DFP Bannière Basse de type ext -->
<!-- BL in -->
<!-- Pub DFP Position [banniere_basse] -->
<div >
    <div rel="js-pushpin-banniere_basse">
        <div id="pub_dfp_banniere_basse"
             class="pub mod-banniere_basse center-align "
             data-dfp-mobile="">
                                                        </div>
    </div>
</div><!-- /BL -->
<!-- BL Footer de type imm -->
<!-- BL in -->
<footer class="main-footer">
    <div class="grey">
        <div class="container">
            <div class="main-footer-top row">
                <div class="col l8 m8 s12 main-footer-social">
                    <div class="main-footer-social-title">Suivez-nous</div>
                    <ul class="main-footer-social-items social-icons mod-round mod-large">
                        <li class="social-icons-icon">
                            <a href="https://www.facebook.com/midilibre/"
                               data-xiti-action="1,home::footer::suiveznous::facebook,A"
                               class="icon-facebook"></a>
                        </li>
                        <li class="social-icons-icon">
                            <a href="https://twitter.com/Midilibre"
                               data-xiti-action="1,home::footer::suiveznous::twitter,A"
                               class="icon-twitter"></a>
                        </li>
                        <li class="social-icons-icon">
                            <a href="https://plus.google.com/115764348922722060983"
                               data-xiti-action="1,home::footer::suiveznous::google,A"
                               class="icon-google"></a>
                        </li>
                        <li class="social-icons-icon">
                            <a href="/apps/"
                               data-xiti-action="1,home::footer::suiveznous::application,A"
                               class="icon-phone"></a>
                        </li>
                    </ul>
                </div>
                <div class="col l4 m4 s12">
                    <span class="main-footer-title">Newsletter</span>
                    <form class="u-clearfix" action="https://profil.midilibre.fr" method="post">
                        <input name="prefillEmail" type="email" placeholder="Votre email...">
                        <input type="submit" value="Ok" class="btn"
                               data-xiti-action="1,home::footer::newsletter::inscription,A">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="grey darken-1">
        <div class="container">
            <div class="main-footer-middle">
                <div class="row">
                    <div class="col m3 s12">
                        <div class="main-footer-title">Pratique</div>
                        <div><a href="/videos/" target="_blank"
                                data-xiti-action="1,home::footer::pratique::video,N">Vidéos</a>
                        </div>
                        <div><a href="https://carnet.midilibre.fr/" target="_blank"
                                data-xiti-action="1,home::footer::pratique::carnet,N">Carnets</a></div>
                        <div><a href="http://tvmag.midilibre.fr/" target="_blank"
                                data-xiti-action="1,home::footer::pratique::programmetv,N">Programme tv</a></div>
                        <div><a href="/jeux/"
                                data-xiti-action="1,home::footer::pratique::jeux,N">Jeux</a></div>
                        <div><a href="/services/horoscope/"
                                data-xiti-action="1,home::footer::pratique::horoscope,N">Horoscope</a></div>
                        <div><a href="/services/bourse/"
                                data-xiti-action="1,home::footer::pratique::bourse,N">Bourse</a></div>
                    </div>
                    <div class="col m3 s12">
                        <div class="main-footer-title">Journal et Services</div>
                        <div>
                            <a href="https://abonnement.midilibre.fr/" target="_blank"
                                data-xiti-action="1,home::footer::journaletservices::sabonner,N">S'abonner</a>
                        </div>
                        <div>
                            <a href="https://profil.midilibre.fr/account/" target="_blank"
                                data-xiti-action="1,home::footer::journaletservices::gererabonnement,N">Gérer mon abonnement</a>
                        </div>
                        <div>
                            <a href="https://www.midilibre.fr/page/avantages-abonnes"
                               data-xiti-action="1,home::footer::journaletservices::editionabonnes,N">Avantages abonnés</a>
                        </div>
                        <div>
                            <a href="/archives-journal/" target="_blank"
                               data-xiti-action="1,home::footer::journaletservices::archives,N">Archives</a>
                        </div>
                        <div>
                            <a href="https://abonnement.midilibre.fr/site/midilibrev2/default/fr/abonnement/boutique.html?catref=coup_de_coeur" target="_blank"
                               data-xiti-action="1,home::footer::journaletservices::collections,N">Collections</a>
                        </div>
                        <div>
                            <a href="/apps/" target="_blank"
                               data-xiti-action="1,home::footer::journaletservices::application,N">Applications mobiles</a>
                        </div>
                    </div>
                    <div class="col m3 s12">
                        <div class="main-footer-title">Visitez aussi</div>
                        <div>
                            <a href="http://www.cnews.fr/" target="_blank"
                               data-xiti-action="1,home::footer::visitezaussi::cnews,N">Cnews matin</a>
                        </div>
                        <div>
                            <a href="http://www.midigourmand.com" target="_blank"
                               data-xiti-action="1,home::footer::visitezaussi::midigourmand,N">Midi gourmand</a>
                        </div>
                        <div>
                            <a href="http://www.midilibre-annonces.com/" target="_blank"
                               data-xiti-action="1,home::footer::visitezaussi::midilibreannonces,N">Midi Libre annonces</a>
                        </div>
                        <div>
                            <a href="https://www.lagencedecomm.fr/" target="_blank"
                               data-xiti-action="1,home::footer::visitezaussi::publicite,N">L'Agence</a>
                        </div>
                    </div>
                    <div class="col m3 s12">
                        <div class="main-footer-title">A propos</div>
                        <div>
                            <a href="/page/conditions-generales-utilisation" target="_blank"
                               data-xiti-action="1,home::footer::apropos::cgu,N">CGU</a>
                        </div>
                        <div>
                            <a href="/page/mentions-legales" target="_blank"
                               data-xiti-action="1,home::footer::apropos::mentionslegales,N">Mentions légales</a>
                        </div>
                        <div>
                            <a href="/page/contactez-nous" target="_blank"
                               data-xiti-action="1,home::footer::apropos::contact,N">Contact</a>
                        </div>
                        <div>
                            <a href="/rss.xml" target="_blank"
                               data-xiti-action="1,home::footer::apropos::rss,N">Rss</a>
                        </div>
                        <div>
                            <a href="http://visites.journaux-du-midi.com/" target="_blank"
                               data-xiti-action="1,home::footer::apropos::visiterlimprimerie,N">Visiter l'imprimerie</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="center-align">
                <a href="https://carnet.midilibre.fr/" target="_blank"
                   data-xiti-action="1,home::footer::carnet,N"
                   class="main-footer-uppercase">Carnets</a>
                <!--
                <a href="https://www.midilibre.fr/page/faq"
                   data-xiti-action="1,home::footer::modedemploi,N"
                   class="main-footer-uppercase">Mode d'emploi</a>
                -->
                <a href="https://www.midilibre.fr/page/mentions-legales"
                   data-xiti-action="1,home::footer::mentionslegales,N"
                   class="main-footer-uppercase">Mentions légales</a>
                <a href="https://www.midilibre.fr/page/charte-donnees-personnelles" rel="js-rgpd-policy"
                   data-xiti-action="1,home::footer::donneespersonnelles,N"
                   class="main-footer-uppercase">Données</a>
                <a href="https://www.midilibre.fr/page/charte-de-bonne-conduite"
                   data-xiti-action="1,home::footer::charte,N"
                   class="main-footer-uppercase">Charte</a>
                                                                      <a href="https://www.midilibre.fr/page/contactez-nous"
                   data-xiti-action="1,home::footer::contacteznous,N"
                   class="main-footer-uppercase">Contactez-nous</a>
                <a href="/plan-du-site/"
                   data-xiti-action="1,home::footer::plandusite,N"
                   class="main-footer-uppercase">Plan du site</a>
            </div>
        </div>
    </div>
    <div class="grey darken-3">
        <div class="container">
            <div class="main-footer-bottom">
                <p class="main-footer-site-name">
                    <a href="/">www.midilibre.fr</a> &#9400; 2018
                </p>
                <img src="/img/logos/mobile.png" alt="Logo Midi Libre"
                     class="main-footer-logo">
            </div>
        </div>
    </div>
</footer>
<!-- /BL -->

    </div>
    <div class="adBanner"></div>
<div class="modal mod-ad-modal" rel="ad-modal">
    <div class="modal-content container">
        <button class="modal-close icon-close" rel="ad-modal-close"></button>
        <p>Ahhhh... Votre navigateur utilise un bloqueur de pub...</p>
        <p>Pour accéder à l'article, rien de plus simple: Je désactive mon bloqueur de pub pour ce site uniquement (facile!)</p>
        <div class="row">
            <div class="col s12 m6">
                <button class="btn btn-block" rel="tuto-ad-modal-trigger">Comment désactiver adblock ?</button>
            </div>
            <div class="col s12 m6">
                <button class="btn btn-block" rel="ad-modal-close">Je n'y arrive pas</button>
            </div>
        </div>
    </div>
</div>
<div class="modal" rel="tuto-ad-modal">
    <div class="modal-header">
        <div class="modal-title">Comment désactiver votre bloqueur de publicité ?<i class="icon-close modal-close"></i></div>
    </div>
    <div class="modal-content container">
        <div class="row">
            <div class="col s12 m6">
                <h5 class="u-primary-color">Vous utilisez Adblock Plus</h5>
                <p>
                    Une fois sur midilibre.fr, cliquez sur l'icône
                    <span class="icon-abp"><span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span></span>
                    en haut à droite de votre navigateur puis cliquez sur "activité sur ce site".
                </p>
                <p>
                    Il vous suffit après de recharger votre page. Adblock Plus sera désactivé pour midilibre.fr uniquement.
                </p>
            </div>
            <div class="col s12 m6">
                <img src="/img/adblock.jpg" class="responsive-img">
            </div>
        </div>
        <h5 class="u-primary-color">Vous utilisez ghostery</h5>
        <p>
            Une fois sur midilibre.fr, cliquez sur l'icône
            <span class="icon-ghostery"><span class="path1"></span><span class="path2"></span></span>
            en haut à droite de votre navigateur puis cliquez sur "se fier à ce site" en bas à gauche.
        </p>
        <img src="/img/ghostery.jpg" class="responsive-img">
        <p>
            Il vous suffit après de recharger votre page. Ghostery sera désactivé pour midilibre.fr uniquement.
        </p>
        </div>
    </div>
</div>    <script>
var ldi_conf = {"general":{"url":"https:\/\/www.midilibre.fr","url_api":"https:\/\/apifo-prod-pulse.lindependant.fr","url_profil":"https:\/\/profil.midilibre.fr","url_carnet":"https:\/\/carnet.midilibre.fr\/","url_abo":"https:\/\/abonnement.midilibre.fr\/","url_abo_path":"midilibrev2","url_passclub":"http:\/\/passclub.midilibre.fr\/","url_libreserviceweb":"https:\/\/lindep.libreserviceweb.fr","sitename":"midilibre.fr","sitelabel":"Midi Libre","title":"Actualit\u00e9s et infos de Montpellier et sa r\u00e9gion - \u00c0 la une","archive_start":2011,"teads_pid":66522,"limits":{"comm":{"hot":30,"warm":10},"share":{"hot":30,"warm":10}}},"mail":{"header-bg":"#ed1c24","topic-fg":"#ed1c24","title-fg":"#050505","link-fg":"#ed1c24","publi-info-bg":"#ffe0e4","abo-text":"Votre journal et ses suppl\u00e9ments + le site premium et ses appli en illimit\u00e9 + les avantages, r\u00e9ductions et invitations du Club Abonn\u00e9s"},"maps":{"mainCity":"Montpellier","mainGpsLat":"43.6100787","mainGpsLong":"3.8390562","gmapKey":"AIzaSyDDgp07TtGpN_X7E_elqpKXZ9JfPBVkZOc"},"social":{"facebook":{"app-id":"207707432590302"},"pages":{"facebook":"https:\/\/www.facebook.com\/midilibre\/","twitter":"https:\/\/twitter.com\/Midilibre","google":"https:\/\/plus.google.com\/115764348922722060983"},"apps":{"app-ios-id":"443410419","app-ios-name":"midi-libre","app-ipad-id":"675630136","app-ipad-name":"midi-libre-pour-ipad","app-android":"com.midilibre.android"}},"idalgo":{"script":"\/idalgo\/r\/jlu","rugby-xv":{"default":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=7","default2":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=8","top-14":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=3","top-14\/stats":"\/idalgo\/cache\/page\/rugby_widget_statistic_player.php?refCompetition=3","top-14\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=3","top-14\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=3","pro-d2":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=7","pro-d2\/stats":"\/idalgo\/cache\/page\/rugby_widget_statistic_player.php?refCompetition=7","pro-d2\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=7","pro-d2\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=7","federale-1":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=8","federale-1\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=8","federale-1\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=8","federale-2":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=9","federale-2\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=9","federale-2\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=9"},"rugby-xiii":{"default":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=14","default2":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=12","super-league":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=14","super-league\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=14","super-league\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=14","elite-1":"\/idalgo\/cache\/page\/rugby_widget_standing.php?refCompetition=12","elite-1\/mini":"\/idalgo\/cache\/page\/rugby_widget_standing_short.php?refCompetition=12","elite-1\/result":"\/idalgo\/cache\/page\/rugby_widget_result.php?refCompetition=12"},"football":{"default":"\/idalgo\/cache\/page\/football_widget_standing_short.php?refCompetition=1","default2":"\/idalgo\/cache\/page\/football_widget_standing_short.php?refCompetition=6","ligue-1":"\/idalgo\/cache\/page\/football_widget_standing_long.php?refCompetition=1","ligue-1\/mini":"\/idalgo\/cache\/page\/football_widget_standing_short.php?refCompetition=1","ligue-1\/stats\/attaque":"\/idalgo\/cache\/page\/football_widget_statistic_team_for.php?refCompetition=1","ligue-1\/stats\/defense":"\/idalgo\/cache\/page\/football_widget_statistic_team_against.php?refCompetition=1","ligue-1\/stats\/buts":"\/idalgo\/cache\/page\/football_widget_statistic_player_goal.php?refCompetition=1","ligue-1\/stats\/passes":"\/idalgo\/cache\/page\/football_widget_statistic_player_assist.php?refCompetition=1","ligue-1\/result":"\/idalgo\/cache\/page\/football_widget_result.php?refCompetition=1","ligue-2":"\/idalgo\/cache\/page\/football_widget_standing_long.php?refCompetition=6","ligue-2\/mini":"\/idalgo\/cache\/page\/football_widget_standing_short.php?refCompetition=6","ligue-2\/stats\/attaque":"\/idalgo\/cache\/page\/football_widget_statistic_team_for.php?refCompetition=6","ligue-2\/stats\/defense":"\/idalgo\/cache\/page\/football_widget_statistic_team_against.php?refCompetition=6","ligue-2\/stats\/buts":"\/idalgo\/cache\/page\/football_widget_statistic_player_goal.php?refCompetition=6","ligue-2\/stats\/passes":"\/idalgo\/cache\/page\/football_widget_statistic_player_assist.php?refCompetition=6","ligue-2\/result":"\/idalgo\/cache\/page\/football_widget_result.php?refCompetition=6","ligue-champions":"\/idalgo\/cache\/page\/football_widget_standing_long.php?refCompetition=20","ligue-champions\/mini":"\/idalgo\/cache\/page\/football_widget_standing_short.php?refCompetition=20","ligue-champions\/stats\/attaque":"\/idalgo\/cache\/page\/football_widget_statistic_team_for.php?refCompetition=20","ligue-champions\/stats\/defense":"\/idalgo\/cache\/page\/football_widget_statistic_team_against.php?refCompetition=20","ligue-champions\/stats\/buts":"\/idalgo\/cache\/page\/football_widget_statistic_player_goal.php?refCompetition=20","ligue-champions\/stats\/passes":"\/idalgo\/cache\/page\/football_widget_statistic_player_assist.php?refCompetition=20","ligue-champions\/result":"\/idalgo\/cache\/page\/football_widget_result.php?refCompetition=20","national\/result":"\/idalgo\/cache\/page\/football_widget_result.php?refCompetition=7","cdm":"\/idalgo\/cache\/page\/football_widget_result.php?refCompetition=15"},"basket":{"default":"\/idalgo\/cache\/page\/basket_widget_standing.php?refCompetition=1","default2":"\/idalgo\/cache\/page\/basket_widget_standing.php?refCompetition=2","pro-a":"\/idalgo\/cache\/page\/basket_widget_standing.php?refCompetition=1","pro-b":"\/idalgo\/cache\/page\/basket_widget_standing.php?refCompetition=2","pro-a\/result":"\/idalgo\/cache\/page\/basket_widget_result.php?refCompetition=1"},"handball":{"default":"\/idalgo\/cache\/page\/handball_widget_standing.php?refCompetition=1","division-1":"\/idalgo\/cache\/page\/handball_widget_standing.php?refCompetition=1","division-1\/result":"\/idalgo\/cache\/page\/handball_widget_result.php?refCompetition=1"},"volley-ball":{"default":"\/idalgo\/cache\/page\/volley_widget_result.php?refCompetition=1","ligue-a\/result":"\/idalgo\/cache\/page\/volley_widget_result.php?refCompetition=1"},"multisport":{"default":"\/idalgo\/cache\/page\/sport_widget_livescore.php","live":"\/idalgo\/cache\/page\/sport_widget_livescore.php"}}};
</script>

<script type="text/javascript" src="/js/jquery/dist/jquery.min.fb634fd0.js"></script>
<script type="text/javascript" src="/js/materialize/dist/js/materialize.min.332b3c01.js"></script>
<script type="text/javascript" src="/js/materialize-autocomplete/jquery.materialize-autocomplete.min.3b523037.js"></script>
<script type="text/javascript" src="/js/lightslider/dist/js/lightslider.min.61758b10.js"></script>
<script type="text/javascript" src="/js/lightgallery/dist/js/lightgallery.min.92a4b6f5.js"></script>
<script type="text/javascript" src="/js/js-cookie/src/js.cookie.58b2a6eb.js"></script>
<script type="text/javascript" src="/js/vanilla-lazyload/dist/lazyload.min.b09b92d2.js"></script>
<script type="text/javascript" src="/js/iframe-resizer/js/iframeResizer.cbc69147.js"></script>
<script type="text/javascript" src="/js/script.82df52d0.js"></script>
</body>
</html>
