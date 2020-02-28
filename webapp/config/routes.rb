Rails.application.routes.draw do
  root to: "member/home#show"

  # get 'member/:id', to: 'member#show'
  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy'
    get 'users/edit', to: 'devise/registrations#edit'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  scope module: :member do
    resources :home, only: %i(show)
  end

  ### internal API
  namespace :api, format: 'json' do
    namespace :member do
      resource :posts, only: %i(show create)
    end
  end

end
