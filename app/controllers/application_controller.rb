class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Used to create a phonemes array of size n
  def create_phoneme_array(n)
    phoneme_array = []
    n.times do
      phoneme_array << Phoneme.new
    end
    return phoneme_array
  end

  # Compare base and actual diacritics to determine if the number of commas match
  def compare_commas(base, actual)
    bc = base.count(',')
    ac = actual.count(',')
    if (bc == ac)
      return true
    else
      return false
    end
  end

  # Get the diacritics that exist within the base diacritic and return them as a string separated by commas
  def get_diacritics(base)
    da = []
    ba = base.split(',')
    ba.each do |d|
      r = d.scan(/;(\\.\d+)?/)
      r.each { |i| da << i } if (r != nil)
    end
    da = da.join(',')
    return da
  end
end