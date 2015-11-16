class Phoneme < ActiveRecord::Base
  belongs_to :speaker
  validates_presence_of :base, :actual, :diacritic, :sequence, :speaker
end
