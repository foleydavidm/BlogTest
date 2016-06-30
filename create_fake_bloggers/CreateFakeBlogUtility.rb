

class CreateFakeBlogPost


  def create_fake_author

    authors = ['J.R.RTolkien', 'C.S.Lewis', 'J.GBallard', 'AnyRand', 'EzraPound', 'WaltWhitman', 'Boethius', 'St.Augustine', 'Virgil', 'Dante', 'Percival']
    random = Random.new
    authors[random.rand(0..10)]

  end

  def create_fake_post
    @finalOutput = ''
    for i in 0..10
      past_tense_verbs = %w[ran sat ate broke died hooked slipped used clicked bootstrapped raged slept thought felt saw hit laughed quit]
      singular_nouns = %w[pasta rocket apple shoe nexus]
      prepositions = %W[under over behind near around above below]

      random_singular_noun = Random.new(i)
      random_singular_noun_two = Random.new(i * 2)

      random_past_tense_verb = Random.new(i + 4)
      random_preposition = Random.new(i*3)

      first_singular_noun = singular_nouns[random_singular_noun.rand(0..4)]
      first_past_tense_verb = past_tense_verbs[random_past_tense_verb.rand(0..10)]
      second_singular_noun = singular_nouns[random_singular_noun_two.rand(0..4)]
      second_past_tense_verb = past_tense_verbs[random_past_tense_verb.rand(0..19)]
      preposition = prepositions[random_preposition.rand(0..2)]
      second_preposition = prepositions[random_preposition.rand(3..5)]

      output = ''
      output += 'I ' + first_past_tense_verb + ' '
      output += preposition + ' the ' + first_singular_noun + ' and '
      output += first_past_tense_verb + ' ' + second_preposition
      output += ' the ' + first_singular_noun + '.'
      output += "\n"

      @finalOutput += output
    end
    @finalOutput
  end

  def create_fake_title
    locations = %w[Alaskan ohio Chicago Vegas Seaside Atlanta London Paris German Louisiana]
    foods = %w[cheesecake twinky oreo applesauce butter-biscuit peanut sugar-cube pasta alfredo coffee soup]
    sad_phrases = ['Daydream', 'Goodbyes', 'Farewell', 'Heartbreak', 'Blues', 'Evermore', 'As it goes', 'One last time']

    random_location_int = Random.new
    random_food_int = Random.new
    random_sad_phrase_int = Random.new

    location = locations[random_location_int.rand(0..9)]
    food = foods[random_food_int.rand(0..10)]
    sad_phrase = sad_phrases[random_sad_phrase_int.rand(0..7)]

    output = location.upcase + ' ' + food.upcase + ' ' + sad_phrase.upcase
  end

  def create_fake_comment
    comments = %w[Incredible Amazing Insightful Crazy Terrible Gag Offensive Funny Relatable Audacious Auspicious Boring Exciting Horrific Hilarious Hysterical Depressing Insane RapGod Cranked Alpha Pumped Vamped Nitro Extreme Conservative Liberal]
    ending_punctuations = %w[… . ! ? !? !?? !! … ]

    random_comment_int = Random.new
    random_punctuation_int = Random.new
    comment = comments[random_comment_int.rand(0..20)]
    ending_punctuation = ending_punctuations[random_punctuation_int.rand(0..6)]

    random_comment_int = Random.new
    random_punctuation_int = Random.new
    comment2 = comments[random_comment_int.rand(0..20)]
    ending_punctuation2 = ending_punctuations[random_punctuation_int.rand(0..6)]


    comment + ending_punctuation + ' ' + comment2 + ending_punctuation2
  end

end