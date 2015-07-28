Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stores, except: [:new, :edit]
    end
  end
    

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
