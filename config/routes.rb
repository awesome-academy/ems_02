Rails.application.routes.draw do
  root "session#new"

  get "supervisor/index"
  get "trainee/index"
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

  resources :users  
  resources :subjects
  resources :questions
  resources :exams
  resources :active_users_in_subject
  resources :user_has_subjects
end
