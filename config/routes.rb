Rails.application.routes.draw do
  resources :mains do
    collection do
      post :confirm
    end
  end
end
