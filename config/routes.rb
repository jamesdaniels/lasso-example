ActionController::Routing::Routes.draw do |map|
  
  # Lasso
  map.resources :access_keys, :only => [:show, :destroy]
  map.oauth_authorize '/:service/oauth/start',    :controller => 'oauth', :action => 'new'
  map.oauth_callback  '/:service/oauth/callback', :controller => 'oauth', :action => 'create', :protocol => 'https'
  
  # Authlogic
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
  
end
