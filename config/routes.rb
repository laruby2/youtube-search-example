Rails.application.routes.draw do
  resources :words do
    post 'search', on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'words#index'
end
