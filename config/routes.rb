Rails.application.routes.draw do
  resources :posts do
    collection do
      get :export_csv
    end
  end
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  # mount Sidekiq::Web => '/sidekiq'
end
