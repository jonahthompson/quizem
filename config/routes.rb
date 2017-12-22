Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
  resources :taken_questions, only: [:create, :destroy]
  resources :user_quizzes
  resources :users, only: [:show]
  resources :quizzes, only: [:index, :create, :show, :edit, :update, :destroy]
	root "home#index"

end
