class Phoneme < ActiveRecord::Base
  belongs_to :speaker
  validates_presence_of :base, :actual, :sequence, :speaker

  # validate :compare_commas

  # Compare base and actual diacritics to determine if the number of commas match
  # def compare_commas(base, actual)
  #   bc = base.count(',')
  #   ac = actual.count(',')
  #   if (bc == ac)
  #     return true
  #   else
  #     return false
  #   end
  # end
end
