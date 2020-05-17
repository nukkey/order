Rails.application.routes.draw do
  root "orders#index"
  resources :orders, only: [:index, :new, :create, :destroy,]do
    collection do
      delete 'destroy_all'
    end
  end
end
