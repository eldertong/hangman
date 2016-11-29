class Hangman
    attr_accessor :empty_blanks_for_word

    def initialize(num_of_letters)
        @empty_blanks_for_word = Array.new(num_of_letters.to_i, " ")
    end

    def input_secret_word(input_word)
        game_word = input_word.split("")
    end
        

end