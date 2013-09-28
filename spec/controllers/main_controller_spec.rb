require 'spec_helper'

describe MainController do

	describe "testes do desafio:" do

	 	  it "entrada 1 - verificação igual ao documento passado" do
	    	get :enviar, entrada: 'abcd', format: :json
	    	@response.body.should == 'DCBA'
      	  end

      	  it "entrada 2 - com 184 letras" do
      	  	get :enviar, entrada: 'abcd@$01234567891011121314151617181920!@#$%*()abcd@$01234567891011121314151617181920!@#$%*()abcd@$01234567891011121314151617181920!@#$%*()abcd@$01234567891011121314151617181920!@#$%*()', format: :json
      	  	@response.body.length.should == 184
      	  end

      	  it "entrada 3 - verificando se palavra está vazia e com tamanho 0" do
      	  	get :enviar, entrada: '', format: :json
      	  	@response.body.length.should == 0
      	  	@response.body.should == ''
      	  end

      	   it "entrada 4 - verificando se palavras com acentos funcionam" do
      	  	get :enviar, entrada: 'úáõ', format: :json
      	  	@response.body.should == 'ÕÁÚ'
      	  end


    end

end