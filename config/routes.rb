Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'home/index'

  get 'home/intro'
  root "home#index"
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
