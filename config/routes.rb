Rails.application.routes.draw do
  resources :dogs
  resources :employees, except: :delete

  post '/dogs/sorted', to: 'dogs#sorted'
  get '/dogs', to: 'dogs#sorted'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
