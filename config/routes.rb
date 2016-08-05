Rails.application.routes.draw do

  root "staticpages#index"
  get "home" => "staticpages#home"
  #devise_for :users
  # devise_scope :user do
  #   get "login", to: "devise/sessions#new"
  #   get "logout", to: "devise/sessions#delete"
  # end
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
end
