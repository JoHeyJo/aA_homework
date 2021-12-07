Rails.application.routes.draw do
  # get 'cats_controller/index'
  # get 'cats_controller/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats, only: [:index, :show, :new, :create, :edit]
end
