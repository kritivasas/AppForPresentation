AppForPresentation::Application.routes.draw do

  # resources :presentations do
  #     resources :slides
  # end


  match   "/presentations/:presentation_uid/slides"               =>  "slides#index",            :via => :get,    :as => "presentation_slides"
  match   "/presentations/:presentation_uid/slides"               =>  "slides#create",           :via => :post
  match   "/presentations/:presentation_uid/slides/new"           =>  "slides#new",              :via => :get,    :as => "new_presentation_slide"
  match   "/presentations/:presentation_uid/slides/:id/edit"      =>  "slides#edit",             :via => :get,    :as => "edit_presentation_slide"
  match   "/presentations/:presentation_uid/slides/:id"           =>  "slides#show",             :via => :get,    :as => "presentation_slide"
  match   "/presentations/:presentation_uid/slides/:id"           =>  "slides#update",           :via => :put
  match   "/presentations/:presentation_uid/slides/:id"           =>  "slides#destroy",          :via => :delete
  match   "/presentations"                                        =>  "presentations#index",     :via => :get 
  match   "/presentations"                                        =>  "presentations#create",    :via => :post
  match   "/presentations/new"                                    =>  "presentations#new",       :via => :new,    :as => "new_presentation"
  match   "/presentations/:uid/edit"                              =>  "presentations#edit",      :via => :edit,   :as => "edit_presentation"
  match   "/presentations/:uid"                                   =>  "presentations#show",      :via => :get,    :as => "presentation" 
  match   "/presentations/:uid"                                   =>  "presentations#update",    :via => :put
  match   "/presentations/:uid"                                   =>  "presentations#destroy",   :via => :delete
# The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  match 'update_slide/:step' => 'show_slide#update_slide'
  match 'get_slide' => 'show_slide#get_slide'
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
  root :to => 'show_slide#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
