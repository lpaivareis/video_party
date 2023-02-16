Rails.application.routes.draw do
  resources :parties

  root to: "parties#index"
end
