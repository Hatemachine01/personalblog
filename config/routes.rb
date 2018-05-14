Rails.application.routes.draw do
  #mount Ckeditor::Engine => '/ckeditor'
  match "*path", to: "static#catch_404", via: :all
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'posts#index'
  resources :posts
  get 'tags/:tag', to: 'posts#index', as: :tag
end