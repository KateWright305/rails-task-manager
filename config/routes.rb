Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: :task
end
