Rails.application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to
  # Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the
  # :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being
  # the default of "spree".

  Spree::Core::Engine.routes.draw do
    get "/admin/products/upload", to: "admin/products#upload"
    get "/admin/products/upload_status", to: "admin/products#upload_status"
    post "/admin/products/process_upload", to: "admin/products#process_upload"
  end

  mount Spree::Core::Engine, at: '/'
end
