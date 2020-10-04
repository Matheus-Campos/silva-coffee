Rails.application.routes.draw do
  get '/', to: 'application#root'

  scope 'v1' do
    namespace :client do
      resources :auth, only: [] do
        collection do
          post :sign_in
          post :sign_up
        end
      end
    end

    namespace :admin do
      resources :auth, only: [] do
        collection do
          post :sign_in
        end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
