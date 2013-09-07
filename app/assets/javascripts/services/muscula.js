    window.Muscula = { settings:{
        logId:"d742222b-14ed-43d6-97f3-57d4f1346219", suppressErrors: false, branding: 'none'
    }};
    (function () {
        var m = document.createElement('script'); m.type = 'text/javascript'; m.async = true;
        m.src = (window.location.protocol == 'https:' ? 'https:' : 'http:') +
            '//musculahq.appspot.com/Muscula2.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(m, s);
        window.Muscula.run=function(c){eval(c);window.Muscula.run=function(){};};
        window.Muscula.errors=[];window.onerror=function(){window.Muscula.errors.push(arguments);
        return window.Muscula.settings.suppressErrors===undefined;}
    })();
