class Speaker < ActiveRecord::Base
  SPEAKER_GENDERS  = [:male, :female]
  LEARNING_METHODS = [:acad, :nat]
  enum gender: SPEAKER_GENDERS
  enum learning_method: LEARNING_METHODS
  belongs_to :city
  belongs_to :state
  belongs_to :country
  belongs_to :native_language
  belongs_to :english_country_residence
  validates :gender, inclusion: {in: SPEAKER_GENDERS.map { |sg| sg.to_s }}
  validates :learning_method, inclusion: {in: LEARNING_METHODS.map { |l| l.to_s }}
  validates :other_languages, :numericality => { :greater_than_or_equal_to => 0 }
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
  validates :english_onset, :numericality => { :greater_than_or_equal_to => 0 }
  validates :length_english_residence,  :numericality => { :greater_than_or_equal_to => 0 }

  belongs_to :user
  validates_presence_of :name, :city, :country, :native_language, :other_languages, :age, :gender, :english_onset,
                        :learning_method, :length_english_residence
  has_many :phonemes, dependent: :destroy

  # City getter
  def city_name
    city.try(:name)
  end

  # City setter
  def city_name=(name)
    self.city = City.find_or_create_by(name: name) if name.present?
  end

  # State getter
  def state_name
    state.try(:name)
  end

  # State setter
  def state_name=(name)
    self.state = State.find_or_create_by(name: name) if name.present?
  end

  # Country getter
  def country_name
    country.try(:name)
  end

  # Country setter
  def country_name=(name)
    self.country = Country.find_or_create_by(name: name) if name.present?
  end

  # Native Language getter
  def native_language_name
    native_language.try(:name)
  end

  # Native Language setter
  def native_language_name=(name)
    self.native_language = NativeLanguage.find_or_create_by(name: name) if name.present?
  end

  # English Country Residence getter
  def english_country_residence_name
    english_country_residence.try(:name)
  end

  # English Country Residence setter
  def english_country_residence_name=(name)
    self.english_country_residence = EnglishCountryResidence.find_or_create_by(name: name) if name.present?
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |speaker|
        csv << speaker.attributes.values_at(*column_names)
      end
    end
  end

end



