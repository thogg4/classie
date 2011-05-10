ActionController::Routing::Routes.draw do |map|
  
  
  
  map.resources :cats, :member => {:prioritize_cats => :post} do |cat|
    cat.resources :sub_cats, :member => {:prioritize_sub_cats => :post}
  end

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.login_my_ads "/login_my_ads", :controller => "sessions", :action => "login_my_ads"
  
  
  
  
  
  
  map.resource :session
  
  map.browse "/browse", :controller => "ads", :action => "browse"
  map.search "/search", :controller => "ads", :action => "search"
  map.terms_of_use "/terms_of_use", :controller => "ads", :action => "terms_of_use"
  map.thank_you "/thank_you", :controller => "ads", :action => "thank_you"
  map.photo_viewer "/photo_viewer", :controller => "assets", :action => "show"
  
  
  map.get_select "/get_select", :controller => "ads", :action => "change_sub_cats_select"

  map.resources :users do |user|
    user.resources :ads, :member => {:views => :post} do |ad|
      ad.resources :assets
    end
  end
  
  map.username ":login", :controller => "users", :action => "show"
  map.admin "/!/admin", :controller => "admin", :action => "index"
  map.root :controller => "ads", :action => "browse"

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
