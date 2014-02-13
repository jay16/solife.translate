#encoding: utf-8
FocusFruit::Application.routes.draw do

  devise_for :users

  get "home/index"

=begin
  #权限管理
  devise_for :users,
    :controllers => {
    :sessions => :sessions
  }
  devise_scope :user do
    get "/users/ruler" => "users#ruler"
    get "/users/sign_in",  :to => "sessions#new",     :as => :new_user_session
    get "/users/switch",   :to => "sessions#new",     :as => :switch_user_session
    get "/users/sign_out", :to => "sessions#destroy", :as => :destroy_user_session
    get "/users/logout",   :to => "sessions#destroy"
  end
=end
  root :to => "home#index"


  match ":controller(/:action(/:id))(.:format)"
end
