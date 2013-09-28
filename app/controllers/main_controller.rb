class MainController < ApplicationController

	def index

	end


	def enviar

		entrada = params[:entrada]

		if entrada	

			entrada = entrada.mb_chars.upcase.to_s
			entrada = entrada.reverse		

		
			respond_to do |format|
			format.json {render json: entrada}
			end
		end
	end

end
