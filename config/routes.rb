Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => 'users/sessions', :omniauth_callbacks => "users/omniauth_callbacks" }
  # devise_scope :user do
  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end

