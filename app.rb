require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'json'

set :database_file, "./config/database.yml"

get '/' do
  content_type :json
  User.all.to_json
end


post '/orders' do 
  items_str = request.body.read
  items_hash = JSON.parse(items_str)
  order = Order.create({"status" => "open"})
  items_hash["items"].each do |i|
    i["order_id"] = order.id 
    Item.create(i)  
  end
  halt 201
end

get '/orders/:id' do
  content_type :json
  Order.includes(:items).find(params['id']).to_json 
end 

get '/orders' do
  content_type :json
  Order.includes(:items).all.to_json 
end


