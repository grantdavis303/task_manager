Rails.application.routes.draw do

  root to: "welcome#index"

  get "/tasks", to: "tasks#index"
  get "/tasks/new", to: "tasks#new"

end
