Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "application", :action =>"dashboard"})

  get("/forex", {:controller =>"application ", :action =>"forex"})
end
