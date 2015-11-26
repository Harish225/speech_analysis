class Phoneme < ActiveRecord::Base
  belongs_to :speaker
  validates_presence_of :base, :actual, :sequence, :speaker
end
