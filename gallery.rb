require 'sinatra'

get '/' do 
 erb :main
end

post '/result' do
    erb :result, :locals => { :username => params[:username] }
    erb :result, :locals => { :password => params[:password] }
end

helpers do
    include Rack::Utils
    alias_method :h, :escape_html
end

