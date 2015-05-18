Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  namespace :learn_more do
    get :about
    get :associate_membership
    get :symbols
    get :mission
    get :creed
  end

  namespace :house_duty_manager do
    root 'public#index'
    resources :house_duties
    resources :weekly_rosters
  end

  namespace :alpha do
    root 'public#index'
  end

  namespace :beta do
    root 'public#index'
  end

  namespace :gamma do
    root 'public#index'
  end

  namespace :delta do
    root 'public#index'
  end

  namespace :user_profile do
    root 'user_profile#index'
  end

  resources :announcements do
    collection do
      get :tags
      get '/tags/*tags', to: 'announcements#tagged', as: 'tagged'
    end
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }
end
