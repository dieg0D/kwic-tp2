# Input module to handle input titles
module Input
  def self.read_file(file_path)
    input_titles = []
    File.open(file_path, 'r') do |file|
      file.each_line do |line|
        input_titles << line
      end
    end
    input_titles
  end
end
