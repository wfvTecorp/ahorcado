

require 'sinatra'


get '/' do
    erb :principal
end


enable :sessions
post '/juego' do
	@palabra = params[:palabra]
	if @palabra.length == 1

		erb :juego
	else
		session[:palabra] = @palabra.chars
		session[:longitud] = @palabra.length
		session[:lista] = []
		session[:palabra].each do |elemento|
			session[:lista].push("_")
		end
		erb :juego
	end 
end



