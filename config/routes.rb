Rails.application.routes.draw do
  devise_for :users
  resources :students_reserveds
  resources :reservations
  resources :hourdate_reserveds
  resources :study_carrels
  resources :students
  resources :volume_meter
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: 'students#home'
  get '/home' => 'students#home'
  get '/carrels/students/:id' => 'study_carrels#carrels', as: :carrels
  get '/assign/study_carrels/:carrel_id/students/:student_id' => 'reservations#new', as: :rassign
  get '/assign/reservations/:id' => "students_reserveds#new", as: :resassing
  get '/volume_meter' => 'volume_meter#index'
  get '/arduino_api/:id' => 'arduino_api#reservations_info'  ,defaults: { format: 'json' }
  # Example of regular route:hour_reserveds
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
