require_relative './modules/input/input'
require_relative './modules/output/output'
require_relative './modules/shifter/circular_shift'
require_relative './modules/stop_words/stop_words'
require_relative './modules/alphabetizer/alphabetizer'
require_relative './modules/dblp/dblp'

puts 'Escolha uma opção: '
puts '1) Usando arquivos txt'
puts '2) Usando DBLP'
resposta = gets.chomp
case resposta
when '1'
    puts 'Digite o nome do arquivo?'
    file = gets.chomp
    if File.exist?("./resources/#{file}.txt")
        input_titles = Input.read_file("./resources/#{file}.txt")
        all_shifts = Shifter.shift_titles input_titles
        clean_shifts = StopWords.remove_stop_words all_shifts
        sorted_titles = Alphabetizer.sort_titles clean_shifts
        Output.print_screen sorted_titles
    else
        puts "Arquivo não existe"
    end
when '2'
    all_titles = DBLP.all_titles
    all_shifts = Shifter.shift_titles all_titles
    clean_shifts = StopWords.remove_stop_words all_shifts
    sorted_titles = Alphabetizer.sort_titles clean_shifts
    Output.print_screen sorted_titles
end