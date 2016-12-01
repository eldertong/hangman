require 'sinatra'
require 'rubygems'
require_relative 'hangman_class.rb'

get '/' do
    erb :home
end