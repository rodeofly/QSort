I18N =
  "app":
    "fr":
      "explication" : "Le but de ce questionnaire n’est pas de rechercher une bonne réponse mais de vous permettre d’identifier votre attitude ainsi que des autres camarades et m’aider à mieux vous connaître et m’adapter à votre situation. Faites glisser les différentes phrases dans les cases correspondantes."
      "Les 2 plus" : "Les 2 qui me correspondent le plus"
      "Les 4 peu"     : "Les 4 qui me correspondent peu"
      "Les 8 sans opinion" : "Les 8 pour lesquelles je n’ai pas d’opinion"
      "Les 4 pas trop"    : "Les 4 qui me correspondent pas trop"
      "les 2 pas du tout" : "Les 2 qui me correspondent pas du tout"
    "re":
      "explication" : "té lé difficil pou espliké !"
      "Les 2 plus" : "bann 2 le plus"
      "Les 4 peu"     : "bann 4 inn bout"
      "Les 8 sans opinion" : "bann 8 pa la ek sa !"
      "Les 4 pas trop"    : "bann 4 pa trotro"
      "les 2 pas du tout" : "bann 2 pa di tou"
    "uk":
      "explication" : "The purpose of this questionnaire is not to find a good answer but to help you identify your attitude as well as other friends and help me get to know you and adapt to your situation. Drag the sentences in the corresponding frames."
      "Les 2 plus" : "The 2 that correspond the most to me"
      "Les 4 peu"     : "The 4 corresponding a bit to me"
      "Les 8 sans opinion" : "The 8 whom I do not have an opinion"
      "Les 4 pas trop"    : "The 4 who do not fit me too"
      "les 2 pas du tout" : "The 2 that do not correspond to me at all"
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
      1: "Mi aime mathématique parce que lo résultat lé la"
      2: "Mathématique y permettent à moins de comprenn dann quel monde nou vive"
      3: "Mi reconné k’lé trop dur"
      4: "Mi reconné que gagné dann matiere la va permette a moins d’aller loin"
      5: "Cet ou fé dann math y oblige a ou cass out tête"
      6: "Math y serve pa rien  dan la vie"
      7: "Lo travail y demande lé pas gadiam"
      8: "Néna in bonpeu maniere pou apprenn math"
      9: "Pou le travail mi veu fé math y intéresse a moin"
      10: "Dann math néna trop travail pou fé"
      11: "Mi aime cek mi apprenn"
      12: "Mi aime apprenn a li"
      13: "Mi pense que lé bien pou mon vie tous les jour"
      14: "Mi passe trop le temp pou aprennn  math"
      15: "Mi aime pa math lé trop dur"
      16: "Mi aime cossa nou fé quand nous apprenn math"
      17: "Mi pense que math lé pas besoin pou cek mi veu fé apré"
      18: "Jordi mi comprenn mieux cek ma té y comprenn pa avant"
      19: "Tâches complexes lé gadiam"
      20: "Avec math mi gaigne mieux cosé"
    "uk":
      1: "I like math because I have good results"
      2: "Mathematics for understanding the world around us"
      3: "This is too difficult matter"
      4: "Success in Mathematics provides access to good classes and good ways of studies"
      5: "The activities carried out in mathematics learn to think"
      6: "The mathematics are useless in real life"
      7: "The activities do not motivate us"
      8: "Mathematics is learned from books, internet, ..."
      9: "The mathematical interest me for the occupation I want to do"
      10: "In mathematics, there are too many concepts to learn"
      11: "What I learn in mathematics is exciting"
      12: "I like to learn math"
      13: "Mathematics is useful in everyday life"
      14: "I have too many hours of mathematics in my schedule"
      15: "I do not like math because it's difficult"
      16: "I like what we did during the course of mathematics"
      17: "The mathematics do not seem to help you after your studies"
      18: "I take the best things I did not understand"
      19: "Complex tasks that's great."
      20: "In mathematics, I learn to speak"




IDS = [1911008042, 2060227356, 1552551457, 441796097, 1823859130, 1887310124, 377892327, 945229228, 1764134384, 1332486413, 2084969788, 530561711, 840365023, 167976922, 605466426, 124928852, 1611248840, 1967882391, 470057528, 1979593048]

URL = "https://docs.google.com/forms/d/e/1FAIpQLSf0xvezN2rUrUsRtQI70ONyByXffIW-KzXHjp12fZFmhnvc2Q/viewform?"
url=""
update_count = ->
  $( ".connectedSortable" ).each ->
    $( this ).prevAll( "p.caption:first" ).find( ".count").html $( this ).children().length

  if $( "#container li" ).length is 20
    i = 0
    url = URL
    $( "#2 li" ).each  -> url+="entry.#{IDS[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#1 li" ).each  -> url+="entry.#{IDS[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#0 li" ).each  -> url+="entry.#{IDS[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#-1 li" ).each -> url+="entry.#{IDS[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#-2 li" ).each -> url+="entry.#{IDS[i++]}=#{$( this ).attr( 'data-item' )}&"
    $( "#origin" ).before "<button id='go' data-url='#{url}'>Go</button>"
  else $( "#go" ).remove()

$ ->
  set_language = (lang) ->
    $( "#container, #origin" ).empty()
    qsort = I18N["qsort"][lang]
    app = I18N["app"][lang]
    
    $( ".explanation" )
      .html app["explication"]
      .dialog()
      
    for i in [1..20]
      $( "#origin" ).append "<li class='ui-state-default' data-item='#{i}'>#{qsort[i]}</li>"
   
    c = [2, 1, 0, -1, -2]
    n = [2, 4, 8, 4, 2 ] 
    t = [app["Les 2 plus"], app["Les 4 peu"], app["Les 8 sans opinion"], app["Les 4 pas trop"], app["les 2 pas du tout"]]   
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
  
  
  
  $( "body" ).on "click", "#go", -> 
    window.location.href = url
  $( "body" ).on "click", ".question", -> $( ".explanation" ).dialog("open")
