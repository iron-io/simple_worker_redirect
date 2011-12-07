require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
  erb :hello
end

get '*' do
  if request.host == "blog.simpleworker.com"
    redirect "#{request.scheme}://blog.iron.io#{request.path}"
    return
  end
  redirect '/'
end
