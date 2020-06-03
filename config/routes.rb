Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'posts#index'

  get 'dashboard', to: 'dashboard#overview', as: :dashboard

  resources :chatroom, only: [:create, :show, :update] do
    resources :messages, only: [:create]
  end

  resources :tagged_user, only: [:create]

  resources :posts, only: [:index, :new, :create, :show]

  resources :user_instruments, only: [:new, :create]

  resources :profiles, only: [:index, :show]

end
