Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
  resources :users, only: [:show]
  resources :quizzes, only: [:index, :create, :show, :update, :destroy]
	root "home#index"

end
