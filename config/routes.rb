Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home_pages#home'

  get 'team' => 'team_pages#team'

  get 'contact' => 'contact_pages#contact'

  get '/welcome/:first_name' => 'welcome_pages#welcome'

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"  

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create" 
 



  delete "logout", to: "sessions#destroy"

end
