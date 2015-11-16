class Speaker < ActiveRecord::Base
  SPEAKER_GENDERS  = [:male, :female]
  LEARNING_METHODS = [:acad, :nat]
  enum gender: SPEAKER_GENDERS
  enum learning_method: LEARNING_METHODS
  belongs_to :city
  belongs_to :state
  belongs_to :country
  belongs_to :native_language
  validates :gender, inclusion: {in: SPEAKER_GENDERS.map { |sg| sg.to_s }}
  validates :learning_method, inclusion: {in: LEARNING_METHODS.map { |l| l.to_s }}
  belongs_to :english_country_residence
  belongs_to :user
  validates_presence_of :name, :city, :country, :native_language, :other_languages, :age, :gender, :english_onset,
                        :learning_method, :length_english_residence
end
