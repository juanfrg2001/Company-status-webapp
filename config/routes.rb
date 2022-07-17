Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :companies, param: :slug
      resources :company_reviews, only: [:create, :destroy]
    end
  end

  
end
