require 'sinatra'
require 'rubygems'
require_relative 'hangman_class.rb'

enable :sessions



get '/' do
    erb :enter_word
end

post '/word' do
    word = params[:word] #because i am not doing anything with it going forward
    session[:game] = Hangman.new(word) #this gives me access to all the methods and variable in hangman class
    # guessed_letters = params[:letter_guess]
    redirect '/play_game'
end

get '/play_game' do
    erb :play_game, :locals => {:guessed_letters => session[:game].guessed_letters, :blank_word => session[:game].blank_word}
    #the above gives you access to guessed_letters and blank_word, these point to the hangman class.rb and make them able to pass to the views
end

post '/letter_guess' do
  letter_guess = params[:letter_guess]
  puts "letter_guess is #{letter_guess}"
end

