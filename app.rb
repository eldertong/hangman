class Hangman
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def input_secret_word
        @split_word = @word.split("")
    end

    def secret_word_displayed
        number_of_blanks = @word.length
        blank_word = Array.new(number_of_blanks, "")
    end

        

end