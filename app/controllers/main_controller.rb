class MainController < ApplicationController

	def index

	end


	def enviar

		if params[:entrada]
			@entrada = params[:entrada]
			@entrada.reverse!.upcase!
			respond_to do |format|
			    format.json {render json: @entrada}
			end
		end
	end

end
