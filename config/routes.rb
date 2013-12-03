EcommStore::Application.routes.draw do
  get "products/index"

  get "products/show"

  get "store/index"

  get "store/show"

  root :to => 'store#index', :via => :get

  match 'products/:id' => 'store#show', :as => :store_product, :via => :get

  match 'search' => 'store#search', :as => 'search', :via => :get

  match 'search_results' => 'store#search_results', :as => 'search_results', :via => :post

  match 'light_weight' => 'store#light_weight', :as => 'light_weight', :via => :get

  match 'light_weight_results' => 'store#light_weight_results', :as => 'light_weight_results', :via => :post

  match 'forged' => 'store#forged', :as => 'forged', :via => :get

  match 'forged_results' => 'store#forged_results', :as => 'forged_results', :via => :post

  match 'off_road' => 'store#off_road', :as => 'off_road', :via => :get

  match 'off_road_results' => 'store#off_road_results', :as => 'off_road_results', :via => :post

  match 'classic' => 'store#classic', :as => 'classic', :via => :get

  match 'classic_results' => 'store#classic_results', :as => 'classic_results', :via => :post

  match 'cast' => 'store#cast', :as => 'cast', :via => :get

  match 'cast_results' => 'store#cast_results', :as => 'cast_results', :via => :post

  match 'about_us' => 'store#about_us', :as => 'about_us', :via => :get

  match 'contact_us' => 'store#contact_us', :as => 'contact_us', :via => :get

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
