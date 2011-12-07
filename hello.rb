require 'sinatra'

set :public_folder, File.dirname(__FILE__) + '/static'

def blog?
  if request.host == "blog.simpleworker.com"
    redirect "#{request.scheme}://blog.iron.io#{request.path}"
    return true
  end
  false
end

get '/' do
  blog? and return
  erb :hello
end

get '*' do
  blog? and return
  redirect '/'
end
