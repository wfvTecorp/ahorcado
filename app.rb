

require 'sinatra'


get '/' do
    erb :principal
end


enable :sessions
post '/juego' do
	@palabra = params[:palabra]
	@palabra = @palabra.upcase
	#cuando ingresa la palabra
	if @palabra.length == 1
		existe = false               	
		for i in(0..session[:longitud])
			if(session[:palabra][i] == @palabra)  
				session[:lista][i] = @palabra
				existe = true
        	          end
               	end
		if existe == false
			session[:errores] -= 1
		else
			contador = 0
			for i in(0..session[:longitud])
				if(session[:lista][i] == "_")  
					contador += 1
        	          	end
	               	end
			session[:faltantes] = contador
		end
		if session[:errores] == 0 or session[:faltantes] == 0
			erb :resultado
		else
			erb :juego
		end

	else
	#aqui ingreso la palabra inicial
		session[:palabra] = @palabra.chars
		session[:longitud] = @palabra.length
		session[:lista] = []
		session[:palabra].each do |elemento|
			session[:lista].push("_")
		end

		session[:errores] = 6
		session[:faltantes] = @palabra.length

		erb :juego
	end 
end



