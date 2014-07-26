Nebulr::Application.routes.draw do
  root to:'home#index'

  resources :users

  match 'sessions/new' => 'sessions#new'
  match 'sessions/create' => 'sessions#create'
  match 'sessions/exit' => 'sessions#exit'

  match 'user/questions' => 'user#questions'

  resources :questions do
    resources :answers do
      resources :votes
    end
  end

end
