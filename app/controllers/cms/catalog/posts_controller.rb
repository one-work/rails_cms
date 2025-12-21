module Cms
  class Catalog::PostsController < BaseController
    before_action :set_catalog

    def index
      @posts = @catalog.posts.page(params[:page]).per(params[:per])
    end

    private
    def set_catalog
      @catalog = Catalog.find params[:catalog_id]
    end

  end
end
