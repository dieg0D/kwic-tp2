# Shifter module to handle circlular shifts on a title
module Shifter
  def self.split_title(title)
    title.split
  end

  def self.circular_shift(line, all_shifts)
    words = split_title line
    words.each do
      all_shifts << words.rotate!.join(' ')
    end
  end

  def self.shift_titles(input_titles)
    all_shifts = []
    input_titles.each do |title|
      circular_shift(title, all_shifts)
    end
    all_shifts
  end
end
