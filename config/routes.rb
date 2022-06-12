Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :people, only: [:create, :show, :destroy, :index, :update] do
        resources :cars, only: [:create, :show, :destroy, :index, :update]
      end
    end
  end
end
