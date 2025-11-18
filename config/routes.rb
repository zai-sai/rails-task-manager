Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # SHORTCUT
  # resources :tasks

  # READ - all
  root "tasks#index"
  # get "tasks", to: "tasks#index"

  # CREATE - one
  get "tasks/new", to: "tasks#create", as: :new_task
  post "tasks", to: "tasks#add"

  # READ - one
  get "tasks/:id", to: "tasks#show", as: :task

  # UPDATE - one
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # DELETE - one
  delete "tasks/:id", to: "tasks#destroy"
end
