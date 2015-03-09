Rails.application.routes.draw do

  resources :users do
    resources :basketball_games
    resources :user_relationships
    get 'feed' => 'basketball_games#get_user_feed'
  end

  resources :basketball_games
  resources :user_relationships

  root 'home#index'
  get 'code' => 'home#code'
  get 'pitch' => 'demo#pitch'
  get 'demo/1' => 'demo#demo1'
  get 'demo/2' => 'demo#demo2'
  get 'final' => 'demo#final'
  get 'user_id/:username' => 'users#get_by_username'
  get 'users/:id/following' => 'users#get_friends'
  get 'relationship/:user_id/:following_id' => 'user_relationships#get_relationship'

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
