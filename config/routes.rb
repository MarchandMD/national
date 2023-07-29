Rails.application.routes.draw do
  root "homepage#index"
  get "/schedule", to: "schedule#index"
end
