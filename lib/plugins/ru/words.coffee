###
self reference:
adverb: наречие
adjective: прилагательное
verb: глагол
preposition: предлог

падежи:
nominative:      именительный
genitive:        родительный
dative:          дательный
accusative:      винительный
instrumental:    творительный
prepositional:   предложный


###

((exports) ->
  exports.adverbs = ["абсолютно", "адски", "азартно", "активно", "аспидно", "баснословно", "бдительно", "безапелляционно", "безбожно", "безвозвратно", "безгранично", "безжалостно", "беззаветно", "беззастенчиво", "безмерно", "безмятежно", "безнадежно", "безоговорочно", "безраздельно", "безропотно", "безудержно", "безукоризненно", "безумно", "безупречно", "безусловно", "безустанно", "безутешно", "бескомпромиссно", "бесконечно", "беспардонно", "бесповоротно", "беспощадно", "беспредельно", "беспрекословно", "бесследно", "бессовестно", "бесстыдно", "бесчеловечно", "бешено", "бурно", "вдребезги", "вконец", "вовсю", "всемерно", "всесторонне", "всецело", "всячески", "высоко", "глубоко", "горько", "горячо", "грубо", "густо", "диаметрально", "дико", "досконально", "досыта", "дотошно", "дьявольски", "жарко", "жгуче", "железно", "жестко", "жестоко", "живо", "жизненно", "жутко", "запоем", "запредельно", "зверски", "здорово", "злостно", "идеально", "излишне", "изрядно", "изумительно", "исключительно", "исступленно", "истово", "истошно", "исчерпывающе", "кардинально", "катастрофически", "категорически", "клятвенно", "колоссально", "крайне", "крепко", "кристально", "кровно", "крупно", "круто", "люто", "максимально", "мертвецки", "мучительно", "навзрыд", "нагло", "наглухо", "наглядно", "наголову", "надежно", "надрывно", "назубок", "намертво", "наотрез", "напрочь", "нарочито", "насквозь", "настоятельно", "насущно", "начисто", "небывало", "невероятно", "невиданно", "невообразимо", "невыносимо", "невыразимо", "недопустимо", "неизмеримо", "неимоверно", "неистово", "немилосердно", "немыслимо", "необыкновенно", "необычайно", "неописуемо", "неопровержимо", "непомерно", "непоправимо", "непостижимо", "непримиримо", "непробудно", "непроходимо", "неразрывно", "несказанно", "неслыханно", "несметно", "несравненно", "нестерпимо", "неудержимо", "неузнаваемо", "неуклонно", "неукоснительно", "неустанно", "неусыпно", "неутешно", "неутомимо", "нещадно", "оглушительно", "ожесточенно", "ослепительно", "основательно", "остро", "откровенно", "открыто", "отлично", "отменно", "отчаянно", "очень", "панически", "патологически", "пламенно", "плотно", "по-настоящему", "по-собачьи", "подлинно", "подчеркнуто", "позарез", "поистине", "полностью", "поразительно", "порядком", "порядочно", "потрясающе", "предельно", "прекрасно", "преступно", "прилично", "примитивно", "принципиально", "приторно", "пронзительно", "радикально", "разительно", "редкостно", "резко", "рекордно", "свято", "серьезно", "сильно", "слепо", "смертельно", "совершенно", "совсем", "страстно", "страшно", "строго", "строго-настрого", "существенно", "твердо", "тяжело", "тяжко", "убийственно", "удивительно", "ужасающе", "ужасно", "фанатически", "фанатично", "фантастически", "феноменально", "хорошенько", "хорошо", "чертовски", "чрезвычайно", "чрезмерно", "чудовищно", "широко", "шумно", "щедро", "ярко", "яростно"]

  exports.unions = ["а", "а именно", "абы", "аж", "ажно", "аки", "али", "аль", "аще", "благо", "будто", "ведь", "всё", "всё-таки", "все-таки", "где", "где-то", "да", "дабы", "даже", "дотоле", "едва", "если", "ж", "же", "зане", "зато", "зачем", "и", "или", "именно", "иначе", "инда", "итак", "как", "как бы", "как то", "как-то", "каков", "какой", "когда", "коли", "коль", "который", "куда", "ли", "либо", "лишь", "ль", "настолько", "нежели", "ни", "но", "однако", "откуда", "поелику", "пока", "покамест", "покаместь", "понеже", "поскольку", "после того как", "пота", "потому", "потому как", "потому что", "почём", "почему", "поэтому", "правда", "притом", "причём", "просто", "пусть", "раз", "разве", "сиречь", "сколько", "следовательно", "словно", "столько", "так как", "также", "теперь", "то", "то есть", "тож", "только", "только что", "хоть", "хотя", "хуле", "чем", "что", "чтоб", "чтобы", "чуть", "яко", "якобы"]

  exports.prepositionAll = ["в", "во", "за", "меж", "между", "на", "не в", "не за", "о", "об", "обо", "под", "подо", "включая", "невзирая на", "несмотря на", "по", "по-за", "про", "с", "сквозь", "со", "спустя", "через", "чрез", "благодаря", "вдоль по", "вопреки", "вслед", "к", "ко", "лицом к", "навстречу", "наперекор", "наперерез", "по направлению к", "по отношению к", "подобно", "применительно к", "смотря по", "согласно", "сродни", "судя по", "при", "без", "без ведома", "безо", "близ", "близко от", "в виде", "в зависимости от", "в качестве", "в лице", "в отличие от", "в отношении", "в преддверии", "в продолжение", "в результате", "в роли", "в силу", "в течение", "в целях", "ввиду", "вглубь", "вдоль", "взамен", "вместо", "вне", "внизу", "внутри", "внутрь", "возле", "вокруг", "впереди", "впредь до", "вроде", "вследствие", "для", "до", "за вычетом", "за исключением", "за счёт", "заместо", "из", "из-за", "из-под", "изнутри", "изо", "исходя из", "кроме", "кругом", "мимо", "на виду у", "на глазах у", "на предмет", "наверху", "накануне", "наподобие", "напротив", "насупротив", "насчёт", "начиная с", "не без", "не считая", "недалеко от", "независимо от", "ниже", "обок", "около", "окромя", "округ", "от", "от имени", "от лица", "относительно", "ото", "по линии", "по мере", "по поводу", "по причине", "по случаю", "поблизости от", "поверх", "под видом", "под эгидой", "подле", "позади", "помимо", "поперёк", "после", "посреди", "посредине", "посредством", "прежде", "при помощи", "против", "путём", "ради", "с ведома", "с помощью", "с точки зрения", "с целью", "сверх", "свыше", "сзади", "снизу", "среди", "средь", "супротив", "у", "в связи с", "в соответствии с", "вслед за", "лицом к лицу с", "над", "надо", "наряду с", "перед", "передо", "по сравнению с", "по-над", "пред", "предо", "рядом с", "следом за"]

  exports.prepositionSimple = ["в", "во", "за", "меж", "между", "на", "не в", "не за", "о",
  "об", "обо", "под", "подо"]


  exports.prepositionAcusative = ["в", "включая", "во", "за", "на", "не в", "не за", "невзирая на", "несмотря на", "о", "об", "обо", "по", "по-за", "под", "подо", "про", "с", "сквозь", "со", "спустя", "через", "чрез"]

  exports.prepositionDative = ["благодаря", "вдоль по", "вопреки", "вслед", "к", "ко", "лицом к", "навстречу", "наперекор", "наперерез", "по", "по направлению к", "по отношению к", "подобно", "применительно к", "смотря по", "согласно", "сродни", "судя по"]


  exports.prepositionPrepositional = ["в", "во", "на", "не в", "о", "об", "обо", "по", "при"]

  exports.prepositionGenetive = ["без", "без ведома", "безо", "близ", "близко от", "в виде", "в зависимости от", "в качестве", "в лице", "в отличие от", "в отношении", "в преддверии", "в продолжение", "в результате", "в роли", "в силу", "в течение", "в целях", "ввиду", "вглубь", "вдоль", "взамен", "вместо", "вне", "внизу", "внутри", "внутрь", "возле", "вокруг", "впереди", "впредь до", "вроде", "вследствие", "для", "до", "за вычетом", "за исключением", "за счёт", "заместо", "из", "из-за", "из-под", "изнутри", "изо", "исходя из", "кроме", "кругом", "меж", "между", "мимо", "на виду у", "на глазах у", "на предмет", "наверху", "накануне", "наподобие", "напротив", "насупротив", "насчёт", "начиная с", "не без", "не считая", "недалеко от", "независимо от", "ниже", "обок", "около", "окромя", "округ", "от", "от имени", "от лица", "относительно", "ото", "по линии", "по мере", "по поводу", "по причине", "по случаю", "поблизости от", "поверх", "под видом", "под эгидой", "подле", "позади", "помимо", "поперёк", "после", "посреди", "посредине", "посредством", "прежде", "при помощи", "против", "путём", "ради", "с", "с ведома", "с помощью", "с точки зрения", "с целью", "сверх", "свыше", "сзади", "снизу", "со", "среди", "средь", "супротив", "у"]


  exports.prepositionInstrumental = ["в связи с", "в соответствии с", "вслед за", "за", "лицом к лицу с", "меж", "между", "над", "надо", "наряду с", "не за", "перед", "передо", "по сравнению с", "по-над", "под", "подо", "пред", "предо", "рядом с", "с", "следом за", "со"]


  exports.prepositionWithSingleCase = ["без", "без ведома", "безо", "благодаря", "близ", "близко от", "в виде", "в зависимости от", "в качестве", "в лице", "в отличие от", "в отношении", "в преддверии", "в продолжение", "в результате", "в роли", "в связи с", "в силу", "в соответствии с", "в течение", "в целях", "ввиду", "вглубь", "вдоль", "вдоль по", "взамен", "включая", "вместо", "вне", "внизу", "внутри", "внутрь", "возле", "вокруг", "вопреки", "впереди", "впредь до", "вроде", "вслед", "вслед за", "вследствие", "для", "до", "за вычетом", "за исключением", "за счёт", "заместо", "из", "из-за", "из-под", "изнутри", "изо", "исходя из", "к", "ко", "кроме", "кругом", "лицом к", "лицом к лицу с", "мимо", "на виду у", "на глазах у", "на предмет", "наверху", "навстречу", "над", "надо", "накануне", "наперекор", "наперерез", "наподобие", "напротив", "наряду с", "насупротив", "насчёт", "начиная с", "не без", "не считая", "невзирая на", "недалеко от", "независимо от", "несмотря на", "ниже", "обок", "около", "окромя", "округ", "от", "от имени", "от лица", "относительно", "ото", "перед", "передо", "по линии", "по мере", "по направлению к", "по отношению к", "по поводу", "по причине", "по случаю", "по сравнению с", "по-за", "по-над", "поблизости от", "поверх", "под видом", "под эгидой", "подле", "подобно", "позади", "помимо", "поперёк", "после", "посреди", "посредине", "посредством", "пред", "предо", "прежде", "при", "при помощи", "применительно к", "про", "против", "путём", "ради", "рядом с", "с ведома", "с помощью", "с точки зрения", "с целью", "сверх", "свыше", "сзади", "сквозь", "следом за", "смотря по", "снизу", "согласно", "спустя", "среди", "средь", "сродни", "судя по", "супротив", "у", "через", "чрез"]

  exports.prepositionWith2Cases = ["в", "во", "за", "меж", "между", "на", "не в", "не за", "о", "об", "обо", "под", "подо"]

  exports.prepositionWith3Cases = ["по", "с", "со"]

)(if "undefined" is typeof global
    window.lastName ||= {}
    window.lastName.plugins ||= {}
    window.lastName.plugins.ru || = {}
    window.lastName.plugins.ru.words = {}
  else
   exports)