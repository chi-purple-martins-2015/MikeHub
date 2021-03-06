Rails.application.routes.draw do

  get 'sessions/login' => 'sessions#login'

  post 'sessions/create' => 'sessions#create'

  get 'sessions/logout' => 'sessions#logout'

  root "pages#index"

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  delete 'users/:id' => 'users#destroy', as: "user_delete"

  get 'users/:id' => 'users#show', as: "user"

  get 'articles/new'

  post 'articles' => 'articles#create', as: "articles"

  get 'articles/:id' => 'articles#show', as: "article"

  get 'articles/:id/edit' => 'articles#edit', as: "edit_article"

  patch 'articles/:article_id/edits/:id' => 'articles#update', as: "update_article"

  delete 'articles/:id' => 'articles#destroy', as: 'article_delete'

  post "search" => "pages#search"


  # ***** Katelyn edit routes below *****

  get "articles/:article_id/edits/new" => "edits#new", as: "new_edit"
  post "articles/:article_id/edits" => "edits#create", as: "article_edits"

  get "articles/:article_id/edits" => "edits#index", as: "view_all_edits"

  get "edits/:id" => "edits#show", as: "edit"


  namespace :admin do
    patch "users/:user_id" => "users#make_admin"
    resources :users, :articles
  end

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
