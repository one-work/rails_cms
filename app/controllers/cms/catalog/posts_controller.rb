module Cms
  class Catalog::PostsController < PostsController
    before_action :set_catalog
    before_action :set_post, only: [:show, :edit, :update, :destroy, :actions]

    def index
      @posts = @catalog.posts.page(params[:page]).per(params[:per])
    end

    private
    def set_catalog
      @catalog = Catalog.find params[:catalog_id]
    end

    def set_post
      @post = @catalog.posts.find params[:id]
    end

  end
end
