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

<<<<<<< HEAD
  namespace :beta do
    resources :beta
=======
  namespace :gamma do
    root 'gamma#index'
>>>>>>> 8bb4872f1c26962cc82dc51266c4b099a456c20f
  end

  devise_for :users, controllers: { sessions: 'users/sessions' }
end
