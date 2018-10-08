require_relative '../modules/input/input.rb'

describe Input do
    describe 'verifying that the file not exists' do

        context 'when file not exists' do
            it 'return false' do
                file_path = '../resources/teste.txt'
                
                file_exists = File.exists?(file_path)
                
                expect(file_exists).to be false
            end
        end

        context 'when file exists' do
            it 'verifying that the file exists' do
                file_path = '../resources/test.txt'
                
                file_exists = File.exists?(file_path)
                
                expect(file_exists).to be true
            end
        end
    end
    
    
    it "file must have text" do
        file_path = '../resources/test.txt'
        input = Input.read_file(file_path)
        expect(input).not_to be_nil
    end


    it "input should be string" do
        file_path = '../resources/test.txt'
        input = Input.read_file(file_path)
        expect(input.length).to be > 0
    end
end