Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'posts#index'
  mount ActionCable.server => '/cable'

  get 'dashboard', to: 'dashboard#overview', as: :dashboard

  resources :chatrooms, only: [:create, :show, :update, :index] do
    resources :messages, only: [:create]
  end

  resources :tagged_user, only: [:create]

  resources :posts, only: [:index, :new, :create, :show]

  resources :user_instruments, only: [:new, :create]

  resources :user_genres, only: [:new, :create]

  resources :profiles, only: [:index, :show]

  patch '/profiles/:id/mark', to: 'profiles#available', as: :toggle_availability

  # social gem routes

  post 'profiles/:id/follow', to: 'profiles#follow', as: :follow
  post 'pages/friendlist/:id/follow', to: 'pages#follow_two', as: :follow_two
  # Don't ask questions I'm just lazy
  get 'pages/friendlist', to: 'pages#friendlist', as: :friendlist
  post 'posts/:id/like', to: 'posts#like', as: :like
end
