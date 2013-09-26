class MainController < ApplicationController

	def index

	end


	def enviar
	
		@entrada = params[:entrada]
		respond_to do |format|
		    format.json {render json: @entrada, :status => :ok}
		  end
	end

end
