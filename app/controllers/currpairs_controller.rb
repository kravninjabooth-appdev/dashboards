class CurrpairsController < ApplicationController
  def forex   

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)

    #@array_of_symbols 
    render({:template => "currency_templates/forex.html.erb"})
  end
end
