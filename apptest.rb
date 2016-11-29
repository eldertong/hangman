require "minitest/autorun"
require_relative "app.rb"

class TestApp < Minitest::Test

    def test_input_word_returns_array_with_number_of_letters_empty_stringed
        guess_word = Hangman.new(4)
        assert_equal([" "," "," "," "], guess_word.word)
    end

    def test_house_is_the_game_word
        game_word =  

end