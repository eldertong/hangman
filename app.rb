require 'sinatra'
require 'rubygems'
require_relative 'hangman_class.rb'

enable :sessions



    get '/' do
        erb :home
    end

    get '/enter_word'
        erb :enter_word, :locals => { word => :word }
        redirect '/play_game'
    end
