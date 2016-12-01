require "minitest/autorun"
require_relative "hangman_class.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_word
        game_word = Hangman.new("House")
        assert_equal("house", game_word.word)
    end

    def test_input_word_is_split_to_array_of_strings
        game_word = Hangman.new("House")
        assert_equal(["h", "o", "u", "s", "e"], game_word.input_secret_word)
    end

    # def test_word_returns_empty_array_same_number_of_strings
    #     game_word = Hangman.new("House")
    #     assert_equal(["", "", "", "", ""], game_word.secret_word_displayed)
    # end

    def test_o_is_a_correct_guess
        game_word = Hangman.new("House")
        @letter_guess = "o"
        assert_equal(true, game_word.word_include?(@letter_guess))
    end

    def test_r_is_a_false_guess
        game_word = Hangman.new("House")
        @letter_guess = "r"
        assert_equal(false, game_word.word_include?(@letter_guess))
    end

    def test_r_is_pushed_into_guessed_letters_array
        game_word = Hangman.new("House")
        @letter_guess = "r"
        assert_equal(["r"], game_word.guessed_letters_array(@letter_guess))
    end

    def test_correct_guesses_are_pushed_into_solved_array
        game_word = Hangman.new("House")
        @letter_guess = "o"
        assert_equal(["o"], game_word.correct_guesses_array(@letter_guess))
    end
    
    # def test_correct_guesses_in_solved_array_are_in_correct_order
    #     game_word = Hangman.new("House")
    #     @letter_guess = "o"
    #     assert_equal(["", "o", "", "", ""], game_word.blank_word_gets_filled_with_correct_guess(@letter_guess))
    # end

    def test_correct_guess_letter_finds_first_occurance_of_o
        game_word = Hangman.new("House")
        @letter_guess = "o"
        assert_equal(1, game_word.find_first_occurance_of_correct_letter_in_source_word(@letter_guess))
    end

    # def test_correct_guess_letter_finds_first_occurance_of_o
    #     game_word = Hangman.new("House")
    #     @letter_guess = "u"
    #     assert_equal(2, game_word.find_first_occurance_of_correct_letter_in_source_word(@letter_guess))
    # end

    def test_full_array_returns_winner
        game_word = Hangman.new("House")
        @blank_word = ["h", "o", "u","s", "e"]
        assert_equal(true, game_word.no_empty_strings_left?(blank_word))
    end

    def test_full_array_returns_winner
        game_word = Hangman.new("House")
        @blank_word = ["h", "", "u","s", "e"]
        assert_equal(false, game_word.no_empty_strings_left?(@blank_word))
    end

    def test_game_over_if_guessed_letters_is_greater_than_5_more_than_correct_letters
        game_word = Hangman.new("House")
        @correct_guesses = ["h", "u","s", "e"]
        @guessed_letters = ["a", "b", "c", "d", "f", "g", "i", "j", "k", "l", "k"]
        assert_equal(true, game_word.game_over?(@correct_guesses, @guessed_letters))
    end

end