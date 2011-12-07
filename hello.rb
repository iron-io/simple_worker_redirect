require 'sinatra'

get '/' do
  erb :hello
end

get '*' do
  redirect '/'
end
