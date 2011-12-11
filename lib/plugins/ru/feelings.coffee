###
Feeling words

###
# depends on inclines and counters
if "undefined" is typeof global
    window.lastName.plugins.ru.feelings  = {}
    exports                              = window.lastName.plugins.ru.feelings
    inclines                             = window.lastName.plugins.ru.inclines
    quotes                               = window.lastName.plugins.ru.quotes
else
    exports                              = module.exports
    inclines                             = require "./inclines"
    quotes                             = require "./quotes"

((exports, inclines, quotes) ->

  positiveAdjectives = {"авантюрный": 2, "аккуратный": 2, "активный": 2, "анимационный": 2, "аутентичный": 1.1, "баснословный": 3, "безграничный": 3, "безмятежный": 3, "безопасный": 2, "бесконечный": 2, "благодарный": 2, "благоприятный": 2, "благородный": 2, "благословенный": 2, "благотворительный": 2, "блестящий": 1.1, "богатый": 1.1, "бодрствующий": 1.1, "божественный": 3, "большой": 1.1, "быстрый": 1.1, "вдохновленный": 1.1, "великий": 3, "великолепный": 2, "веселый": 2, "взволнованный": 1.1, "видный": 2, "внимательный": 1.1, "возбужденный": 2, "воздушный": 1.1, "волнующий": 1.1, "воодушевляющий": 2, "восторженный": 2, "восхитительный": 2, "впечатляющий": 2, "врожденный": 2, "выполненный": 2, "гармоничный": 1.1, "глубокий": 1.1, "гордый": 1.1, "готовый": 1.1, "грациозный": 2, "дальновидный": 2, "динамический": 1.1, "доблестный": 2, "доверчивый": 1.1, "достойный": 2, "драгоценный": 2, "дружественный": 2, "духовный": 2, "желательный": 2, "живой": 3, "заинтересованный": 2, "замечательный": 2, "заслуженный": 2, "захватывающий": 2, "здоровый": 2, "зеленый": 1.1, "знакомый": 1.1, "знаменитый": 2, "значимый": 1.1, "игривый": 1.1, "идеальный": 3, "известный": 2, "изобретательный": 2, "изысканный": 2, "инновационный": 2, "интеллектуальный": 2, "интересный": 2, "интуитивный": 2, "исключительный": 2, "искусный": 2, "исцеленный": 2, "каждый": 1.1, "квалифицированный": 2, "классный": 1.1, "компетентный": 1.1, "конечный": 2, "красивый": 2, "красноречивый": 2, "легендарный": 2, "легкий": 1.1, "лестный": 1.1, "ликующий": 2, "лучистый": 1.1, "лучший": 2, "любопытный": 2, "любящий": 2, "магический": 1.1, "мгновенный": 2, "милостивый": 2, "милый": 2, "мирный": 1.1, "могущественный": 2, "молодой": 2, "мощный": 2, "мудрый": 2, "надежный": 2, "наивысший": 3, "напористый": 2, "находчивый": 1.1, "небесный": 2, "невероятный": 2, "независимый": 1.1, "необычный": 1.1, "неотразимый": 2, "непобедимый": 2, "непоколебимый": 2, "обильный": 1.1, "обожаемый": 2, "образный": 1.1, "огромный": 2, "одаренный": 2, "оживленный": 2, "определенный": 1.1, "оптимистичный": 1.1, "опытный": 2, "ослепительный": 3, "основной": 2, "острый": 1.1, "отличный": 2, "охватывающий": 1.1, "освежающий": 2, "очаровательный": 1.1, "ошеломляющий": 2, "питательный": 2, "плавный": 2, "плавучий": 1.1, "победоносный": 3, "повседневный": 1.1, "подготовленный": 2, "подлинный": 3, "показанный": 2, "полезный": 2, "полный": 2, "положительный": 1.1, "популярный": 1.1, "поразительный": 3, "постоянный": 2, "потрясающий": 3, "почитаемый": 2, "правдивый": 2, "превосходный": 3, "предприимчивый": 2, "прекрасный": 2, "прибыльный": 2, "привлекательный": 2, "признанный": 2, "прилежный": 1.1, "приличный": 1.1, "природный": 1.1, "приятный": 1.1, "продуктивный": 1.1, "проницательный": 2, "простой": 1.1, "процветающий": 2, "прямой": 1.1, "пылающий": 2, "радостный": 2, "разносторонний": 1.1, "разумный": 2, "рассудительный": 2, "решительный": 2, "свежий": 1.1, "сверкающий": 1.1, "святой": 3, "сенсационный": 3, "сердечный": 2, "сильный": 1.1, "синхронизированный": 1.1, "сияющий": 2, "славный": 2, "смелый": 2, "смешной": 1.1, "соблазнительный": 2, "сознательный": 2, "сокрушительный": 3, "солнечный": 2, "состоятельный": 2, "спокойный": 1.1, "спонтанный": 2, "способный": 2, "стойкий": 2, "страстный": 2, "счастливый": 2, "тактичный": 1.1, "талантливый": 2, "творческий": 1.1, "теплый": 1.1, "терапевтический": 1.1, "тихий": 1.1, "трудолюбивый": 1.1, "тщательный": 1.1, "уважаемый": 2, "уверенный": 2, "увлекательный": 2, "удивительный": 2, "удобный": 2, "удовлетворенный": 2, "умный": 2, "уникальный": 3, "упорный": 2, "успешный": 2, "установленный": 1.1, "утвердительный": 1.1, "храбрый": 2, "художественный": 1.1, "целебный": 2, "ценный": 2, "цепкий": 2, "честный": 2, "чистый": 1.1, "чувствительный": 1.1, "чудесный": 2, "чудотворный": 3, "шипучий": 1.1, "шокирующий": 1.1, "щедрый": 2, "элегантный": 2, "электризующий": 2, "энергичный": 2, "эффективный": 2, "юмористический": 2, "яркий": 2, "мотивированный": 2, "связанный": 1}

  # 249
  negativeAdjectives = { "агрессивный" : 3, "атакованный" : 2, "бедный" : 2, "беззащитный" : 2, "безнадежный" : 3, "безрадостный" : 2, "бесплодный" : 3, "беспомощный" : 3, "бесправный" : 2, "бессердечный" : 1.1, "бессильный" : 1.1, "бесцельный" : 2, "бесчестный" : 2, "вздорный" : 1.1, "виновный" : 1.1, "ворчливый" : 1.1, "враждебный" : 2, "вспыльчивый" : 1.1, "выпученный" : 1.1, "выселенный" : 3, "высмеянный" : 2, "выхолощенный" : 1.1, "глубокий" : 1.1, "глупый" : 2, "горький" : 2, "готический" : 2, "гротескный" : 1.1, "грустный" : 1.1, "грязный" : 1.1, "девальвированный" : 2, "деградировавший" : 2, "дегуманизированный" : 2, "дезорганизованный" : 2, "дезориентированный" : 2, "деморализованный" : 3, "дерзкий" : 1.1, "дерьмовый" : 3, "дефектный" : 3, "драматический" : 3, "жалкий" : 3, "жесткий" : 2, "жестокосердный" : 2, "заброшенный" : 1.1, "забываемый" : 1.1, "забывчивый" : 1.1, "забытый" : 2, "зависимый" : 1.1, "заинтересованный" : 1.1, "запрещенный" : 3, "запутанный" : 2, "застенчивый" : 1.1, "застрявший" : 1.1, "затравленный" : 2, "зверский" : 3, "злобный" : 2, "идиотский" : 3, "измельченный" : 2, "измученный" : 2, "изнасилованный" : 3, "изолированный" : 3, "изумленный" : 1.1, "интенсивный" : 1.1, "иррациональный" : 2, "исключенный" : 2, "искусственный" : 2, "испуганный" : 2, "истерический" : 3, "исчерпанный" : 2, "капризный" : 2, "контролируемый" : 1.1, "критический" : 1.1, "ленивый" : 2, "лишенный" : 2, "ложный" : 2, "мазохистский" : 1.1, "мертвый" : 3, "меченый" : 2, "мрачный" : 2, "мстительный" : 2, "навязчивый" : 2, "надоедливый" : 2, "наказанный" : 2, "нарушенный" : 2, "натянутый" : 2, "неадекватный" : 2, "неактивный" : 1.1, "небезопасный" : 2, "небрежный" : 1.1, "невежественный" : 1.1, "невидимый" : 1.1, "невротический" : 2, "негуманный" : 2, "недействительный" : 1.1, "недовольный" : 2, "недостаточный" : 1.1, "недоуменный" : 1.1, "незаземленный" : 1.1, "незначительный" : 1.1, "неискренний" : 1.1, "некомпетентный" : 2, "ненавистный" : 3, "необщительный" : 2, "неполный" : 2, "неправильный" : 2, "неприятный" : 2, "нервный" : 2, "нерешительный" : 1.1, "несбалансированный" : 1.1, "несовместимый" : 2, "несоответствующий" : 2, "неспособный" : 3, "несчастный" : 2, "неуклюжий" : 2, "неуловимый" : 1.1, "неуместный" : 2, "нечестный" : 2, "неэффективный" : 2, "низкий" : 1.1, "обвиняемый" : 3, "обедненный" : 1.1, "обезумевший" : 3, "обиженный" : 2, "обманутый" : 2, "обозленный" : 2, "оборонительный" : 1.1, "обремененный" : 1.1, "обременительный" : 1.1, "обреченный" : 2, "ограниченный" : 1.1, "одержимый" : 3, "одинокий" : 2, "одноразовый" : 1.1, "озабоченный" : 2, "окаменелый" : 1.1, "онемелый" : 1.1, "опальный" : 2, "опасный" : 3, "опустошенный" : 1.1, "опущенный" : 2, "опьяненный" : 1.1, "оскорбленный" : 2, "осмеянный" : 2, "острый" : 1.1, "осужденный" : 3, "осушенный" : 2, "ответственный" : 2, "отвратительный" : 3, "отдаленный" : 1.1, "отдельный" : 1.1, "отрицательный" : 2, "отсталый" : 2, "отчаянный" : 1.1, "ошибочный" : 1.1, "параноидальный" : 2, "паршивый" : 2, "пассивный" : 1.1, "переполненный" : 2, "пессимистический" : 2, "печальный" : 2, "побежденный" : 3, "поверхностный" : 2, "поврежденный" : 3, "подавленный" : 2, "поддельный" : 3, "покинутый" : 2, "покорный" : 1.1, "порабощенный" : 3, "потерянный" : 2, "потерпевший" : 2, "потребленный" : 1.1, "презираемый" : 2, "презренный" : 3, "презрительный" : 2, "прерванный" : 1.1, "принудительный" : 2, "психотический" : 2, "пустынный" : 1.1, "пьяный" : 2, "равнодушный" : 1.1, "развращенный" : 3, "раздраженный" : 2, "раздражительный" : 2, "разочарованный" : 2, "разочаровывающий" : 3, "разрушенный" : 3, "разрушительный" : 2, "разъяренный" : 3, "раненый" : 2, "ревнивый" : 2, "садистский" : 2, "самоубийственный" : 3, "саркастический" : 1.1, "сварливый" : 1.1, "сгоревший" : 3, "сердитый" : 2, "серый" : 1.1, "скучающий" : 1.1, "скучный" : 1.1, "сломанный" : 2, "смущенный" : 1.1, "созерцательный" : 1.1, "сомнительный" : 2, "спорный" : 2, "спровоцированный" : 2, "спутанный" : 2, "спущенный" : 2, "стереотипный" : 1.1, "стесненный" : 1.1, "странный" : 1.1, "страшный" : 2, "сумасшедший" : 2, "тихий" : 1.1, "тормозящий" : 2, "торопливый" : 2, "тоскливый" : 3, "требовательный" : 2, "тревожный" : 2, "трудный" : 2, "трусливый" : 2, "тупой" : 1.1, "тщеславный" : 2, "угнетенный" : 2, "угрюмый" : 2, "удаляемый" : 2, "удрученный" : 2, "ужасный" : 3, "уклончивый" : 2, "униженный" : 3, "унылый" : 3, "урезанный" : 2, "фальшивый" : 3, "хаотический" : 2, "холодный" : 1.1, "хрупкий" : 1.1, "цепкий" : 2, "циничный" : 2, "чертовский" : 2, "чрезмерный" : 2, "чувствительный" : 2, "эгоистичный" : 2, "эгоцентричный" : 3, "эксплуатируемый" : 2, "эмансипированный" : 2, "эмоциональный" : 1.1, "яростный"  : 3}

  positiveVerbs = {"верить": 2, "визуализировать": 2, "возделывать": 2, "возобновить": 2, "восхищаться": 2, "выражать": 1.1, "держать": 1.1, "жертвовать": 3, "звучать": 2, "знать": 1.1, "изменять": 1.1, "изменяться": 2, "исследовать": 2, "лелеять": 2, "любоваться": 2, "мотивировать": 2, "наслаждаться": 2, "одобрять": 1.1, "омолаживать": 1.1, "определяться": 1.1, "открывать": 1.1, "отпускать": 1.1, "оценивать": 2, "питать": 2, "питаться": 2, "поддерживать": 2, "полагаться": 2, "полировать": 1.1, "поощрять": 2, "пополняться": 2, "праздновать": 2, "привлекать": 2, "приглашать": 2, "прижиматься": 1.1, "принимать": 1.1, "процветать": 2, "радоваться": 2, "размышлять": 2, "распускаться": 1.1, "расслабляться": 2, "расти": 3, "расширять": 2, "регулировать": 2, "светиться": 1.1, "смеяться": 2, "смотреть": 2, "собирать": 2, "соглашаться": 2, "соединяться": 2, "соответствовать": 2, "стремиться": 2, "трансформировать": 2, "убедиться": 1.1, "удивлять": 2, "учиться": 2, "читать": 1.1}

  negativeVerbs = {"беспокоить" : 2, "бить" : 2, "внушать" : 2, "волноваться" : 2, "высмеивать" : 2, "грызть" : 1.1, "диктовать" : 2, "дребезжать" : 1.1, "дрожать" : 1.1, "дрогнуть": 2, "загнать" : 2, "запугивать" : 3, "запутаться" : 2, "злоупотреблять" : 2, "игнорировать" : 1.1, "избегать" : 1.1, "издеваться" : 3, "изменять" : 2, "командовать" : 1.1, "лгать" : 2, "лишить" : 2, "манипулировать" : 2, "молчать" : 1.1, "надувать" : 1.1, "ненавидеть" : 3, "обвинять" : 2, "обидеть" : 2, "опорочить" : 3, "освистать" : 3, "отбрасывать" : 1.1, "отвлекаться" : 2, "отклонить" : 2, "отрекаться" : 3, "оттолкнуть" : 2, "паниковать" : 2, "перепутаться" : 2, "подавить" : 3, "подвергаться" : 2, "пострадать" : 2, "предавать" : 3, "пренебрегать" : 2, "препятствовать" : 2, "преследовать" : 2, "принижаться" : 2, "приставать" : 2, "прослушивать" : 2, "разгромить" : 2, "раздражаться" : 2, "растаскивать" : 2, "рисковать" : 2, "ругать" : 2, "сдуваться" : 1.1, "смолчать" : 2, "снизиться" : 1.1, "сорвать": 1.1, "сожалеть" : 2, "соизволить" : 2, "солгать" : 2, "сомневаться" : 2, "споткнуться" : 1.1, "столкнуться" : 2, "страдать" : 2, "стрелять" : 3, "судить" : 2, "толкнуть" : 1.1, "убить": 3, "убивать": 3, "уговаривать" : 1.1, "удалять" : 2, "уклоняться" : 2, "унижать" : 3, "шантажировать" : 2}

  positiveWordsIncline = {"ура": 2, "прямо": 1.1, "сейчас": 1.1, "сегодня": 1.1, "здесь": 1.1, "полностью": 1.1, "быстро":  1.1, "абсолютно": 1.1, "бесплатно": 2, "хорошо": 2, "довольно": 1.1, "легко": 1.1, "много": 2, "своевременно": 2, "ядро": 2, "ясно": 1, "вместе": 2}

  negativeWordsIncline = {"боль": 2, "вниз" : 1, "горе" : 3, "дно": 2, "мало": 1, "мучение": 2 , "недовольство": 2, "плохо": 2, "противно": 3, "совестно": 2, "только": 1, "ужас": 3, "смерть": 3, "неодобрительно": 2, "разгром" : 2, "отчаяние" : 3}

  ###
  Get array of positive phrases re.
  ###
  exports.getPositivePhrasesRe = getPositivePhrasesRe = ->
    [
      [/[^а-яё]я\s(утверждаю|позволяю|готов|готова|могу|выбираю|создаю|следую|знаю|делаю|понимаю|принимаю\sмеры|доверяю)[^а-яё]/ig,        2.5]
      [/[^а-яё]мы\s(утверждаем|позволяем|готовы|можем|выбираем|создаем|следуем|знаем|делаем|понимаем|принимаем\sмеры|доверяем)[^а-яё]/ig,  3]
      [/[^а-яё]в\sлюбом\sслучае[^а-яё]/ig,                                                                                                 3]
      [/[^а-яё]в\sэтот\sмомент[^а-яё]/ig,                                                                                                  2]
      [/[^а-яё]добро\sпожаловать[^а-яё]/ig,                                                                                                3]
      [/[^а-яё]жизненно\sважный[^а-яё]/ig,                                                                                                 3]
      [/[^а-яё]приходить\sв\sвосторг[^а-яё]/ig,                                                                                            3]
      [/[^а-яё]дружеское\sобщение[^а-яё]/ig,                                                                                               2]
    ]


  ###
  Get array of negative phrases re.
  ###
  exports.getNegativePhrasesRe = getNegativePhrasesRe = ->
    [
      [/[^а-яё]при\sотягчающих\sобстоятельствах[^а-яё]/ig                          , 2]
      [/[^а-яё]ненависть\sк[^а-яё]/ig                                              , 3]
      [/[^а-яё]в\sубыток[^а-яё]/ig                                                 , 2]
      [/[^а-яё]сыт[аы]?\sпо\sгорло[^а-яё]/ig                                       , 3]
      [/[^а-яё]заслужива[ею]т\sнаказания[^а-яё]/ig                                 , 2]
      [/[^а-яё]находящ(егося|ейся|емся|ихся)\sпод\sугрозой\sисчезновения[^а-яё]/ig , 3]
      [/[^а-яё]в\sзаблуждение[^а-яё]/ig                                            , 2]
      [/[^а-яё]сбит[аы]?\sс\sтолку[^а-яё]/ig                                       , 2]
      [/[^а-яё]в\sужасе[^а-яё]/ig                                                  , 3]
      [/[^а-яё]не\sрекоменд(ую|уем|уется|овал|овала|овали)[^а-яё]/ig               , 2]
      [/[^а-яё]не\sодобря(ю|ем|л|ла|ли|ется)[^а-яё]/ig                             , 2]
      [/[^а-яё]пятно\sна[^а-яё]/ig                                                 , 2]
      [/[^а-яё]в\sклетке[^а-яё]/ig                                                 , 1.1]
      [/[^а-яё]неправильно\sпонял[аи]?[^а-яё]/ig                                   , 2]
      [/[^а-яё]вне\sпределов\sдосягаемости[^а-яё]/ig                               , 1]
      [/[^а-яё]взял[аи]?\sна[^а-яё]/ig                                             , 2]
      [/[^а-яё]играл[аи]?\sс[^а-яё]/ig                                             , 2]
      [/[^а-яё]черный\sсписок[^а-яё]/ig                                            , 3]
      [/[^а-яё]возбужден[оы]\sуголовн(ое|ые)\sдел[оа][^а-яё]/ig                    , 2 * 2 * 2]
      [/[^а-яё]жертв(|а|ы|ам|ами)[^а-яё]/ig                                        , 3]
      [/[^а-яё]крича(ть|л|ла|ли|) на[^а-яё]/ig                                     , 2 * 1.1]
    ]

  ###
  Evalute neutrality score for sentence.

  ###
  exports.evaluateSentenceNeutrality = evaluateSentenceNeutrality = (sentence, resultObject) ->
    # check out proper names!

    evalScore = (sentenceWords, phrasesReList, wordsIncline, verbs, adjectives, negate) ->
      cur_index  = 0
      index      = 0
      words      = []
      curWords   = []


      resetCurIndex =  ->
        if cur_index
          index += cur_index
          words.push curWords
          curWords = []
          cur_index = 0


      for nr in phrasesReList
        m = sentence.match nr[0]
        if m
          m.map (wordsSequence) -> words.push wordsSequence
          index += negate nr[1] * m.length

      for wrd in sentenceWords
        if wrd in ".,-—!?()[]"
          cur_index = negate cur_index
          resetCurIndex()
          continue

        ind = wordsIncline[wrd.toLowerCase()]
        if ind
          curWords.push wrd
          cur_index = cur_index * ind || ind
        else
          adjArray = inclines.getInitialFormOfAdjective wrd
          unless adjArray
            # check for verbs
            verb = inclines.getVerbInfinitive wrd
            vIndex = verbs[verb]
            if vIndex
              curWords.push wrd
              cur_index = cur_index * vIndex || vIndex
            else
              cur_index = negate cur_index
              resetCurIndex()
          else
            for adj in adjArray
              adjIndex = adjectives[adj]
              if adjIndex
                curWords.push wrd
                cur_index = cur_index * adjIndex || adjIndex
                break
      cur_index = negate cur_index unless cur_index is 0
      resetCurIndex()
      [index, words]

    # evaluate negative score
    sentenceWords = sentence.split /\s/
    [negIndex, negWords] = evalScore(sentenceWords, getNegativePhrasesRe(), negativeWordsIncline, negativeVerbs, negativeAdjectives, (x) -> -Math.abs x)

    # evaluate positive score
    [posIndex, posWords] = evalScore(sentenceWords, getPositivePhrasesRe(), positiveWordsIncline, positiveVerbs, positiveAdjectives, (x) -> x)

    [posIndex + negIndex, posIndex, posWords, negIndex, negWords]

  ###
  Detect emotional tone by score value.

  @param {Number} score Emotional score value
  @return {String} tone Emotional tone description
  ###
  exports.getEmotionalToneByScore = getEmotionalToneByScore = (score) ->
    if score > 0.3
      "very strong positive"
    else if score > 0.2
      "strong positive"
    else if score > 0.08
      "moderate positive"
    else if score > 0.02
      "a small positive"
    else if score < -0.3
      "very strong negative"
    else if score < -0.2
      "strong negative"
    else if score < -0.08
      "moderate negative"
    else if score < -0.02
      "a small negative"
    else
      "neutral"



  ###
  Extract pattern words from array of word sentence.

  @param {Array} words Array or word objects, @see `plugins.ru.inclines.classifyWord`
  @param {Array|null} phrasesPatters Array of phrases patterns, :optional
  ###
  exports.extractPatterns = extractPatterns = (words, patterns=null) ->
    unless patterns
      patterns = [
        "pron.adj.noun"            # местоим прил сущ
        "pron.noun"                # местоим сущ
        "prep.noun"                # предлог сущ
        "prep.adj.noun"            # предлог прил сущ
        "adj.adj.adj.adj.adj.noun" # 5 прил. cущ
        "adj.adj.adj.adj.noun"     # 4 прил. cущ
        "adj.adj.adj.noun"         # 3 прил. cущ
        "adj.adj.noun"             # 2 прил. cущ
        "adj.noun"                 # 1 прил. cущ
# pron.verb.adj.
#        "verb.noun"
#        "pron.verb.pron.prep.noun"
#        "pron.verb.pron.prep.noun"
      ]
    words = words[0..-1]
    arrayOfPhrases = []
    maxIndex = words.length
    while words.length > 0
      shift = 1
      for pat in patterns
        pwords = pat.split "."
        # the search
        if pwords.length > words.length
          continue

        found = yes
        for i in [0...pwords.length]
          if -1 is words[i].type.indexOf pwords[i]
            found = no
            break

        if found
          phrase = []
          for j in [0...i]
            phrase.push words[j].src#infinitive
          arrayOfPhrases.push phrase
          shift = phrase.length
          break
      while shift > 0
        words.shift()
        shift -= 1


    arrayOfPhrases              # todo replace array of phrases by array of word objects

  ###
  Check if word match any component of name in personsDict (first name, middle name, surname).

  @param {Array} words Array of source words
  @param {Objects} personsDict dictionary with persons,
                   @see `plugins.ru.inclines.findProperName`
  @param {String} result Return key from personsDict if person was found, or null.
  ###
  matchPersonName = (words, personsDict={}) ->
    text = words.join(" ").toLowerCase()
    result = null
    if 1 < text.length
      for k, val of personsDict
        break if result
        for s in val.src
          if 0 is s.toLowerCase().indexOf text
            result = k
            break
    result

  ###
  Split sentence by grouping logical words.

  @param {String} sentence Normalized sentence.
  ###
  exports.parseSentence = parseSentence = (sentence, personsDict={}) ->
    extractedWords  = []
    lastPname       = null
    openQuote       = no
    qq              = quotes.getQuotes sentence
    wordsChain      = []



    for word in sentence.split " "
      if /^[-!,?\"\'\.а-яё]+$/i.test word
        wordsChain.push word       # remove this chain at all?
        pnFound    = matchPersonName wordsChain, personsDict
        lastPname  = pnFound if pnFound
        unless pnFound             # match not found
          if lastPname
            pnWord =
              type       : "pron/PN"
              obj        : personsDict[lastPname]
              src        : wordsChain[..-2].join " "
              propername : yes
              infinitive : "<#{lastPname}>"

            extractedWords.push pnWord

          iw = inclines.classifyWord(word)
          extractedWords.push iw

          wordsChain = []
          lastPname = null
      else
        if lastPname
          pnWord =
            type       : "pron/PN"
            obj        : personsDict[lastPname] #wordsChain[0..-1]
            src        : wordsChain[..-2].join " "
            propername : yes
            infinitive : "<#{lastPname}>" #lastPname.replace("-", " ").replace /\s+/, " "
          extractedWords.push pnWord

        wordsChain = []
        lastPname = null

    result =
      quotes         : qq
      extractedWords : extractPatterns extractedWords
      ew             : extractedWords.map (z) -> z.infinitive


  ###
  Extract feelengs from text. This filter use results of misc `filter`.

  @param {String} text Source text ( not used)
  @param {Object} result Resulting object, that contain `feelings`
                         field after applying this filter.
  ###
  exports.postFilter = (text, result) ->
    # todo add persons as acting objects
    emoIndex      = []
    overallIndex  = 0
    absIndex      = 0
    properNames   = if result.ru?.persons? then result.ru.persons else {}

    for s,i in result.misc.sentences
      pps = parseSentence s, properNames
      console.log "pps [ #{i} ] = #{JSON.stringify pps}"
      [index, posIndex, posWords, negIndex, negWords] = evaluateSentenceNeutrality s, result
      emoIndex.push [index, {pi: posIndex, pw: posWords, ni: negIndex, nw: negWords}]
      overallIndex += index
      absIndex     += posIndex - negIndex

    unless result.counters.words_total
      emoScore = 0
    else
      # exclude all neutral words that can detect: stop words, proper names
      excludeWc = result.counters.stop_words_total
      for k, p of properNames
        p.src.map (refName) -> excludeWc += refName.split(" ").length

      if result.ru?.abbrevs?
        for a, count of result.ru.abbrevs
          excludeWc += count

      emoScore = overallIndex / excludeWc

    result.feelings =
      emoIndex     : emoIndex
      overallIndex : overallIndex
      emoScore     : emoScore
      emoTone      : getEmotionalToneByScore emoScore
      absIndex     : absIndex
#      properNames  : properNames

)(exports, inclines, quotes)