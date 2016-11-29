require "minitest/autorun"
require_relative "app.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_word
        game_word = Hangman.new("House")
        assert_equal("House", game_word.word)
    end

    # def test_input_word_returns_array_with_each_letter_as_string
    #     game = Hangman.new()
    #     input_word

    #     assert_equal(["H", "o", "u", "s", "e"], input_secret_word.input_word)
    # end

end