# Output module to show kwic indexes
module Output
  def self.print_screen(kwic_indexes)
    kwic_indexes.each do |kwic|
      puts
      puts kwic
    end
  end
end
