# require 'bundler/setup'
# Bundler.require

require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'
require_relative "../artist.rb"

require 'bundler/setup'
Bundler.require

ENV['SINATRA_ENV'] ||= "development"

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists-#{ENV['SINATRA_ENV']}.sqlite"
)
