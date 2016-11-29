class Hangman
    attr_accessor :empty_blanks_for_word

    def initialize(num_of_letters)
        @empty_blanks_for_word = Array.new(num_of_letters, " ")
    end

end