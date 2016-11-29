class Hangman
    attr_accessor :word

    def initialize(word)
        @word = word.downcase!
    end

    def input_secret_word
        @split_word = @word.split("")
    end

    def secret_word_displayed
        number_of_blanks = @word.length
        blank_word = Array.new(number_of_blanks, "")
    end

    def word_include?(letter_guess)
        if @word.include? letter_guess
            true
        else
            false
        end
    end

        

end