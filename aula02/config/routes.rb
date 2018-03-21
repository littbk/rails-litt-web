Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "postagens#home"
  get "postagens/new" => "postagens#new.html.erb"
  post "/postagems" => "postagens#create"
  get "/postagems/:id" => "postagens#show"
end
