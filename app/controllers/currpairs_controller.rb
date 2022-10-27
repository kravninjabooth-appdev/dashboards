class CurrpairsController < ApplicationController
  def forex   

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_of_symbols = @symbols_hash.keys
    render({:template => "currency_templates/forex.html.erb"})
  end

  def second_currency
    display_cur_conversion   

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_of_symbols = @symbols_hash.keys
    #@a_conversion = @symbols_hash.keys
    render({:template => "currency_templates/second_currency.html.erb"})
  end



end
