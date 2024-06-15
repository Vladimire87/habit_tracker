Rails.application.routes.draw do
  devise_for :users

  resources :habits do
    resources :progresses
  end

  

  root "home#index"

  get "up" => "rails/health#show", as: :rails_health_check
end
