Rails.application.routes.draw do
  
  get '/' => 'routes#home', as: 'root'
  get '/routes/search/' => 'routes#search', as: "search_routes"

  resources :routes do 
  	resources :points

end

end