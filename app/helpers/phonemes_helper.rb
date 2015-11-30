module PhonemesHelper
  def split_text_on_space(text_file)
    text_file_array = ''
    File.open(text_file, 'r').each_line do |line|
      text_file_array = line.split(' ')
    end
    return text_file_array
  end

  def remove_punctuation(text_array)
    # Remove commas, colons and periods
    text_array.each do |word|
      word.tr!('.', '')
      word.tr!(':', '')
      word.tr!(',', '')
    end
  end
end
