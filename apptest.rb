require "minitest/autorun"
require_relative "app.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_word
        game_word = Hangman.new("House")
        assert_equal("House", game_word.word)
    end

    def test_input_word_is_split_to_array_of_strings
        game_word = Hangman.new("House")
        assert_equal(["H", "o", "u", "s", "e"], game_word.input_secret_word)
    end

    def test_word_returns_empty_array_same_number_of_strings
        game_word = Hangman.new("House")
        assert_equal(["", "", "", "", ""], game_word.secret_word_displayed)
    end


    # def test_input_word_returns_array_with_each_letter_as_string
    #     game = Hangman.new()
    #     input_word

    #     assert_equal(["H", "o", "u", "s", "e"], input_secret_word.input_word)
    # end

end