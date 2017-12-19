Rails.application.routes.draw do

  get 'user_quizzes/index'

  get 'user_quizzes/new'

  get 'user_quizzes/create'

  get 'user_quizzes/show'

  get 'user_quizzes/edit'

  get 'user_quizzes/update'

  get 'user_quizzes/destroy'

  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations'
      }
  resources :users, only: [:show]
  resources :quizzes, only: [:index, :create, :show, :edit, :update, :destroy]
	root "home#index"

end
