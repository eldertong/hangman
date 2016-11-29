require "minitest/autorun"
require_relative "app.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_word
        game_word = Hangman.new("House")
        assert_equal("house", game_word.word)
    end

    def test_input_word_is_split_to_array_of_strings
        game_word = Hangman.new("House")
        assert_equal(["h", "o", "u", "s", "e"], game_word.input_secret_word)
    end

    def test_word_returns_empty_array_same_number_of_strings
        game_word = Hangman.new("House")
        assert_equal(["", "", "", "", ""], game_word.secret_word_displayed)
    end

    def test_o_is_a_correct_guess
        game_word = Hangman.new("House")
        letter_guess = "o"
        assert_equal(true, game_word.word_include?(letter_guess))
    end

    def test_r_is_a_false_guess
        game_word = Hangman.new("House")
        letter_guess = "r"
        assert_equal(false, game_word.word_include?(letter_guess))
    end

    # def test_r_is_pushed_into_guessed_letters_array
    #     game_word = Hangman.new("House")
    #     letter_guess = "r"
    #     assert_equal(["r"], game_word.guessed_letters_array(letter_guess))
    # end

    

end