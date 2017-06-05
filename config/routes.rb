Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :cats, only: [:index] do
    get :shuffle, on: :collection
    post :vote, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
