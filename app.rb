require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "This is a secret"
end