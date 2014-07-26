Nebulr::Application.routes.draw do
  root to:'home#index'

  resources :users

  resources :questions do
    resources :answers
  end

end
