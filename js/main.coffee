i18n =
  "app":
    "fr":
      "explication" : "Le but de ce questionnaire n’est pas de rechercher une bonne réponse mais de vous permettre d’identifier votre attitude ainsi que des autres camarades et m’aider à mieux vous connaître et m’adapter à votre situation. Parmi les 20 phrases, je choisis :"
      "Les 2 plus" : "Les 2 qui me correspondent le plus"
      "Les 4 peu"     : "Les 4 qui me correspondent peu"
      "Les 8 pas d’opinion" : "Les 8 pour lesquelles je n’ai pas d’opinion"
      "Les 4 pas trop"    : "Les 4 qui me correspondent pas trop"
      "les 2 pas du tout" : "Les 2 qui me correspondent pas du tout"
    "re":
      "explication" : "té lé difficil pou espliké !"
      "Les 2 plus" : "bann 2 le plus"
      "Les 4 peu"     : "bann 4 inn bout"
      "Les 8 pas d’opinion" : "bann 8 pa la ek sa !"
      "Les 4 pas trop"    : "bann 4 pa trotro"
      "les 2 pas du tout" : "bann 2 pa di tou"
  "qsort":
    "fr":
      1: "J’aime les mathématiques parce que j’ai des bons résultats"
      2: "Les mathématiques permettent de comprendre le monde qui nous entoure"
      3: "C’est une matière trop difficile"
      4: "Réussir en mathématiques permet d’accéder à des bonnes classes et à des bonnes voies d’études"
      5: "Les activités réalisées en mathématiques apprennent à réfléchir"
      6: "Les mathématiques ne servent à rien « dans la vraie vie »"
      7: "Les activités proposées ne nous motivent pas"
      8: "Les mathématiques s’apprennent dans les livres, internet,..."
      9: "Les mathématiques m’intéressent au regard du métier que j’aimerais faire"
      10: "En mathématiques, il y a trop de notions à apprendre"
      11: "Ce que j’apprends en mathématiques est passionnant"
      12: "J’aime apprendre les mathématiques"
      13: "Les mathématiques sont utiles dans la vie de tous les jours"
      14: "J’ai trop d’heures de mathématiques dans mon emploi du temps"
      15: "Je n’aime pas les mathématiques parce que c’est difficile"
      16: "J’aime ce que l’on fait pendant les cours de mathématiques"
      17: "Les mathématiques ne vous semblent pas utiles pour la suite de vos études"
      18: "Je saisis mieux les choses que je ne comprenais pas"
      19: "Les tâches complexes c’est super."
      20: "En mathématiques, j’apprends à m’exprimer"
    "re":
      1: "azerty les mathématiques parce que j’ai des bons résultats"
      2: "Les mathématiques permettent de comprendre le monde qui nous entoure"
      3: "C’est une matière trop difficile"
      4: "Réussir en mathématiques permet d’accéder à des bonnes classes et à des bonnes voies d’études"
      5: "Les activités réalisées en mathématiques apprennent à réfléchir"
      6: "Les mathématiques ne servent à rien « dans la vraie vie »"
      7: "Les activités proposées ne nous motivent pas"
      8: "Les mathématiques s’apprennent dans les livres, internet,..."
      9: "Les mathématiques m’intéressent au regard du métier que j’aimerais faire"
      10: "En mathématiques, il y a trop de notions à apprendre"
      11: "Ce que j’apprends en mathématiques est passionnant"
      12: "J’aime apprendre les mathématiques"
      13: "Les mathématiques sont utiles dans la vie de tous les jours"
      14: "J’ai trop d’heures de mathématiques dans mon emploi du temps"
      15: "Je n’aime pas les mathématiques parce que c’est difficile"
      16: "J’aime ce que l’on fait pendant les cours de mathématiques"
      17: "Les mathématiques ne vous semblent pas utiles pour la suite de vos études"
      18: "Je saisis mieux les choses que je ne comprenais pas"
      19: "Les tâches complexes c’est super."
      20: "En mathématiques, j’apprends à m’exprimer"

ids = [1911008042, 2060227356, 1552551457, 441796097, 1823859130, 1887310124, 377892327, 945229228, 1764134384, 1665452858, 1259290828, 779376026, 745731751,  2062809803, 1795814391, 2034551388, 1435048531, 1393637327, 1101470727, 1529373593]

url = ""

update_count = ->
  $( ".connectedSortable" ).each ->
    $( this ).prevAll( "p.caption:first" ).find( ".count").html $( this ).children().length

  if $( "#container li" ).length is 20
    i = 0
    url = "https://docs.google.com/forms/d/e/1FAIpQLSf0xvezN2rUrUsRtQI70ONyByXffIW-KzXHjp12fZFmhnvc2Q/viewform?"
    $( "#2 li" ).each  -> url+="entry.#{ids[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#1 li" ).each  -> url+="entry.#{ids[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#0 li" ).each  -> url+="entry.#{ids[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#-1 li" ).each -> url+="entry.#{ids[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#-2 li" ).each -> url+="entry.#{ids[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#origin" ).before "<button id='go'>Go</button>"
  else $( "#go" ).remove()

$ ->
  set_language = (lang) ->
    $( "#container, #origin" ).empty()
    qsort = i18n["qsort"][lang]
    app = i18n["app"][lang]
    
    $( ".explanation" )
      .html app["explication"]
      .dialog()
      
    for i in [1..20]
      $( "#origin" ).append "<li class='ui-state-default' data-item='#{i}'>#{qsort[i]}</li>"
   
    c = [-2, -1, 0, 1, 2]
    n = [2, 4, 8, 4, 2 ] 
    t = [app["Les 2 plus"], app["Les 4 peu"], app["Les 8 pas d’opinion"], app["Les 4 pas trop"], app["les 2 pas du tout"]]   
    for i in [0..4]
      html = "<p class='caption'>#{t[i]} (<span class='count'>0</span>/#{n[i]})</p><ul id='#{c[i]}' class='connectedSortable destination' data-coeff='#{c[i]}' data-max='#{n[i]}'></ul>"
      $( "#container" ).append html
    
    $( "#langage" )
      .selectmenu()
      .on "selectmenuchange", ->
        lang = $(this).val()
        set_language(lang)
      
       
    $( ".connectedSortable" )
      .sortable
        connectWith: ".connectedSortable"
        placeholder: "pholder"
        dropOnEmpty: true
      .disableSelection()
     
    $( "#origin" ).sortable
      receive: (event, ui) -> update_count()
      
    $( ".destination" ).sortable
      receive: (event, ui) ->
        m = parseInt $(this).attr("data-max")
        if ($(this).children().length > m )
          alert "Attention #{m} max ! Liberez en un avant !"
          $(ui.sender).sortable('cancel')
        update_count()
      
  set_language("fr")
  
  
  
  $( "body" ).on "click", "#go", -> window.location.href = url
  $( "body" ).on "click", ".question", -> $( ".explanation" ).dialog("open")
