Rails.application.routes.draw do
  devise_for :users, :controllers => {
    users: 'users',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    root "users/registrations#new"
    get "show/:id" => "users#show", as: :user
  end

  resources 'welcome'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
