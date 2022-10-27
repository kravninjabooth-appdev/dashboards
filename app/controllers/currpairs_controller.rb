class CurrpairsController < ApplicationController
  def forex   
    render({:template => "currency_templates/forex.html.erb"})
  end
end
