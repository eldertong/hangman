require 'sinatra'
require 'rubygems'
require_relative 'hangman_class.rb'

enable :sessions



get '/' do
    erb :enter_word
end

post '/word' do
    word = params[:word]
    session[:play] = Hangman.new(word)
    redirect '/play_game'
    puts "word is #{@word}"
end

get '/play_game' do
    erb :play_game
end

