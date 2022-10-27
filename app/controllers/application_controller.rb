class ApplicationController < ActionController::Base

  def dashboard
    render ({:template => "home/dashboard.html.erb"})
  end
end
