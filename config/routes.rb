Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Custom routes for questions
  get "ask", to: "questions#ask"
  get "answer", to: "questions#answer"

  # Set root path to the 'ask' page
  root "questions#ask"
end
