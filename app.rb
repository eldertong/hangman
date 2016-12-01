require 'sinatra'
require 'rubygems'
require_relative 'hangman_class.rb'

enable :sessions



get '/' do
    erb :enter_word
end

post '/word' do
    word = params[:word]
    seesion[:play] = Hangman.new(word)

  "Hello World"
end

