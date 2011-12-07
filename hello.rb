require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
  erb :hello
end

get '*' do
  redirect '/'
end
