require 'sinatra'

get '/' do
  "Hello from Sinatra on Heroku!"
end

get '*' do
  redirect '/'
end
