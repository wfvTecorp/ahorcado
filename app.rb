

require 'sinatra'


get '/' do
    
end

enable :sessions
get '/juego' do
	#@palabra = params[:palabra]
	@palabra = "basura"
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



#prueba para comprobar la session
enable :sessions
get '/vaina' do
	session[:palabra]
end
