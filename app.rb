class Hangman
    attr_accessor :word, :guessed_letters, :correct_guesses
  
    def initialize(word)
        @word = word.downcase!
        @correct_guesses = []
        @guessed_letters = []
    end

    def input_secret_word
        @split_word = @word.split("")
    end

    def secret_word_displayed
        number_of_blanks = @word.length
        blank_word = Array.new(number_of_blanks, "")
    end

    def word_include?(letter_guess)
        @word.include? letter_guess
    end

    def guessed_letters_array(letter_guess)
        @guessed_letters << letter_guess
    end

    def correct_guesses_array(letter_guess)
        @correct_guesses << letter_guess
    end

    def blank_word_gets_filled_with_correct_guess(letter_guess)
        blank_word = blank_word[1].replace(letter_guess)
    end
end