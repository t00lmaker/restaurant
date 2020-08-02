require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'json'

set :database_file, "./config/database.yml"

get '/' do
  content_type :json
  User.all.to_json
end

