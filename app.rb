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

get '/named-cat' do
  p params
  @user_name = params[:namee]
  @user_color = params[:color]
  erb(:index)
end