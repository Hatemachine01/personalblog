Rails.application.routes.draw do
  #mount Ckeditor::Engine => '/ckeditor'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'posts#index'
  resources :posts
end