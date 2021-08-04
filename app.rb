require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "hello!"
end

get '/secret' do
  "This is a secret"
end

get '/random-cat' do
  @user_name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @user_name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end