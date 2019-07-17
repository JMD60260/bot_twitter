# frozen_string_literal: true.

require 'pry'
require 'dotenv'
require 'rubocop'
require 'rspec'
require 'twitter'

Dotenv.load('../.env')  
 # Ceci appelle le fichier .env (situé dans le même dossier que celui d'où tu exécute app.rb)
 # et grâce à la gem Dotenv, on importe toutes les données enregistrées dans un hash ENV
 # quelques lignes qui appellent les clés d'API de ton fichier .env
def login_twitter
 client = Twitter::REST::Client.new do |config|
   config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
   config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
   config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
   config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
 end
 # ligne qui permet de tweeter sur ton compte
 client.update('Mon premier tweet en Ruby!!!!')
end
