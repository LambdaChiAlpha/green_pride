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

  devise_for :users, controllers: { sessions: 'users/sessions' }
end
