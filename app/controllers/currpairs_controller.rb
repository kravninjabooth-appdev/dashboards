class CurrpairsController < ApplicationController
  def forex   

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_of_symbols = @symbols_hash.keys
    render({:template => "currency_templates/forex.html.erb"})
  end

  def second_currency
    #display_cur_conversion 
    #Parameters: {"cur_symbol"=>"AED"}  

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    
    @from_symbol = params.fetch("cur_symbol")
    render({:template => "currency_templates/second_currency.html.erb"})
  end

  def currency_conversion
    #display_cur_conversion 
    #Parameters: {"cur_symbol"=>"AED"}  

    @raw_data = open(" https://api.exchangerate.host/convert?from=#{@from
    }&to=#{}").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    
    @from_symbol = params.fetch("cur_symbol")
    render({:template => "currency_templates/currency_conversion.html.erb"})
  end


end
