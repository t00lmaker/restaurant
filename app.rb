require 'sinatra'
require 'sinatra/activerecord'


set :database, "sqlite3:restaurant.sqlite3"


get '/' do
  'Hello world!'
end

