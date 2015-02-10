Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  namespace :learn_more do
    get :associate_membership
  end

  namespace :house_duty_manager do
    resources :house_duties
    resources :weekly_rosters
  end

  namespace :beta do
    resources :beta
  end

  namespace :gamma do
    root 'gamma#index'
  end

  namespace :alpha do
    root 'alpha#index'
  end

  resources :announcements do
    collection do
      get :tags
      get '/tags/*tags', to: 'announcements#tagged', as: 'tagged'
    end
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }
end
