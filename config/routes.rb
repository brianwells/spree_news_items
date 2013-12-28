Spree::Core::Engine.routes.draw do

  namespace :admin do
    resources :news_items do
      collection do
        post :update_positions
      end
    end
  end
end
