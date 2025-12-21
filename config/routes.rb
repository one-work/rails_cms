Rails.application.routes.draw do
  namespace :cms, defaults: { business: 'cms' } do
    resources :videos do
      collection do
        get :list
        get :starred
      end
      member do
        patch :viewed
      end
    end
    resources :video_taxons
    resources :video_tags
    resources :audios, only: [:index, :show]
    resources :carousels
    resources :catalogs do
      resources :posts, controller: 'catalog/posts'
    end

    namespace :admin, defaults: { namespace: 'admin' } do
      root 'home#index'
      resources :tags
      resources :catalogs do
        resources :posts, controller: 'catalog/posts'
      end
      resources :posts
      resources :covers
      resources :videos
      resources :audios
      resources :carousels do
        member do
          patch :reorder
        end
      end
    end
  end
end
