Rails.application.routes.draw do
  root to: "member/home#show"

  devise_for :users, controllers: {
    sessions: 'users/sessions'
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
