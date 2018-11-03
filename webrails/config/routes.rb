Rails.application.routes.draw do

  devise_for :users
  # esta ruta la borre
  #get 'welcome/index'

  #añadi esto para hacer acciones CRUD

resources :geolocations
#routing the API to http://localhostorwhateverhostyouwant/api/v1/graduates
  mount API::Base, at: "/"
#API documentation route 
  mount GrapeSwaggerRails::Engine, at: "/documentation"

#resources :geolocations , except[:post] 
=begin
  
  get "/geolocations" index
  post "/geolocations" create
  delete "/geolocations/:id" destroy
  get "/geolocations/:id" show
  get "/geolocations/new" new
  
  get "/geolocations/:id/edit"  edit
  patch "/geolocations/:id"  update
  put "/geolocations/:id" update
  
=end
get "/contactanos", to:'geolocations#contactanos'

get "/nosotros" , to: 'geolocations#nosotros'

get "/graficas", to: 'geolocations#graficas'

get "/formulario", to: 'geolocations#formulario'

get "/informaciongeneral", to: 'geolocations#informaciongeneral'

get "/especialistas", to: 'geolocations#especialistas'

get "/padres", to: 'geolocations#padres'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  #cuando solo ponen la pagina es decir localhost:3000
  root 'welcome#index'

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
