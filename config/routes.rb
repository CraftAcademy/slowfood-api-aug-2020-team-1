Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :pings, only: [:index], constraints: { format: 'json' }
    end

    namespace :v1, defaults: { format: :json } do
      resources :products, only: [:index]
    end
  end
end
