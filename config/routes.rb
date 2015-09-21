Splurty::Application.routes.draw do
  root 'quotes#index'
  resources :quotes
  get 'about', :to => 'quotes#about'

  #The priority is based upon order of creationL First created -> highest priority
    
  
end
