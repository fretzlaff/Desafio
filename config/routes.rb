Rails.application.routes.draw do

  root 'welcome#index'
  
  get 'welcome/index'
  get 'targeting', to: 'contacts#targeting'

  resources :criteria
  resources :targets
  resources :contacts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
