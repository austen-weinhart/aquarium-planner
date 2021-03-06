Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get "fish/:id" => "fishes#show", as: :fish
  get "users" => "users#index"
  get "signup" => "users#new"
  post "users" => "users#create"
  get "user/:id" => "users#show"

  get "plan" => "aquaria#new", as: :new_aquarium
  get "aquaria" => "aquaria#index"
  get "aquaria/:id" => "aquaria#show", as: :aquarium
  post "aquaria" => "aquaria#create"

  get "aquaria/:id/edit" => "aquaria#edit", as: :edit_aquarium
  patch "aquaria/:id" => "aquaria#update"
  delete "aquaria/:id" => "aquaria#destroy"

  # routes for logging in/out
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
