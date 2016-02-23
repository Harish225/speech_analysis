# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Generate test user
user                    = User.new
user.email              = 'test@example.com'
user.password           = 'testpass'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.save!

# Generate test city
city      = City.new
city.name = 'dhaka'
city.save!

# Generate test state
state      = State.new
state.name = 'jharkhand'
state.save!

# Generate test country
country      = Country.new
country.name = 'bangladesh'
country.save!

# Generate test native language
native_language      = NativeLanguage.new
native_language.name = 'bengali'
native_language.save!

# Generate test english country residence
english_country_residence      = EnglishCountryResidence.new
english_country_residence.name = 'usa'
english_country_residence.save!

# Generate test Speakers
speaker                              = Speaker.new
speaker.name                         = 'bengali1'
speaker.city_id                      = 1
speaker.state_id                     = 1
speaker.country_id                   = 1
speaker.native_language_id           = 1
speaker.other_languages              = 1
speaker.age                          = 23
speaker.gender                       = 1
speaker.english_onset                = 16
speaker.learning_method              = 1
speaker.english_country_residence_id = 1
speaker.length_english_residence     = 1
speaker.user_id                      = 1
speaker.save!

# Generate test Speakers
speaker                              = Speaker.new
speaker.name                         = 'bengali2'
speaker.city_id                      = 1
speaker.state_id                     = 1
speaker.country_id                   = 1
speaker.native_language_id           = 1
speaker.other_languages              = 1
speaker.age                          = 23
speaker.gender                       = 1
speaker.english_onset                = 16
speaker.learning_method              = 1
speaker.english_country_residence_id = 1
speaker.length_english_residence     = 1
speaker.user_id                      = 1
speaker.save!

# Generate test Speakers
speaker                              = Speaker.new
speaker.name                         = 'bengali3'
speaker.city_id                      = 1
speaker.state_id                     = 1
speaker.country_id                   = 1
speaker.native_language_id           = 1
speaker.other_languages              = 1
speaker.age                          = 23
speaker.gender                       = 1
speaker.english_onset                = 16
speaker.learning_method              = 1
speaker.english_country_residence_id = 1
speaker.length_english_residence     = 1
speaker.user_id                      = 1
speaker.save!

# Generate test Phoneme Data
phoneme            = Phoneme.new
phoneme.base       = 'p'
phoneme.actual     = 1
phoneme.diacritic  = nil
phoneme.sequence   = 1
phoneme.speaker_id = 1
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'l'
phoneme.actual     = 2
phoneme.diacritic  = nil
phoneme.sequence   = 2
phoneme.speaker_id = 1
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'i'
phoneme.actual     = 3
phoneme.diacritic  = nil
phoneme.sequence   = 3
phoneme.speaker_id = 1

phoneme            = Phoneme.new
phoneme.base       ='z'
phoneme.actual     = 4
phoneme.diacritic  = nil
phoneme.sequence   = 4
phoneme.speaker_id = 1
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'e'
phoneme.actual     = 8
phoneme.diacritic  = nil
phoneme.sequence   = 5
phoneme.speaker_id = 1
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'c'
phoneme.actual     = 9
phoneme.diacritic  = nil
phoneme.sequence   = 1
phoneme.speaker_id = 2
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'a'
phoneme.actual     = 22
phoneme.diacritic  = nil
phoneme.sequence   = 2
phoneme.speaker_id = 2
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'l'
phoneme.actual     = 24
phoneme.diacritic  = nil
phoneme.sequence   = 3
phoneme.speaker_id = 2
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'l'
phoneme.actual     = 24
phoneme.diacritic  = nil
phoneme.sequence   = 4
phoneme.speaker_id = 2
phoneme.save!

phoneme            = Phoneme.new
phoneme.base       = 'm'
phoneme.actual     = 28
phoneme.diacritic  = nil
phoneme.sequence   = 1
phoneme.speaker_id = 2
phoneme.save!

phoneme           = Phoneme.new
phoneme.base      = 'e;\u700'
phoneme.actual    = 50
phoneme.diacritic = '\u700'
phoneme.sequence  = 2
phoneme.speaker_id = 3
phoneme.save!

phoneme           = Phoneme.new
phoneme.base      = 'l'
phoneme.actual    = 42
phoneme.diacritic = nil
phoneme.sequence  = 3
phoneme.speaker_id = 3
phoneme.save!