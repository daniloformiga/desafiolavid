class MainController < ApplicationController

	def index

	end


	def enviar
	
		@entrada = params[:entrada]
		@entrada.reverse!.upcase!
		respond_to do |format|
		    format.json {render json: @entrada, :status => :ok}
		end
	end

end
