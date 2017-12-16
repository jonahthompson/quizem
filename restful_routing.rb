                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       users/sessions#new
            user_session POST   /users/sign_in(.:format)       users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                    user GET    /users/:id(.:format)           users#show
                 quizzes GET    /quizzes(.:format)             quizzes#index
                         POST   /quizzes(.:format)             quizzes#create
                    quiz GET    /quizzes/:id(.:format)         quizzes#show
                         PATCH  /quizzes/:id(.:format)         quizzes#update
                         PUT    /quizzes/:id(.:format)         quizzes#update
                         DELETE /quizzes/:id(.:format)         quizzes#destroy
                    root GET    /                              home#index
