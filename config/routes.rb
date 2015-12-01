Rails.application.routes.draw do
  # Routes for the Suggestion resource:
  # CREATE
  get "/suggestions/new", :controller => "suggestions", :action => "new"
  post "/create_suggestion", :controller => "suggestions", :action => "create"

  # READ
  get "/suggestions", :controller => "suggestions", :action => "index"
  get "/suggestions/:id", :controller => "suggestions", :action => "show"

  # UPDATE
  get "/suggestions/:id/edit", :controller => "suggestions", :action => "edit"
  post "/update_suggestion/:id", :controller => "suggestions", :action => "update"

  # DELETE
  get "/delete_suggestion/:id", :controller => "suggestions", :action => "destroy"
  #------------------------------

  # Routes for the Selection resource:
  get "/", :controller => "users", :action => "index"

  # CREATE
  get "/selections/new", :controller => "selections", :action => "new"
  post "/create_selection", :controller => "selections", :action => "create"

  # READ
  get "/selections", :controller => "selections", :action => "index"
  get "/selections/:id", :controller => "selections", :action => "show"

  # UPDATE
  get "/selections/:id/edit", :controller => "selections", :action => "edit"
  post "/update_selection/:id", :controller => "selections", :action => "update"

  # DELETE
  get "/delete_selection/:id", :controller => "selections", :action => "destroy"
  #------------------------------

  # Routes for the Icon resource:
  # CREATE
  get "/icons/new", :controller => "icons", :action => "new"
  post "/create_icon", :controller => "icons", :action => "create"

  # READ
  get "/icons", :controller => "icons", :action => "index"
  get "/icons/:id", :controller => "icons", :action => "show"

  # UPDATE
  get "/icons/:id/edit", :controller => "icons", :action => "edit"
  post "/update_icon/:id", :controller => "icons", :action => "update"

  # DELETE
  get "/delete_icon/:id", :controller => "icons", :action => "destroy"
  #------------------------------

  # Routes for the Song resource:
  # CREATE
  get "/songs/new", :controller => "songs", :action => "new"
  post "/create_song", :controller => "songs", :action => "create"

  # READ
  get "/songs", :controller => "songs", :action => "index"
  get "/songs/:id", :controller => "songs", :action => "show"

  # UPDATE
  get "/songs/:id/edit", :controller => "songs", :action => "edit"
  post "/update_song/:id", :controller => "songs", :action => "update"

  # DELETE
  get "/delete_song/:id", :controller => "songs", :action => "destroy"
  #------------------------------

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
