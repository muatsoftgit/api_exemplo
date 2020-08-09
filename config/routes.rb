Rails.application.routes.draw do
  #devise_for :users

  # devise_for :users, :controllers => { :sessions => 'users/sessions'}
  # devise_for :users, :controllers => { :registrations => "users/registrations"}
  devise_for :users, :controllers  => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end
  
  # devise_scope :user do
  #   post "users/sign_up", to: "registrations#create"
  #   post "users/sign_in", to: "sessions#create"
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
