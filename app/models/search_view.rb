class SearchView < ActiveRecord::Base

  attr_accessor :base, :actual, :diacritic, :speaker, :native_language

  def results

    puts @base
    results = SearchView.where("base LIKE ? OR actual LIKE ? OR diacritic LIKE ? OR SPEAKER_ID LIKE ? OR native_language LIKE ?",
                                "#{@base}","#{@actual}", "#{@diacritic}", "#{@speaker}" , "#{@native_language}")

    end
end