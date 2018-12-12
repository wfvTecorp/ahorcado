require 'sinatra'

get '/' do
    erb :principal
end

enable:sessions
post '/ingresar' do
	
	session[:palabra] = params[:palabra]
	erb :juego_temp
end
