class Hangman
    attr_accessor :word, :guessed_letters, :correct_guesses, :blank_word, :position_in_secret_word
  
    def initialize(word)
        @word = word.downcase!
        @correct_guesses = []
        @guessed_letters = []
        @blank_word = Array.new(word.length, "")
        @position_in_secret_word = @word.index(letter_guess)
    end

    def input_secret_word
        @split_word = @word.split("")
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
        @blank_word[@position_in_secret_word] = letter_guess
        # "blank word is #{@blank_word}"
    end

    def secret_word_correct_guesses_removed_from_array
        @split_word.delete(letter_guess)
    end

    # def find_first_occurance_of_correct_letter_in_source_word(letter_guess)
    #     @position_in_secret_word = @word.index(letter_guess)
    # end

    def no_empty_strings_left?(blank_word)
        if blank_word.include?("")
            false
        else
            true
        end
    end

    def game_over?(correct_guesses, guessed_letters)
        if guessed_letters.length + 5 >= correct_guesses.length
            true
        end
    end

end