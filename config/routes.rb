Rails.application.routes.draw do
  #mount Ckeditor::Engine => '/ckeditor'
  # unless Rails.application.config.consider_all_requests_local
    # having created corresponding controller and action
  # end
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'posts#index'
  resources :posts
  get 'tags/:tag', to: 'posts#index', as: :tag
  match '*unmatched_route', :to => 'errors#error_404', :via => :all
end

