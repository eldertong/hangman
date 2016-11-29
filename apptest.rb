require "minitest/autorun"
require_relative "app.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_array_with_number_of_letters_empty_stringed
        guess_word = Hangman.new(4)
        assert_equal([" "," "," "," "], guess_word.empty_blanks_for_word)
    end

    def test_input_word_returns_array_with_each_letter_as_string
        input_word = "House"
        assert_equal(["H", "o", "u", "s", "e"], input_word.game_word)
    end

end