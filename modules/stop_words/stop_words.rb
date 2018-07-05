# Module to handle stop words that may exist in a title
module StopWords
  def self.get_stop_words
    stop_words = []
    File.open('./resources/stop_words.txt', 'r') do |file|
      file.each do |line|
        line.delete!("\n")
        stop_words << line
      end
    end
    stop_words
  end

  def self.remove_stop_words(all_shifts)
    stop_words = get_stop_words
    clean_shifts = []
    all_shifts.each do |shift|
      first_word = shift.split.first
      clean_shifts << shift unless stop_words.include?first_word
    end
    clean_shifts
  end
end
