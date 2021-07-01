Rails.application.routes.draw do
  get 'welcome/index'
  get 'authors/:id' => 'welcome#author_details'
  root 'welcome#index'
  resources :authors
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
